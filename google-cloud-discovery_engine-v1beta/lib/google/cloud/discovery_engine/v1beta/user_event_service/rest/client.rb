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
require "google/cloud/discoveryengine/v1beta/user_event_service_pb"
require "google/cloud/discovery_engine/v1beta/user_event_service/rest/service_stub"

module Google
  module Cloud
    module DiscoveryEngine
      module V1beta
        module UserEventService
          module Rest
            ##
            # REST client for the UserEventService service.
            #
            # Service for ingesting end user actions on a website to Discovery Engine API.
            #
            class Client
              include Paths

              # @private
              attr_reader :user_event_service_stub

              ##
              # Configure the UserEventService Client class.
              #
              # See {::Google::Cloud::DiscoveryEngine::V1beta::UserEventService::Rest::Client::Configuration}
              # for a description of the configuration fields.
              #
              # @example
              #
              #   # Modify the configuration for all UserEventService clients
              #   ::Google::Cloud::DiscoveryEngine::V1beta::UserEventService::Rest::Client.configure do |config|
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
                  namespace = ["Google", "Cloud", "DiscoveryEngine", "V1beta"]
                  parent_config = while namespace.any?
                                    parent_name = namespace.join "::"
                                    parent_const = const_get parent_name
                                    break parent_const.configure if parent_const.respond_to? :configure
                                    namespace.pop
                                  end
                  default_config = Client::Configuration.new parent_config

                  default_config.timeout = 30.0
                  default_config.retry_policy = {
                    initial_delay: 1.0, max_delay: 10.0, multiplier: 1.3, retry_codes: [14]
                  }

                  default_config.rpcs.import_user_events.timeout = 300.0
                  default_config.rpcs.import_user_events.retry_policy = {
                    initial_delay: 1.0, max_delay: 30.0, multiplier: 1.3, retry_codes: [14]
                  }

                  default_config
                end
                yield @configure if block_given?
                @configure
              end

              ##
              # Configure the UserEventService Client instance.
              #
              # The configuration is set to the derived mode, meaning that values can be changed,
              # but structural changes (adding new fields, etc.) are not allowed. Structural changes
              # should be made on {Client.configure}.
              #
              # See {::Google::Cloud::DiscoveryEngine::V1beta::UserEventService::Rest::Client::Configuration}
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
              # Create a new UserEventService REST client object.
              #
              # @example
              #
              #   # Create a client using the default configuration
              #   client = ::Google::Cloud::DiscoveryEngine::V1beta::UserEventService::Rest::Client.new
              #
              #   # Create a client using a custom configuration
              #   client = ::Google::Cloud::DiscoveryEngine::V1beta::UserEventService::Rest::Client.new do |config|
              #     config.timeout = 10.0
              #   end
              #
              # @yield [config] Configure the UserEventService client.
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
                enable_self_signed_jwt = @config.endpoint == Configuration::DEFAULT_ENDPOINT &&
                                         !@config.endpoint.split(".").first.include?("-")
                credentials ||= Credentials.default scope: @config.scope,
                                                    enable_self_signed_jwt: enable_self_signed_jwt
                if credentials.is_a?(::String) || credentials.is_a?(::Hash)
                  credentials = Credentials.new credentials, scope: @config.scope
                end

                @quota_project_id = @config.quota_project
                @quota_project_id ||= credentials.quota_project_id if credentials.respond_to? :quota_project_id

                @operations_client = ::Google::Cloud::DiscoveryEngine::V1beta::UserEventService::Rest::Operations.new do |config|
                  config.credentials = credentials
                  config.quota_project = @quota_project_id
                  config.endpoint = @config.endpoint
                end

                @user_event_service_stub = ::Google::Cloud::DiscoveryEngine::V1beta::UserEventService::Rest::ServiceStub.new endpoint: @config.endpoint, credentials: credentials
              end

              ##
              # Get the associated client for long-running operations.
              #
              # @return [::Google::Cloud::DiscoveryEngine::V1beta::UserEventService::Rest::Operations]
              #
              attr_reader :operations_client

              # Service calls

              ##
              # Writes a single user event.
              #
              # @overload write_user_event(request, options = nil)
              #   Pass arguments to `write_user_event` via a request object, either of type
              #   {::Google::Cloud::DiscoveryEngine::V1beta::WriteUserEventRequest} or an equivalent Hash.
              #
              #   @param request [::Google::Cloud::DiscoveryEngine::V1beta::WriteUserEventRequest, ::Hash]
              #     A request object representing the call parameters. Required. To specify no
              #     parameters, or to keep all the default parameter values, pass an empty Hash.
              #   @param options [::Gapic::CallOptions, ::Hash]
              #     Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
              #
              # @overload write_user_event(parent: nil, user_event: nil)
              #   Pass arguments to `write_user_event` via keyword arguments. Note that at
              #   least one keyword argument is required. To specify no parameters, or to keep all
              #   the default parameter values, pass an empty Hash as a request object (see above).
              #
              #   @param parent [::String]
              #     Required. The parent DataStore resource name, such as
              #     `projects/{project}/locations/{location}/collections/{collection}/dataStores/{data_store}`.
              #   @param user_event [::Google::Cloud::DiscoveryEngine::V1beta::UserEvent, ::Hash]
              #     Required. User event to write.
              # @yield [result, operation] Access the result along with the TransportOperation object
              # @yieldparam result [::Google::Cloud::DiscoveryEngine::V1beta::UserEvent]
              # @yieldparam operation [::Gapic::Rest::TransportOperation]
              #
              # @return [::Google::Cloud::DiscoveryEngine::V1beta::UserEvent]
              #
              # @raise [::Google::Cloud::Error] if the REST call is aborted.
              def write_user_event request, options = nil
                raise ::ArgumentError, "request must be provided" if request.nil?

                request = ::Gapic::Protobuf.coerce request, to: ::Google::Cloud::DiscoveryEngine::V1beta::WriteUserEventRequest

                # Converts hash and nil to an options object
                options = ::Gapic::CallOptions.new(**options.to_h) if options.respond_to? :to_h

                # Customize the options with defaults
                call_metadata = @config.rpcs.write_user_event.metadata.to_h

                # Set x-goog-api-client and x-goog-user-project headers
                call_metadata[:"x-goog-api-client"] ||= ::Gapic::Headers.x_goog_api_client \
                  lib_name: @config.lib_name, lib_version: @config.lib_version,
                  gapic_version: ::Google::Cloud::DiscoveryEngine::V1beta::VERSION,
                  transports_version_send: [:rest]

                call_metadata[:"x-goog-user-project"] = @quota_project_id if @quota_project_id

                options.apply_defaults timeout:      @config.rpcs.write_user_event.timeout,
                                       metadata:     call_metadata,
                                       retry_policy: @config.rpcs.write_user_event.retry_policy

                options.apply_defaults timeout:      @config.timeout,
                                       metadata:     @config.metadata,
                                       retry_policy: @config.retry_policy

                @user_event_service_stub.write_user_event request, options do |result, operation|
                  yield result, operation if block_given?
                  return result
                end
              rescue ::Gapic::Rest::Error => e
                raise ::Google::Cloud::Error.from_error(e)
              end

              ##
              # Writes a single user event from the browser. This uses a GET request to
              # due to browser restriction of POST-ing to a third-party domain.
              #
              # This method is used only by the Discovery Engine API JavaScript pixel and
              # Google Tag Manager. Users should not call this method directly.
              #
              # @overload collect_user_event(request, options = nil)
              #   Pass arguments to `collect_user_event` via a request object, either of type
              #   {::Google::Cloud::DiscoveryEngine::V1beta::CollectUserEventRequest} or an equivalent Hash.
              #
              #   @param request [::Google::Cloud::DiscoveryEngine::V1beta::CollectUserEventRequest, ::Hash]
              #     A request object representing the call parameters. Required. To specify no
              #     parameters, or to keep all the default parameter values, pass an empty Hash.
              #   @param options [::Gapic::CallOptions, ::Hash]
              #     Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
              #
              # @overload collect_user_event(parent: nil, user_event: nil, uri: nil, ets: nil)
              #   Pass arguments to `collect_user_event` via keyword arguments. Note that at
              #   least one keyword argument is required. To specify no parameters, or to keep all
              #   the default parameter values, pass an empty Hash as a request object (see above).
              #
              #   @param parent [::String]
              #     Required. The parent DataStore resource name, such as
              #     `projects/{project}/locations/{location}/collections/{collection}/dataStores/{data_store}`.
              #   @param user_event [::String]
              #     Required. URL encoded UserEvent proto with a length limit of 2,000,000
              #     characters.
              #   @param uri [::String]
              #     The URL including cgi-parameters but excluding the hash fragment with a
              #     length limit of 5,000 characters. This is often more useful than the
              #     referer URL, because many browsers only send the domain for third-party
              #     requests.
              #   @param ets [::Integer]
              #     The event timestamp in milliseconds. This prevents browser caching of
              #     otherwise identical get requests. The name is abbreviated to reduce the
              #     payload bytes.
              # @yield [result, operation] Access the result along with the TransportOperation object
              # @yieldparam result [::Google::Api::HttpBody]
              # @yieldparam operation [::Gapic::Rest::TransportOperation]
              #
              # @return [::Google::Api::HttpBody]
              #
              # @raise [::Google::Cloud::Error] if the REST call is aborted.
              def collect_user_event request, options = nil
                raise ::ArgumentError, "request must be provided" if request.nil?

                request = ::Gapic::Protobuf.coerce request, to: ::Google::Cloud::DiscoveryEngine::V1beta::CollectUserEventRequest

                # Converts hash and nil to an options object
                options = ::Gapic::CallOptions.new(**options.to_h) if options.respond_to? :to_h

                # Customize the options with defaults
                call_metadata = @config.rpcs.collect_user_event.metadata.to_h

                # Set x-goog-api-client and x-goog-user-project headers
                call_metadata[:"x-goog-api-client"] ||= ::Gapic::Headers.x_goog_api_client \
                  lib_name: @config.lib_name, lib_version: @config.lib_version,
                  gapic_version: ::Google::Cloud::DiscoveryEngine::V1beta::VERSION,
                  transports_version_send: [:rest]

                call_metadata[:"x-goog-user-project"] = @quota_project_id if @quota_project_id

                options.apply_defaults timeout:      @config.rpcs.collect_user_event.timeout,
                                       metadata:     call_metadata,
                                       retry_policy: @config.rpcs.collect_user_event.retry_policy

                options.apply_defaults timeout:      @config.timeout,
                                       metadata:     @config.metadata,
                                       retry_policy: @config.retry_policy

                @user_event_service_stub.collect_user_event request, options do |result, operation|
                  yield result, operation if block_given?
                  return result
                end
              rescue ::Gapic::Rest::Error => e
                raise ::Google::Cloud::Error.from_error(e)
              end

              ##
              # Bulk import of User events. Request processing might be
              # synchronous. Events that already exist are skipped.
              # Use this method for backfilling historical user events.
              #
              # Operation.response is of type ImportResponse. Note that it is
              # possible for a subset of the items to be successfully inserted.
              # Operation.metadata is of type ImportMetadata.
              #
              # @overload import_user_events(request, options = nil)
              #   Pass arguments to `import_user_events` via a request object, either of type
              #   {::Google::Cloud::DiscoveryEngine::V1beta::ImportUserEventsRequest} or an equivalent Hash.
              #
              #   @param request [::Google::Cloud::DiscoveryEngine::V1beta::ImportUserEventsRequest, ::Hash]
              #     A request object representing the call parameters. Required. To specify no
              #     parameters, or to keep all the default parameter values, pass an empty Hash.
              #   @param options [::Gapic::CallOptions, ::Hash]
              #     Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
              #
              # @overload import_user_events(inline_source: nil, gcs_source: nil, bigquery_source: nil, parent: nil, error_config: nil)
              #   Pass arguments to `import_user_events` via keyword arguments. Note that at
              #   least one keyword argument is required. To specify no parameters, or to keep all
              #   the default parameter values, pass an empty Hash as a request object (see above).
              #
              #   @param inline_source [::Google::Cloud::DiscoveryEngine::V1beta::ImportUserEventsRequest::InlineSource, ::Hash]
              #     The Inline source for the input content for UserEvents.
              #   @param gcs_source [::Google::Cloud::DiscoveryEngine::V1beta::GcsSource, ::Hash]
              #     Cloud Storage location for the input content.
              #   @param bigquery_source [::Google::Cloud::DiscoveryEngine::V1beta::BigQuerySource, ::Hash]
              #     BigQuery input source.
              #   @param parent [::String]
              #     Required. Parent DataStore resource name, of the form
              #     `projects/{project}/locations/{location}/collections/{collection}/dataStores/{data_store}`
              #   @param error_config [::Google::Cloud::DiscoveryEngine::V1beta::ImportErrorConfig, ::Hash]
              #     The desired location of errors incurred during the Import. Cannot be set
              #     for inline user event imports.
              # @yield [result, operation] Access the result along with the TransportOperation object
              # @yieldparam result [::Gapic::Operation]
              # @yieldparam operation [::Gapic::Rest::TransportOperation]
              #
              # @return [::Gapic::Operation]
              #
              # @raise [::Google::Cloud::Error] if the REST call is aborted.
              def import_user_events request, options = nil
                raise ::ArgumentError, "request must be provided" if request.nil?

                request = ::Gapic::Protobuf.coerce request, to: ::Google::Cloud::DiscoveryEngine::V1beta::ImportUserEventsRequest

                # Converts hash and nil to an options object
                options = ::Gapic::CallOptions.new(**options.to_h) if options.respond_to? :to_h

                # Customize the options with defaults
                call_metadata = @config.rpcs.import_user_events.metadata.to_h

                # Set x-goog-api-client and x-goog-user-project headers
                call_metadata[:"x-goog-api-client"] ||= ::Gapic::Headers.x_goog_api_client \
                  lib_name: @config.lib_name, lib_version: @config.lib_version,
                  gapic_version: ::Google::Cloud::DiscoveryEngine::V1beta::VERSION,
                  transports_version_send: [:rest]

                call_metadata[:"x-goog-user-project"] = @quota_project_id if @quota_project_id

                options.apply_defaults timeout:      @config.rpcs.import_user_events.timeout,
                                       metadata:     call_metadata,
                                       retry_policy: @config.rpcs.import_user_events.retry_policy

                options.apply_defaults timeout:      @config.timeout,
                                       metadata:     @config.metadata,
                                       retry_policy: @config.retry_policy

                @user_event_service_stub.import_user_events request, options do |result, operation|
                  result = ::Gapic::Operation.new result, @operations_client, options: options
                  yield result, operation if block_given?
                  return result
                end
              rescue ::Gapic::Rest::Error => e
                raise ::Google::Cloud::Error.from_error(e)
              end

              ##
              # Configuration class for the UserEventService REST API.
              #
              # This class represents the configuration for UserEventService REST,
              # providing control over timeouts, retry behavior, logging, transport
              # parameters, and other low-level controls. Certain parameters can also be
              # applied individually to specific RPCs. See
              # {::Google::Cloud::DiscoveryEngine::V1beta::UserEventService::Rest::Client::Configuration::Rpcs}
              # for a list of RPCs that can be configured independently.
              #
              # Configuration can be applied globally to all clients, or to a single client
              # on construction.
              #
              # @example
              #
              #   # Modify the global config, setting the timeout for
              #   # write_user_event to 20 seconds,
              #   # and all remaining timeouts to 10 seconds.
              #   ::Google::Cloud::DiscoveryEngine::V1beta::UserEventService::Rest::Client.configure do |config|
              #     config.timeout = 10.0
              #     config.rpcs.write_user_event.timeout = 20.0
              #   end
              #
              #   # Apply the above configuration only to a new client.
              #   client = ::Google::Cloud::DiscoveryEngine::V1beta::UserEventService::Rest::Client.new do |config|
              #     config.timeout = 10.0
              #     config.rpcs.write_user_event.timeout = 20.0
              #   end
              #
              # @!attribute [rw] endpoint
              #   The hostname or hostname:port of the service endpoint.
              #   Defaults to `"discoveryengine.googleapis.com"`.
              #   @return [::String]
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
              #
              class Configuration
                extend ::Gapic::Config

                DEFAULT_ENDPOINT = "discoveryengine.googleapis.com"

                config_attr :endpoint,      DEFAULT_ENDPOINT, ::String
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
                # Configuration RPC class for the UserEventService API.
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
                  # RPC-specific configuration for `write_user_event`
                  # @return [::Gapic::Config::Method]
                  #
                  attr_reader :write_user_event
                  ##
                  # RPC-specific configuration for `collect_user_event`
                  # @return [::Gapic::Config::Method]
                  #
                  attr_reader :collect_user_event
                  ##
                  # RPC-specific configuration for `import_user_events`
                  # @return [::Gapic::Config::Method]
                  #
                  attr_reader :import_user_events

                  # @private
                  def initialize parent_rpcs = nil
                    write_user_event_config = parent_rpcs.write_user_event if parent_rpcs.respond_to? :write_user_event
                    @write_user_event = ::Gapic::Config::Method.new write_user_event_config
                    collect_user_event_config = parent_rpcs.collect_user_event if parent_rpcs.respond_to? :collect_user_event
                    @collect_user_event = ::Gapic::Config::Method.new collect_user_event_config
                    import_user_events_config = parent_rpcs.import_user_events if parent_rpcs.respond_to? :import_user_events
                    @import_user_events = ::Gapic::Config::Method.new import_user_events_config

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
