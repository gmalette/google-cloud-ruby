# frozen_string_literal: true

# Copyright 2024 Google LLC
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


module Google
  module Cloud
    module BackupDR
      module V1
        # Network configuration for ManagementServer instance.
        # @!attribute [rw] network
        #   @return [::String]
        #     Optional. The resource name of the Google Compute Engine VPC network to
        #     which the ManagementServer instance is connected.
        # @!attribute [rw] peering_mode
        #   @return [::Google::Cloud::BackupDR::V1::NetworkConfig::PeeringMode]
        #     Optional. The network connect mode of the ManagementServer instance. For
        #     this version, only PRIVATE_SERVICE_ACCESS is supported.
        class NetworkConfig
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # VPC peering modes supported by Cloud BackupDR.
          module PeeringMode
            # Peering mode not set.
            PEERING_MODE_UNSPECIFIED = 0

            # Connect using Private Service Access to the Management Server. Private
            # services access provides an IP address range for multiple Google Cloud
            # services, including Cloud BackupDR.
            PRIVATE_SERVICE_ACCESS = 1
          end
        end

        # ManagementURI for the Management Server resource.
        # @!attribute [r] web_ui
        #   @return [::String]
        #     Output only. The ManagementServer AGM/RD WebUI URL.
        # @!attribute [r] api
        #   @return [::String]
        #     Output only. The ManagementServer AGM/RD API URL.
        class ManagementURI
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # ManagementURI depending on the Workforce Identity i.e. either 1p or 3p.
        # @!attribute [r] first_party_management_uri
        #   @return [::String]
        #     Output only. First party Management URI for Google Identities.
        # @!attribute [r] third_party_management_uri
        #   @return [::String]
        #     Output only. Third party Management URI for External Identity Providers.
        class WorkforceIdentityBasedManagementURI
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # OAuth Client ID depending on the Workforce Identity i.e. either 1p or 3p,
        # @!attribute [r] first_party_oauth2_client_id
        #   @return [::String]
        #     Output only. First party OAuth Client ID for Google Identities.
        # @!attribute [r] third_party_oauth2_client_id
        #   @return [::String]
        #     Output only. Third party OAuth Client ID for External Identity Providers.
        class WorkforceIdentityBasedOAuth2ClientID
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # ManagementServer describes a single BackupDR ManagementServer instance.
        # @!attribute [r] name
        #   @return [::String]
        #     Output only. Identifier. The resource name.
        # @!attribute [rw] description
        #   @return [::String]
        #     Optional. The description of the ManagementServer instance (2048 characters
        #     or less).
        # @!attribute [rw] labels
        #   @return [::Google::Protobuf::Map{::String => ::String}]
        #     Optional. Resource labels to represent user provided metadata.
        #     Labels currently defined:
        #     1. migrate_from_go=<false|true>
        #        If set to true, the MS is created in migration ready mode.
        # @!attribute [r] create_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. The time when the instance was created.
        # @!attribute [r] update_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. The time when the instance was updated.
        # @!attribute [rw] type
        #   @return [::Google::Cloud::BackupDR::V1::ManagementServer::InstanceType]
        #     Optional. The type of the ManagementServer resource.
        # @!attribute [r] management_uri
        #   @return [::Google::Cloud::BackupDR::V1::ManagementURI]
        #     Output only. The hostname or ip address of the exposed AGM endpoints, used
        #     by clients to connect to AGM/RD graphical user interface and APIs.
        # @!attribute [r] workforce_identity_based_management_uri
        #   @return [::Google::Cloud::BackupDR::V1::WorkforceIdentityBasedManagementURI]
        #     Output only. The hostnames of the exposed AGM endpoints for both types of
        #     user i.e. 1p and 3p, used to connect AGM/RM UI.
        # @!attribute [r] state
        #   @return [::Google::Cloud::BackupDR::V1::ManagementServer::InstanceState]
        #     Output only. The ManagementServer state.
        # @!attribute [rw] networks
        #   @return [::Array<::Google::Cloud::BackupDR::V1::NetworkConfig>]
        #     Required. VPC networks to which the ManagementServer instance is connected.
        #     For this version, only a single network is supported.
        # @!attribute [rw] etag
        #   @return [::String]
        #     Optional. Server specified ETag for the ManagementServer resource to
        #     prevent simultaneous updates from overwiting each other.
        # @!attribute [r] oauth2_client_id
        #   @return [::String]
        #     Output only. The OAuth 2.0 client id is required to make API calls to the
        #     BackupDR instance API of this ManagementServer. This is the value that
        #     should be provided in the ‘aud’ field of the OIDC ID Token (see openid
        #     specification
        #     https://openid.net/specs/openid-connect-core-1_0.html#IDToken).
        # @!attribute [r] workforce_identity_based_oauth2_client_id
        #   @return [::Google::Cloud::BackupDR::V1::WorkforceIdentityBasedOAuth2ClientID]
        #     Output only. The OAuth client IDs for both types of user i.e. 1p and 3p.
        # @!attribute [r] ba_proxy_uri
        #   @return [::Array<::String>]
        #     Output only. The hostname or ip address of the exposed AGM endpoints, used
        #     by BAs to connect to BA proxy.
        class ManagementServer
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # @!attribute [rw] key
          #   @return [::String]
          # @!attribute [rw] value
          #   @return [::String]
          class LabelsEntry
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Type of backup service resource.
          module InstanceType
            # Instance type is not mentioned.
            INSTANCE_TYPE_UNSPECIFIED = 0

            # Instance for backup and restore management (i.e., AGM).
            BACKUP_RESTORE = 1
          end

          # State of Management server instance.
          module InstanceState
            # State not set.
            INSTANCE_STATE_UNSPECIFIED = 0

            # The instance is being created.
            CREATING = 1

            # The instance has been created and is fully usable.
            READY = 2

            # The instance configuration is being updated. Certain kinds of updates
            # may cause the instance to become unusable while the update is in
            # progress.
            UPDATING = 3

            # The instance is being deleted.
            DELETING = 4

            # The instance is being repaired and may be unstable.
            REPAIRING = 5

            # Maintenance is being performed on this instance.
            MAINTENANCE = 6

            # The instance is experiencing an issue and might be unusable. You can get
            # further details from the statusMessage field of Instance resource.
            ERROR = 7
          end
        end

        # Request message for listing management servers.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The project and location for which to retrieve management servers
        #     information, in the format `projects/{project_id}/locations/{location}`. In
        #     Cloud BackupDR, locations map to GCP regions, for example **us-central1**.
        #     To retrieve management servers for all locations, use "-" for the
        #     `{location}` value.
        # @!attribute [rw] page_size
        #   @return [::Integer]
        #     Optional. Requested page size. Server may return fewer items than
        #     requested. If unspecified, server will pick an appropriate default.
        # @!attribute [rw] page_token
        #   @return [::String]
        #     Optional. A token identifying a page of results the server should return.
        # @!attribute [rw] filter
        #   @return [::String]
        #     Optional. Filtering results.
        # @!attribute [rw] order_by
        #   @return [::String]
        #     Optional. Hint for how to order the results.
        class ListManagementServersRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response message for listing management servers.
        # @!attribute [rw] management_servers
        #   @return [::Array<::Google::Cloud::BackupDR::V1::ManagementServer>]
        #     The list of ManagementServer instances in the project for the specified
        #     location.
        #
        #     If the `{location}` value in the request is "-", the response contains a
        #     list of instances from all locations. In case any location is unreachable,
        #     the response will only return management servers in reachable locations and
        #     the 'unreachable' field will be populated with a list of unreachable
        #     locations.
        # @!attribute [rw] next_page_token
        #   @return [::String]
        #     A token identifying a page of results the server should return.
        # @!attribute [rw] unreachable
        #   @return [::Array<::String>]
        #     Locations that could not be reached.
        class ListManagementServersResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for getting a management server instance.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. Name of the management server resource name, in the format
        #     `projects/{project_id}/locations/{location}/managementServers/{resource_name}`
        class GetManagementServerRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for creating a management server instance.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The management server project and location in the format
        #     `projects/{project_id}/locations/{location}`. In Cloud Backup and DR
        #     locations map to GCP regions, for example **us-central1**.
        # @!attribute [rw] management_server_id
        #   @return [::String]
        #     Required. The name of the management server to create. The name must be
        #     unique for the specified project and location.
        # @!attribute [rw] management_server
        #   @return [::Google::Cloud::BackupDR::V1::ManagementServer]
        #     Required. A [management server
        #     resource][google.cloud.backupdr.v1.ManagementServer]
        # @!attribute [rw] request_id
        #   @return [::String]
        #     Optional. An optional request ID to identify requests. Specify a unique
        #     request ID so that if you must retry your request, the server will know to
        #     ignore the request if it has already been completed. The server will
        #     guarantee that for at least 60 minutes since the first request.
        #
        #     For example, consider a situation where you make an initial request and
        #     the request times out. If you make the request again with the same request
        #     ID, the server can check if original operation with the same request ID
        #     was received, and if so, will ignore the second request. This prevents
        #     clients from accidentally creating duplicate commitments.
        #
        #     The request ID must be a valid UUID with the exception that zero UUID is
        #     not supported (00000000-0000-0000-0000-000000000000).
        class CreateManagementServerRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for deleting a management server instance.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. Name of the resource
        # @!attribute [rw] request_id
        #   @return [::String]
        #     Optional. An optional request ID to identify requests. Specify a unique
        #     request ID so that if you must retry your request, the server will know to
        #     ignore the request if it has already been completed. The server will
        #     guarantee that for at least 60 minutes after the first request.
        #
        #     For example, consider a situation where you make an initial request and
        #     the request times out. If you make the request again with the same request
        #     ID, the server can check if original operation with the same request ID
        #     was received, and if so, will ignore the second request. This prevents
        #     clients from accidentally creating duplicate commitments.
        #
        #     The request ID must be a valid UUID with the exception that zero UUID is
        #     not supported (00000000-0000-0000-0000-000000000000).
        class DeleteManagementServerRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Represents the metadata of the long-running operation.
        # @!attribute [r] create_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. The time the operation was created.
        # @!attribute [r] end_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. The time the operation finished running.
        # @!attribute [r] target
        #   @return [::String]
        #     Output only. Server-defined resource path for the target of the operation.
        # @!attribute [r] verb
        #   @return [::String]
        #     Output only. Name of the verb executed by the operation.
        # @!attribute [r] status_message
        #   @return [::String]
        #     Output only. Human-readable status of the operation, if any.
        # @!attribute [r] requested_cancellation
        #   @return [::Boolean]
        #     Output only. Identifies whether the user has requested cancellation
        #     of the operation. Operations that have successfully been cancelled
        #     have [Operation.error][] value with a
        #     {::Google::Rpc::Status#code google.rpc.Status.code} of 1, corresponding to
        #     `Code.CANCELLED`.
        # @!attribute [r] api_version
        #   @return [::String]
        #     Output only. API version used to start the operation.
        # @!attribute [r] additional_info
        #   @return [::Google::Protobuf::Map{::String => ::String}]
        #     Output only. AdditionalInfo contains additional Info related to backup plan
        #     association resource.
        class OperationMetadata
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # @!attribute [rw] key
          #   @return [::String]
          # @!attribute [rw] value
          #   @return [::String]
          class AdditionalInfoEntry
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end
      end
    end
  end
end
