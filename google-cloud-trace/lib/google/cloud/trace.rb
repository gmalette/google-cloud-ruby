# Copyright 2016 Google Inc. All rights reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.


require "stackdriver/core/trace_context"
require "google-cloud-trace"
require "google/cloud/trace/version"
require "google/cloud/trace/credentials"
require "google/cloud/trace/label_key"
require "google/cloud/trace/middleware"
require "google/cloud/trace/notifications"
require "google/cloud/trace/project"
require "google/cloud/trace/result_set"
require "google/cloud/trace/sampling"
require "google/cloud/trace/service"
require "google/cloud/trace/span"
require "google/cloud/trace/span_kind"
require "google/cloud/trace/trace_record"
require "google/cloud/trace/utils"

module Google
  module Cloud
    ##
    # # Stackdriver Trace
    #
    # The Stackdriver Trace service collects and stores latency data from your
    # application and displays it in the Google Cloud Platform Console, giving
    # you detailed near-real-time insight into application performance.
    #
    # The Stackdriver Trace Ruby library, `google-cloud-trace`, provides:
    #
    # *   Easy-to-use trace instrumentation that collects and collates latency
    #     data for your Ruby application. If you just want latency trace data
    #     for your application to appear on the Google Cloud Platform Console,
    #     see the section on [instrumenting your app](#instrumenting-your-app).
    # *   An idiomatic Ruby API for querying, analyzing, and manipulating trace
    #     data in your Ruby application. For an introduction to the Trace API,
    #     see the section on the [Trace API](#stackdriver-trace-api).
    #
    # ## Instrumenting Your App
    #
    # If your application uses Ruby on Rails, the easiest way to instrument
    # your application for all Stackdriver diagnostic and monitoring services
    # is to install the `stackdriver` gem. Add it to your Gemfile and deploy
    # your application to Google Cloud. Then open the Google Cloud Console in
    # your web browser and navigate to the "Trace" section. Your application
    # latency traces will appear there; no additional coding is required.
    #
    # You may also adopt Stackdriver diagnostic services "a la carte" by
    # installing individual gems. To instrument your app for the Trace service,
    # add this gem, `google-cloud-trace`, to your Gemfile. Then add the
    # following line to your `config/application.rb` file:
    #
    # ```ruby
    # require "google/cloud/trace/rails"
    # ```
    #
    # See the {Google::Cloud::Trace::Railtie} class for more information,
    # including how to customize your application traces.
    #
    # If your application uses a different Rack-based web framework, you may
    # instrument your app by installing the trace middleware. See the
    # {Google::Cloud::Trace::Middleware} documentation for more information.
    #
    # ## Stackdriver Trace API
    #
    # Using the Stackdriver Trace API, your application can query and analyze
    # its own traces and traces of other projects. Here is an example query
    # for all traces in the past hour.
    #
    # ```ruby
    # require "google/cloud/trace"
    # trace_client = Google::Cloud::Trace.new
    #
    # traces = trace_client.list_traces Time.now - 3600, Time.now
    # traces.each do |trace|
    #   puts "Retrieved trace ID: #{trace.trace_id}"
    # end
    # ```
    #
    # Each trace is an object of type {Google::Cloud::Trace::TraceRecord},
    # which provides methods for analyzing tasks that took place during the
    # request trace. See https://cloud.google.com/trace for more information
    # on the kind of data you can capture in a trace.
    #
    # Usually it is easiest to use this library's trace instrumentation
    # features to collect and record application trace information. However,
    # you may also use the trace API to update this data. Here is an example:
    #
    # ```ruby
    # require "google/cloud/trace"
    #
    # trace_client = Google::Cloud::Trace.new
    #
    # trace = Google::Cloud::Trace.new
    # trace.in_span "root_span" do
    #   # Do stuff...
    # end
    #
    # trace_client.patch_traces trace
    # ```
    #
    # For further information on the trace API, see
    # {Google::Cloud::Trace::Project}.
    #
    module Trace
      THREAD_KEY = :__stackdriver_trace_span__

      ##
      # Creates a new object for connecting to the Stackdriver Trace service.
      # Each call creates a new connection.
      #
      # For more information on connecting to Google Cloud see the
      # [Authentication
      # Guide](https://googlecloudplatform.github.io/google-cloud-ruby/#/docs/guides/authentication).
      #
      # @param [String] project Project identifier for the Stackdriver Trace
      #   service.
      # @param [String, Hash] keyfile Keyfile downloaded from Google Cloud:
      #   either the JSON data or the path to a readable file.
      # @param [String, Array<String>] scope The OAuth 2.0 scopes controlling
      #   the set of resources and operations that the connection can access.
      #   See [Using OAuth 2.0 to Access Google
      #   APIs](https://developers.google.com/identity/protocols/OAuth2).
      #   The default scope is `https://www.googleapis.com/auth/cloud-platform`
      # @param [Integer] timeout Default timeout to use in requests. Optional.
      #
      # @return [Google::Cloud::Trace::Project]
      #
      # @example
      #   require "google/cloud/trace"
      #
      #   trace_client = Google::Cloud::Trace.new
      #
      #   traces = trace_client.list_traces Time.now - 3600, Time.now
      #   traces.each do |trace|
      #     puts "Retrieved trace ID: #{trace.trace_id}"
      #   end
      #
      def self.new project: nil, keyfile: nil, scope: nil, timeout: nil,
                   client_config: nil
        project ||= Google::Cloud::Trace::Project.default_project
        project = project.to_s # Always cast to a string
        fail ArgumentError, "project is missing" if project.empty?

        credentials =
          Google::Cloud::Trace::Credentials.credentials_with_scope keyfile,
                                                                   scope

        Google::Cloud::Trace::Project.new(
          Google::Cloud::Trace::Service.new(
            project, credentials, timeout: timeout,
                                  client_config: client_config))
      end

      ##
      # Set the current trace span being measured for the current thread, or
      # the current trace if no span is currently open. This may be used with
      # web frameworks that assign a thread to each request, to track the
      # trace instrumentation state for the request being handled. You may use
      # {Google::Cloud::Trace.get} to retrieve the data.
      #
      # @param [Google::Cloud::Trace::TraceSpan, Google::Cloud::Trace::Trace,
      #     nil] trace The current span being measured, the current trace
      #     object, or `nil` if none.
      #
      # @example
      #   require "google/cloud/trace"
      #
      #   trace = Google::Cloud::Trace::Trace.new
      #   Google::Cloud::Trace.set trace
      #
      #   # Later...
      #   Google::Cloud::Trace.get.create_span "my_span"
      #
      def self.set trace
        trace_context = trace ? trace.trace_context : nil
        Stackdriver::Core::TraceContext.set trace_context
        Thread.current[THREAD_KEY] = trace
      end

      ##
      # Retrieve the current trace span or trace object for the current thread.
      # This data should previously have been set using
      # {Google::Cloud::Trace.set}.
      #
      # @return [Google::Cloud::Trace::TraceSpan, Google::Cloud::Trace::Trace,
      #     nil] The span or trace object, or `nil`.
      #
      # @example
      #   require "google/cloud/trace"
      #
      #   trace = Google::Cloud::Trace::Trace.new
      #   Google::Cloud::Trace.set trace
      #
      #   # Later...
      #   Google::Cloud::Trace.get.create_span "my_span"
      #
      def self.get
        Thread.current[THREAD_KEY]
      end

      ##
      # Open a new span for the current thread, instrumenting the given block.
      # The span is created within the current thread's trace context as set by
      # {Google::Cloud::Trace.set}. The context is updated so any further calls
      # within the block will create subspans. The new span is also yielded to
      # the block.
      #
      # Does nothing if there is no trace context for the current thread.
      #
      # @param [String] name Name of the span to create
      # @param [Google::Cloud::Trace::SpanKind] kind Kind of span to create.
      #     Optional.
      # @param [Hash{String => String}] labels Labels for the span
      #
      # @example
      #   require "google/cloud/trace"
      #
      #   trace = Google::Cloud::Trace::Trace.new
      #   Google::Cloud::Trace.set trace
      #
      #   Google::Cloud::Trace.in_span "my_span" do |span|
      #     # Do stuff...
      #   end
      #
      def self.in_span name, kind: Google::Cloud::Trace::SpanKind::UNSPECIFIED,
                       labels: {}
        parent = get
        if parent
          parent.in_span name, kind: kind, labels: labels do |child|
            set child
            begin
              yield child
            ensure
              set parent
            end
          end
        else
          yield nil
        end
      end
    end
  end
end
