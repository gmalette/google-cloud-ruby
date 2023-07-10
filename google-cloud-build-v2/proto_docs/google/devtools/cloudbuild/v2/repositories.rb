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


module Google
  module Cloud
    module Build
      module V2
        # A connection to a SCM like GitHub, GitHub Enterprise, Bitbucket Server or
        # GitLab.
        # @!attribute [rw] name
        #   @return [::String]
        #     Immutable. The resource name of the connection, in the format
        #     `projects/{project}/locations/{location}/connections/{connection_id}`.
        # @!attribute [r] create_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. Server assigned timestamp for when the connection was created.
        # @!attribute [r] update_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. Server assigned timestamp for when the connection was updated.
        # @!attribute [rw] github_config
        #   @return [::Google::Cloud::Build::V2::GitHubConfig]
        #     Configuration for connections to github.com.
        # @!attribute [rw] github_enterprise_config
        #   @return [::Google::Cloud::Build::V2::GitHubEnterpriseConfig]
        #     Configuration for connections to an instance of GitHub Enterprise.
        # @!attribute [rw] gitlab_config
        #   @return [::Google::Cloud::Build::V2::GitLabConfig]
        #     Configuration for connections to gitlab.com or an instance of GitLab
        #     Enterprise.
        # @!attribute [r] installation_state
        #   @return [::Google::Cloud::Build::V2::InstallationState]
        #     Output only. Installation state of the Connection.
        # @!attribute [rw] disabled
        #   @return [::Boolean]
        #     If disabled is set to true, functionality is disabled for this connection.
        #     Repository based API methods and webhooks processing for repositories in
        #     this connection will be disabled.
        # @!attribute [r] reconciling
        #   @return [::Boolean]
        #     Output only. Set to true when the connection is being set up or updated in
        #     the background.
        # @!attribute [rw] annotations
        #   @return [::Google::Protobuf::Map{::String => ::String}]
        #     Allows clients to store small amounts of arbitrary data.
        # @!attribute [rw] etag
        #   @return [::String]
        #     This checksum is computed by the server based on the value of other
        #     fields, and may be sent on update and delete requests to ensure the
        #     client has an up-to-date value before proceeding.
        class Connection
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # @!attribute [rw] key
          #   @return [::String]
          # @!attribute [rw] value
          #   @return [::String]
          class AnnotationsEntry
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end

        # Describes stage and necessary actions to be taken by the
        # user to complete the installation. Used for GitHub and GitHub Enterprise
        # based connections.
        # @!attribute [r] stage
        #   @return [::Google::Cloud::Build::V2::InstallationState::Stage]
        #     Output only. Current step of the installation process.
        # @!attribute [r] message
        #   @return [::String]
        #     Output only. Message of what the user should do next to continue the
        #     installation. Empty string if the installation is already complete.
        # @!attribute [r] action_uri
        #   @return [::String]
        #     Output only. Link to follow for next action. Empty string if the
        #     installation is already complete.
        class InstallationState
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Stage of the installation process.
          module Stage
            # No stage specified.
            STAGE_UNSPECIFIED = 0

            # Only for GitHub Enterprise. An App creation has been requested.
            # The user needs to confirm the creation in their GitHub enterprise host.
            PENDING_CREATE_APP = 1

            # User needs to authorize the GitHub (or Enterprise) App via OAuth.
            PENDING_USER_OAUTH = 2

            # User needs to follow the link to install the GitHub (or Enterprise) App.
            PENDING_INSTALL_APP = 3

            # Installation process has been completed.
            COMPLETE = 10
          end
        end

        # Request message for FetchLinkableRepositories.
        # @!attribute [rw] connection
        #   @return [::String]
        #     Required. The name of the Connection.
        #     Format: `projects/*/locations/*/connections/*`.
        # @!attribute [rw] page_size
        #   @return [::Integer]
        #     Number of results to return in the list. Default to 20.
        # @!attribute [rw] page_token
        #   @return [::String]
        #     Page start.
        class FetchLinkableRepositoriesRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response message for FetchLinkableRepositories.
        # @!attribute [rw] repositories
        #   @return [::Array<::Google::Cloud::Build::V2::Repository>]
        #     repositories ready to be created.
        # @!attribute [rw] next_page_token
        #   @return [::String]
        #     A token identifying a page of results the server should return.
        class FetchLinkableRepositoriesResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Configuration for connections to github.com.
        # @!attribute [rw] authorizer_credential
        #   @return [::Google::Cloud::Build::V2::OAuthCredential]
        #     OAuth credential of the account that authorized the Cloud Build GitHub App.
        #     It is recommended to use a robot account instead of a human user account.
        #     The OAuth token must be tied to the Cloud Build GitHub App.
        # @!attribute [rw] app_installation_id
        #   @return [::Integer]
        #     GitHub App installation id.
        class GitHubConfig
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Configuration for connections to an instance of GitHub Enterprise.
        # @!attribute [rw] host_uri
        #   @return [::String]
        #     Required. The URI of the GitHub Enterprise host this connection is for.
        # @!attribute [rw] api_key
        #   @return [::String]
        #     Required. API Key used for authentication of webhook events.
        # @!attribute [rw] app_id
        #   @return [::Integer]
        #     Id of the GitHub App created from the manifest.
        # @!attribute [rw] app_slug
        #   @return [::String]
        #     The URL-friendly name of the GitHub App.
        # @!attribute [rw] private_key_secret_version
        #   @return [::String]
        #     SecretManager resource containing the private key of the GitHub App,
        #     formatted as `projects/*/secrets/*/versions/*`.
        # @!attribute [rw] webhook_secret_secret_version
        #   @return [::String]
        #     SecretManager resource containing the webhook secret of the GitHub App,
        #     formatted as `projects/*/secrets/*/versions/*`.
        # @!attribute [rw] app_installation_id
        #   @return [::Integer]
        #     ID of the installation of the GitHub App.
        # @!attribute [rw] service_directory_config
        #   @return [::Google::Cloud::Build::V2::ServiceDirectoryConfig]
        #     Configuration for using Service Directory to privately connect to a GitHub
        #     Enterprise server. This should only be set if the GitHub Enterprise server
        #     is hosted on-premises and not reachable by public internet. If this field
        #     is left empty, calls to the GitHub Enterprise server will be made over the
        #     public internet.
        # @!attribute [rw] ssl_ca
        #   @return [::String]
        #     SSL certificate to use for requests to GitHub Enterprise.
        # @!attribute [r] server_version
        #   @return [::String]
        #     Output only. GitHub Enterprise version installed at the host_uri.
        class GitHubEnterpriseConfig
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Configuration for connections to gitlab.com or an instance of GitLab
        # Enterprise.
        # @!attribute [rw] host_uri
        #   @return [::String]
        #     The URI of the GitLab Enterprise host this connection is for.
        #     If not specified, the default value is https://gitlab.com.
        # @!attribute [rw] webhook_secret_secret_version
        #   @return [::String]
        #     Required. Immutable. SecretManager resource containing the webhook secret
        #     of a GitLab Enterprise project, formatted as
        #     `projects/*/secrets/*/versions/*`.
        # @!attribute [rw] read_authorizer_credential
        #   @return [::Google::Cloud::Build::V2::UserCredential]
        #     Required. A GitLab personal access token with the minimum `read_api` scope
        #     access.
        # @!attribute [rw] authorizer_credential
        #   @return [::Google::Cloud::Build::V2::UserCredential]
        #     Required. A GitLab personal access token with the `api` scope access.
        # @!attribute [rw] service_directory_config
        #   @return [::Google::Cloud::Build::V2::ServiceDirectoryConfig]
        #     Configuration for using Service Directory to privately connect to a GitLab
        #     Enterprise server. This should only be set if the GitLab Enterprise server
        #     is hosted on-premises and not reachable by public internet. If this field
        #     is left empty, calls to the GitLab Enterprise server will be made over the
        #     public internet.
        # @!attribute [rw] ssl_ca
        #   @return [::String]
        #     SSL certificate to use for requests to GitLab Enterprise.
        # @!attribute [r] server_version
        #   @return [::String]
        #     Output only. Version of the GitLab Enterprise server running on the
        #     `host_uri`.
        class GitLabConfig
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # ServiceDirectoryConfig represents Service Directory configuration for a
        # connection.
        # @!attribute [rw] service
        #   @return [::String]
        #     Required. The Service Directory service name.
        #     Format:
        #     projects/\\{project}/locations/\\{location}/namespaces/\\{namespace}/services/\\{service}.
        class ServiceDirectoryConfig
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # A repository associated to a parent connection.
        # @!attribute [rw] name
        #   @return [::String]
        #     Immutable. Resource name of the repository, in the format
        #     `projects/*/locations/*/connections/*/repositories/*`.
        # @!attribute [rw] remote_uri
        #   @return [::String]
        #     Required. Git Clone HTTPS URI.
        # @!attribute [r] create_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. Server assigned timestamp for when the connection was created.
        # @!attribute [r] update_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. Server assigned timestamp for when the connection was updated.
        # @!attribute [rw] annotations
        #   @return [::Google::Protobuf::Map{::String => ::String}]
        #     Allows clients to store small amounts of arbitrary data.
        # @!attribute [rw] etag
        #   @return [::String]
        #     This checksum is computed by the server based on the value of other
        #     fields, and may be sent on update and delete requests to ensure the
        #     client has an up-to-date value before proceeding.
        # @!attribute [r] webhook_id
        #   @return [::String]
        #     Output only. External ID of the webhook created for the repository.
        class Repository
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # @!attribute [rw] key
          #   @return [::String]
          # @!attribute [rw] value
          #   @return [::String]
          class AnnotationsEntry
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end

        # Represents an OAuth token of the account that authorized the Connection,
        # and associated metadata.
        # @!attribute [rw] oauth_token_secret_version
        #   @return [::String]
        #     A SecretManager resource containing the OAuth token that authorizes
        #     the Cloud Build connection. Format: `projects/*/secrets/*/versions/*`.
        # @!attribute [r] username
        #   @return [::String]
        #     Output only. The username associated to this token.
        class OAuthCredential
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Represents a personal access token that authorized the Connection,
        # and associated metadata.
        # @!attribute [rw] user_token_secret_version
        #   @return [::String]
        #     Required. A SecretManager resource containing the user token that
        #     authorizes the Cloud Build connection. Format:
        #     `projects/*/secrets/*/versions/*`.
        # @!attribute [r] username
        #   @return [::String]
        #     Output only. The username associated to this token.
        class UserCredential
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Message for creating a Connection
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. Project and location where the connection will be created.
        #     Format: `projects/*/locations/*`.
        # @!attribute [rw] connection
        #   @return [::Google::Cloud::Build::V2::Connection]
        #     Required. The Connection to create.
        # @!attribute [rw] connection_id
        #   @return [::String]
        #     Required. The ID to use for the Connection, which will become the final
        #     component of the Connection's resource name. Names must be unique
        #     per-project per-location. Allows alphanumeric characters and any of
        #     -._~%!$&'()*+,;=@.
        class CreateConnectionRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Message for getting the details of a Connection.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The name of the Connection to retrieve.
        #     Format: `projects/*/locations/*/connections/*`.
        class GetConnectionRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Message for requesting list of Connections.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The parent, which owns this collection of Connections.
        #     Format: `projects/*/locations/*`.
        # @!attribute [rw] page_size
        #   @return [::Integer]
        #     Number of results to return in the list.
        # @!attribute [rw] page_token
        #   @return [::String]
        #     Page start.
        class ListConnectionsRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Message for response to listing Connections.
        # @!attribute [rw] connections
        #   @return [::Array<::Google::Cloud::Build::V2::Connection>]
        #     The list of Connections.
        # @!attribute [rw] next_page_token
        #   @return [::String]
        #     A token identifying a page of results the server should return.
        class ListConnectionsResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Message for updating a Connection.
        # @!attribute [rw] connection
        #   @return [::Google::Cloud::Build::V2::Connection]
        #     Required. The Connection to update.
        # @!attribute [rw] update_mask
        #   @return [::Google::Protobuf::FieldMask]
        #     The list of fields to be updated.
        # @!attribute [rw] allow_missing
        #   @return [::Boolean]
        #     If set to true, and the connection is not found a new connection
        #     will be created. In this situation `update_mask` is ignored.
        #     The creation will succeed only if the input connection has all the
        #     necessary information (e.g a github_config with both  user_oauth_token and
        #     installation_id properties).
        # @!attribute [rw] etag
        #   @return [::String]
        #     The current etag of the connection.
        #     If an etag is provided and does not match the current etag of the
        #     connection, update will be blocked and an ABORTED error will be returned.
        class UpdateConnectionRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Message for deleting a Connection.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The name of the Connection to delete.
        #     Format: `projects/*/locations/*/connections/*`.
        # @!attribute [rw] etag
        #   @return [::String]
        #     The current etag of the connection.
        #     If an etag is provided and does not match the current etag of the
        #     connection, deletion will be blocked and an ABORTED error will be returned.
        # @!attribute [rw] validate_only
        #   @return [::Boolean]
        #     If set, validate the request, but do not actually post it.
        class DeleteConnectionRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Message for creating a Repository.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The connection to contain the repository. If the request is part
        #     of a BatchCreateRepositoriesRequest, this field should be empty or match
        #     the parent specified there.
        # @!attribute [rw] repository
        #   @return [::Google::Cloud::Build::V2::Repository]
        #     Required. The repository to create.
        # @!attribute [rw] repository_id
        #   @return [::String]
        #     Required. The ID to use for the repository, which will become the final
        #     component of the repository's resource name. This ID should be unique in
        #     the connection. Allows alphanumeric characters and any of
        #     -._~%!$&'()*+,;=@.
        class CreateRepositoryRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Message for creating repositoritories in batch.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The connection to contain all the repositories being created.
        #     Format: projects/*/locations/*/connections/*
        #     The parent field in the CreateRepositoryRequest messages
        #     must either be empty or match this field.
        # @!attribute [rw] requests
        #   @return [::Array<::Google::Cloud::Build::V2::CreateRepositoryRequest>]
        #     Required. The request messages specifying the repositories to create.
        class BatchCreateRepositoriesRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Message for response of creating repositories in batch.
        # @!attribute [rw] repositories
        #   @return [::Array<::Google::Cloud::Build::V2::Repository>]
        #     Repository resources created.
        class BatchCreateRepositoriesResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Message for getting the details of a Repository.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The name of the Repository to retrieve.
        #     Format: `projects/*/locations/*/connections/*/repositories/*`.
        class GetRepositoryRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Message for requesting list of Repositories.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The parent, which owns this collection of Repositories.
        #     Format: `projects/*/locations/*/connections/*`.
        # @!attribute [rw] page_size
        #   @return [::Integer]
        #     Number of results to return in the list.
        # @!attribute [rw] page_token
        #   @return [::String]
        #     Page start.
        # @!attribute [rw] filter
        #   @return [::String]
        #     A filter expression that filters resources listed in the response.
        #     Expressions must follow API improvement proposal
        #     [AIP-160](https://google.aip.dev/160). e.g.
        #     `remote_uri:"https://github.com*"`.
        class ListRepositoriesRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Message for response to listing Repositories.
        # @!attribute [rw] repositories
        #   @return [::Array<::Google::Cloud::Build::V2::Repository>]
        #     The list of Repositories.
        # @!attribute [rw] next_page_token
        #   @return [::String]
        #     A token identifying a page of results the server should return.
        class ListRepositoriesResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Message for deleting a Repository.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The name of the Repository to delete.
        #     Format: `projects/*/locations/*/connections/*/repositories/*`.
        # @!attribute [rw] etag
        #   @return [::String]
        #     The current etag of the repository.
        #     If an etag is provided and does not match the current etag of the
        #     repository, deletion will be blocked and an ABORTED error will be returned.
        # @!attribute [rw] validate_only
        #   @return [::Boolean]
        #     If set, validate the request, but do not actually post it.
        class DeleteRepositoryRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Message for fetching SCM read/write token.
        # @!attribute [rw] repository
        #   @return [::String]
        #     Required. The resource name of the repository in the format
        #     `projects/*/locations/*/connections/*/repositories/*`.
        class FetchReadWriteTokenRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Message for fetching SCM read token.
        # @!attribute [rw] repository
        #   @return [::String]
        #     Required. The resource name of the repository in the format
        #     `projects/*/locations/*/connections/*/repositories/*`.
        class FetchReadTokenRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Message for responding to get read token.
        # @!attribute [rw] token
        #   @return [::String]
        #     The token content.
        # @!attribute [rw] expiration_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Expiration timestamp. Can be empty if unknown or non-expiring.
        class FetchReadTokenResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Message for responding to get read/write token.
        # @!attribute [rw] token
        #   @return [::String]
        #     The token content.
        # @!attribute [rw] expiration_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Expiration timestamp. Can be empty if unknown or non-expiring.
        class FetchReadWriteTokenResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # RPC request object accepted by the ProcessWebhook RPC method.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. Project and location where the webhook will be received.
        #     Format: `projects/*/locations/*`.
        # @!attribute [rw] body
        #   @return [::Google::Api::HttpBody]
        #     HTTP request body.
        # @!attribute [rw] webhook_key
        #   @return [::String]
        #     Arbitrary additional key to find the maching repository for a webhook event
        #     if needed.
        class ProcessWebhookRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request for fetching git refs
        # @!attribute [rw] repository
        #   @return [::String]
        #     Required. The resource name of the repository in the format
        #     `projects/*/locations/*/connections/*/repositories/*`.
        # @!attribute [rw] ref_type
        #   @return [::Google::Cloud::Build::V2::FetchGitRefsRequest::RefType]
        #     Type of refs to fetch
        class FetchGitRefsRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Type of refs
          module RefType
            # No type specified.
            REF_TYPE_UNSPECIFIED = 0

            # To fetch tags.
            TAG = 1

            # To fetch branches.
            BRANCH = 2
          end
        end

        # Response for fetching git refs
        # @!attribute [rw] ref_names
        #   @return [::Array<::String>]
        #     Name of the refs fetched.
        class FetchGitRefsResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end
      end
    end
  end
end
