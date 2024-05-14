# frozen_string_literal: true

# Copyright 2023 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     https://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Auto-generated by gapic-generator-ruby. DO NOT EDIT!

require "google/cloud/errors"
require "google/dataflow/v1beta3/messages_pb"
require "google/cloud/dataflow/v1beta3/messages/rest/service_stub"

module Google
  module Cloud
    module Dataflow
      module V1beta3
        module Messages
          module Rest
            ##
            # REST client for the Messages service.
            #
            # The Dataflow Messages API is used for monitoring the progress of
            # Dataflow jobs.
            #
            class Client
              # @private
              API_VERSION = ""

              # @private
              DEFAULT_ENDPOINT_TEMPLATE = "dataflow.$UNIVERSE_DOMAIN$"

              # @private
              attr_reader :messages_stub

              ##
              # Configure the Messages Client class.
              #
              # See {::Google::Cloud::Dataflow::V1beta3::Messages::Rest::Client::Configuration}
              # for a description of the configuration fields.
              #
              # @example
              #
              #   # Modify the configuration for all Messages clients
              #   ::Google::Cloud::Dataflow::V1beta3::Messages::Rest::Client.configure do |config|
              #     config.timeout = 10.0
              #   end
              #
              # @yield [config] Configure the Client client.
              # @yieldparam config [Client::Configuration]
              #
              # @return [Client::Configuration]
              #
              def self.configure
                @configure ||= begin
                  namespace = ["Google", "Cloud", "Dataflow", "V1beta3"]
                  parent_config = while namespace.any?
                                    parent_name = namespace.join "::"
                                    parent_const = const_get parent_name
                                    break parent_const.configure if parent_const.respond_to? :configure
                                    namespace.pop
                                  end
                  default_config = Client::Configuration.new parent_config

                  default_config.timeout = 60.0

                  default_config
                end
                yield @configure if block_given?
                @configure
              end

              ##
              # Configure the Messages Client instance.
              #
              # The configuration is set to the derived mode, meaning that values can be changed,
              # but structural changes (adding new fields, etc.) are not allowed. Structural changes
              # should be made on {Client.configure}.
              #
              # See {::Google::Cloud::Dataflow::V1beta3::Messages::Rest::Client::Configuration}
              # for a description of the configuration fields.
              #
              # @yield [config] Configure the Client client.
              # @yieldparam config [Client::Configuration]
              #
              # @return [Client::Configuration]
              #
              def configure
                yield @config if block_given?
                @config
              end

              ##
              # The effective universe domain
              #
              # @return [String]
              #
              def universe_domain
                @messages_stub.universe_domain
              end

              ##
              # Create a new Messages REST client object.
              #
              # @example
              #
              #   # Create a client using the default configuration
              #   client = ::Google::Cloud::Dataflow::V1beta3::Messages::Rest::Client.new
              #
              #   # Create a client using a custom configuration
              #   client = ::Google::Cloud::Dataflow::V1beta3::Messages::Rest::Client.new do |config|
              #     config.timeout = 10.0
              #   end
              #
              # @yield [config] Configure the Messages client.
              # @yieldparam config [Client::Configuration]
              #
              def initialize
                # Create the configuration object
                @config = Configuration.new Client.configure

                # Yield the configuration if needed
                yield @config if block_given?

                # Create credentials
                credentials = @config.credentials
                # Use self-signed JWT if the endpoint is unchanged from default,
                # but only if the default endpoint does not have a region prefix.
                enable_self_signed_jwt = @config.endpoint.nil? ||
                                         (@config.endpoint == Configuration::DEFAULT_ENDPOINT &&
                                         !@config.endpoint.split(".").first.include?("-"))
                credentials ||= Credentials.default scope: @config.scope,
                                                    enable_self_signed_jwt: enable_self_signed_jwt
                if credentials.is_a?(::String) || credentials.is_a?(::Hash)
                  credentials = Credentials.new credentials, scope: @config.scope
                end

                @quota_project_id = @config.quota_project
                @quota_project_id ||= credentials.quota_project_id if credentials.respond_to? :quota_project_id

                @messages_stub = ::Google::Cloud::Dataflow::V1beta3::Messages::Rest::ServiceStub.new(
                  endpoint: @config.endpoint,
                  endpoint_template: DEFAULT_ENDPOINT_TEMPLATE,
                  universe_domain: @config.universe_domain,
                  credentials: credentials
                )
              end

              # Service calls

              ##
              # Request the job status.
              #
              # To request the status of a job, we recommend using
              # `projects.locations.jobs.messages.list` with a [regional endpoint]
              # (https://cloud.google.com/dataflow/docs/concepts/regional-endpoints). Using
              # `projects.jobs.messages.list` is not recommended, as you can only request
              # the status of jobs that are running in `us-central1`.
              #
              # @overload list_job_messages(request, options = nil)
              #   Pass arguments to `list_job_messages` via a request object, either of type
              #   {::Google::Cloud::Dataflow::V1beta3::ListJobMessagesRequest} or an equivalent Hash.
              #
              #   @param request [::Google::Cloud::Dataflow::V1beta3::ListJobMessagesRequest, ::Hash]
              #     A request object representing the call parameters. Required. To specify no
              #     parameters, or to keep all the default parameter values, pass an empty Hash.
              #   @param options [::Gapic::CallOptions, ::Hash]
              #     Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
              #
              # @overload list_job_messages(project_id: nil, job_id: nil, minimum_importance: nil, page_size: nil, page_token: nil, start_time: nil, end_time: nil, location: nil)
              #   Pass arguments to `list_job_messages` via keyword arguments. Note that at
              #   least one keyword argument is required. To specify no parameters, or to keep all
              #   the default parameter values, pass an empty Hash as a request object (see above).
              #
              #   @param project_id [::String]
              #     A project id.
              #   @param job_id [::String]
              #     The job to get messages about.
              #   @param minimum_importance [::Google::Cloud::Dataflow::V1beta3::JobMessageImportance]
              #     Filter to only get messages with importance >= level
              #   @param page_size [::Integer]
              #     If specified, determines the maximum number of messages to
              #     return.  If unspecified, the service may choose an appropriate
              #     default, or may return an arbitrarily large number of results.
              #   @param page_token [::String]
              #     If supplied, this should be the value of next_page_token returned
              #     by an earlier call. This will cause the next page of results to
              #     be returned.
              #   @param start_time [::Google::Protobuf::Timestamp, ::Hash]
              #     If specified, return only messages with timestamps >= start_time.
              #     The default is the job creation time (i.e. beginning of messages).
              #   @param end_time [::Google::Protobuf::Timestamp, ::Hash]
              #     Return only messages with timestamps < end_time. The default is now
              #     (i.e. return up to the latest messages available).
              #   @param location [::String]
              #     The [regional endpoint]
              #     (https://cloud.google.com/dataflow/docs/concepts/regional-endpoints) that
              #     contains the job specified by job_id.
              # @yield [result, operation] Access the result along with the TransportOperation object
              # @yieldparam result [::Google::Cloud::Dataflow::V1beta3::ListJobMessagesResponse]
              # @yieldparam operation [::Gapic::Rest::TransportOperation]
              #
              # @return [::Google::Cloud::Dataflow::V1beta3::ListJobMessagesResponse]
              #
              # @raise [::Google::Cloud::Error] if the REST call is aborted.
              #
              # @example Basic example
              #   require "google/cloud/dataflow/v1beta3"
              #
              #   # Create a client object. The client can be reused for multiple calls.
              #   client = Google::Cloud::Dataflow::V1beta3::Messages::Rest::Client.new
              #
              #   # Create a request. To set request fields, pass in keyword arguments.
              #   request = Google::Cloud::Dataflow::V1beta3::ListJobMessagesRequest.new
              #
              #   # Call the list_job_messages method.
              #   result = client.list_job_messages request
              #
              #   # The returned object is of type Gapic::PagedEnumerable. You can iterate
              #   # over elements, and API calls will be issued to fetch pages as needed.
              #   result.each do |item|
              #     # Each element is of type ::Google::Cloud::Dataflow::V1beta3::JobMessage.
              #     p item
              #   end
              #
              def list_job_messages request, options = nil
                raise ::ArgumentError, "request must be provided" if request.nil?

                request = ::Gapic::Protobuf.coerce request, to: ::Google::Cloud::Dataflow::V1beta3::ListJobMessagesRequest

                # Converts hash and nil to an options object
                options = ::Gapic::CallOptions.new(**options.to_h) if options.respond_to? :to_h

                # Customize the options with defaults
                call_metadata = @config.rpcs.list_job_messages.metadata.to_h

                # Set x-goog-api-client, x-goog-user-project and x-goog-api-version headers
                call_metadata[:"x-goog-api-client"] ||= ::Gapic::Headers.x_goog_api_client \
                  lib_name: @config.lib_name, lib_version: @config.lib_version,
                  gapic_version: ::Google::Cloud::Dataflow::V1beta3::VERSION,
                  transports_version_send: [:rest]

                call_metadata[:"x-goog-api-version"] = API_VERSION unless API_VERSION.empty?
                call_metadata[:"x-goog-user-project"] = @quota_project_id if @quota_project_id

                options.apply_defaults timeout:      @config.rpcs.list_job_messages.timeout,
                                       metadata:     call_metadata,
                                       retry_policy: @config.rpcs.list_job_messages.retry_policy

                options.apply_defaults timeout:      @config.timeout,
                                       metadata:     @config.metadata,
                                       retry_policy: @config.retry_policy

                @messages_stub.list_job_messages request, options do |result, operation|
                  yield result, operation if block_given?
                  return result
                end
              rescue ::Gapic::Rest::Error => e
                raise ::Google::Cloud::Error.from_error(e)
              end

              ##
              # Configuration class for the Messages REST API.
              #
              # This class represents the configuration for Messages REST,
              # providing control over timeouts, retry behavior, logging, transport
              # parameters, and other low-level controls. Certain parameters can also be
              # applied individually to specific RPCs. See
              # {::Google::Cloud::Dataflow::V1beta3::Messages::Rest::Client::Configuration::Rpcs}
              # for a list of RPCs that can be configured independently.
              #
              # Configuration can be applied globally to all clients, or to a single client
              # on construction.
              #
              # @example
              #
              #   # Modify the global config, setting the timeout for
              #   # list_job_messages to 20 seconds,
              #   # and all remaining timeouts to 10 seconds.
              #   ::Google::Cloud::Dataflow::V1beta3::Messages::Rest::Client.configure do |config|
              #     config.timeout = 10.0
              #     config.rpcs.list_job_messages.timeout = 20.0
              #   end
              #
              #   # Apply the above configuration only to a new client.
              #   client = ::Google::Cloud::Dataflow::V1beta3::Messages::Rest::Client.new do |config|
              #     config.timeout = 10.0
              #     config.rpcs.list_job_messages.timeout = 20.0
              #   end
              #
              # @!attribute [rw] endpoint
              #   A custom service endpoint, as a hostname or hostname:port. The default is
              #   nil, indicating to use the default endpoint in the current universe domain.
              #   @return [::String,nil]
              # @!attribute [rw] credentials
              #   Credentials to send with calls. You may provide any of the following types:
              #    *  (`String`) The path to a service account key file in JSON format
              #    *  (`Hash`) A service account key as a Hash
              #    *  (`Google::Auth::Credentials`) A googleauth credentials object
              #       (see the [googleauth docs](https://rubydoc.info/gems/googleauth/Google/Auth/Credentials))
              #    *  (`Signet::OAuth2::Client`) A signet oauth2 client object
              #       (see the [signet docs](https://rubydoc.info/gems/signet/Signet/OAuth2/Client))
              #    *  (`nil`) indicating no credentials
              #   @return [::Object]
              # @!attribute [rw] scope
              #   The OAuth scopes
              #   @return [::Array<::String>]
              # @!attribute [rw] lib_name
              #   The library name as recorded in instrumentation and logging
              #   @return [::String]
              # @!attribute [rw] lib_version
              #   The library version as recorded in instrumentation and logging
              #   @return [::String]
              # @!attribute [rw] timeout
              #   The call timeout in seconds.
              #   @return [::Numeric]
              # @!attribute [rw] metadata
              #   Additional headers to be sent with the call.
              #   @return [::Hash{::Symbol=>::String}]
              # @!attribute [rw] retry_policy
              #   The retry policy. The value is a hash with the following keys:
              #    *  `:initial_delay` (*type:* `Numeric`) - The initial delay in seconds.
              #    *  `:max_delay` (*type:* `Numeric`) - The max delay in seconds.
              #    *  `:multiplier` (*type:* `Numeric`) - The incremental backoff multiplier.
              #    *  `:retry_codes` (*type:* `Array<String>`) - The error codes that should
              #       trigger a retry.
              #   @return [::Hash]
              # @!attribute [rw] quota_project
              #   A separate project against which to charge quota.
              #   @return [::String]
              # @!attribute [rw] universe_domain
              #   The universe domain within which to make requests. This determines the
              #   default endpoint URL. The default value of nil uses the environment
              #   universe (usually the default "googleapis.com" universe).
              #   @return [::String,nil]
              #
              class Configuration
                extend ::Gapic::Config

                # @private
                # The endpoint specific to the default "googleapis.com" universe. Deprecated.
                DEFAULT_ENDPOINT = "dataflow.googleapis.com"

                config_attr :endpoint,      nil, ::String, nil
                config_attr :credentials,   nil do |value|
                  allowed = [::String, ::Hash, ::Proc, ::Symbol, ::Google::Auth::Credentials, ::Signet::OAuth2::Client, nil]
                  allowed.any? { |klass| klass === value }
                end
                config_attr :scope,         nil, ::String, ::Array, nil
                config_attr :lib_name,      nil, ::String, nil
                config_attr :lib_version,   nil, ::String, nil
                config_attr :timeout,       nil, ::Numeric, nil
                config_attr :metadata,      nil, ::Hash, nil
                config_attr :retry_policy,  nil, ::Hash, ::Proc, nil
                config_attr :quota_project, nil, ::String, nil
                config_attr :universe_domain, nil, ::String, nil

                # @private
                def initialize parent_config = nil
                  @parent_config = parent_config unless parent_config.nil?

                  yield self if block_given?
                end

                ##
                # Configurations for individual RPCs
                # @return [Rpcs]
                #
                def rpcs
                  @rpcs ||= begin
                    parent_rpcs = nil
                    parent_rpcs = @parent_config.rpcs if defined?(@parent_config) && @parent_config.respond_to?(:rpcs)
                    Rpcs.new parent_rpcs
                  end
                end

                ##
                # Configuration RPC class for the Messages API.
                #
                # Includes fields providing the configuration for each RPC in this service.
                # Each configuration object is of type `Gapic::Config::Method` and includes
                # the following configuration fields:
                #
                #  *  `timeout` (*type:* `Numeric`) - The call timeout in seconds
                #  *  `metadata` (*type:* `Hash{Symbol=>String}`) - Additional headers
                #  *  `retry_policy (*type:* `Hash`) - The retry policy. The policy fields
                #     include the following keys:
                #      *  `:initial_delay` (*type:* `Numeric`) - The initial delay in seconds.
                #      *  `:max_delay` (*type:* `Numeric`) - The max delay in seconds.
                #      *  `:multiplier` (*type:* `Numeric`) - The incremental backoff multiplier.
                #      *  `:retry_codes` (*type:* `Array<String>`) - The error codes that should
                #         trigger a retry.
                #
                class Rpcs
                  ##
                  # RPC-specific configuration for `list_job_messages`
                  # @return [::Gapic::Config::Method]
                  #
                  attr_reader :list_job_messages

                  # @private
                  def initialize parent_rpcs = nil
                    list_job_messages_config = parent_rpcs.list_job_messages if parent_rpcs.respond_to? :list_job_messages
                    @list_job_messages = ::Gapic::Config::Method.new list_job_messages_config

                    yield self if block_given?
                  end
                end
              end
            end
          end
        end
      end
    end
  end
end
