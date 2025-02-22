# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: google/cloud/privilegedaccessmanager/v1/privilegedaccessmanager.proto for package 'Google.Cloud.PrivilegedAccessManager.V1'
# Original file comments:
# Copyright 2024 Google LLC
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
#

require 'grpc'
require 'google/cloud/privilegedaccessmanager/v1/privilegedaccessmanager_pb'

module Google
  module Cloud
    module PrivilegedAccessManager
      module V1
        module PrivilegedAccessManager
          # This API allows customers to manage temporary, request based privileged
          # access to their resources.
          #
          # It defines the following resource model:
          #
          # * A collection of `Entitlement` resources. An entitlement allows configuring
          #   (among other things):
          #
          #   * Some kind of privileged access that users can request.
          #   * A set of users called _requesters_ who can request this access.
          #   * A maximum duration for which the access can be requested.
          #   * An optional approval workflow which must be satisfied before access is
          #     granted.
          #
          # * A collection of `Grant` resources. A grant is a request by a requester to
          #   get the privileged access specified in an entitlement for some duration.
          #
          #   After the approval workflow as specified in the entitlement is satisfied,
          #   the specified access is given to the requester. The access is automatically
          #   taken back after the requested duration is over.
          class Service

            include ::GRPC::GenericService

            self.marshal_class_method = :encode
            self.unmarshal_class_method = :decode
            self.service_name = 'google.cloud.privilegedaccessmanager.v1.PrivilegedAccessManager'

            # `CheckOnboardingStatus` reports the onboarding status for a
            # project/folder/organization. Any findings reported by this API need to be
            # fixed before PAM can be used on the resource.
            rpc :CheckOnboardingStatus, ::Google::Cloud::PrivilegedAccessManager::V1::CheckOnboardingStatusRequest, ::Google::Cloud::PrivilegedAccessManager::V1::CheckOnboardingStatusResponse
            # Lists entitlements in a given project/folder/organization and location.
            rpc :ListEntitlements, ::Google::Cloud::PrivilegedAccessManager::V1::ListEntitlementsRequest, ::Google::Cloud::PrivilegedAccessManager::V1::ListEntitlementsResponse
            # `SearchEntitlements` returns entitlements on which the caller has the
            # specified access.
            rpc :SearchEntitlements, ::Google::Cloud::PrivilegedAccessManager::V1::SearchEntitlementsRequest, ::Google::Cloud::PrivilegedAccessManager::V1::SearchEntitlementsResponse
            # Gets details of a single entitlement.
            rpc :GetEntitlement, ::Google::Cloud::PrivilegedAccessManager::V1::GetEntitlementRequest, ::Google::Cloud::PrivilegedAccessManager::V1::Entitlement
            # Creates a new entitlement in a given project/folder/organization and
            # location.
            rpc :CreateEntitlement, ::Google::Cloud::PrivilegedAccessManager::V1::CreateEntitlementRequest, ::Google::Longrunning::Operation
            # Deletes a single entitlement. This method can only be called when there
            # are no in-progress (`ACTIVE`/`ACTIVATING`/`REVOKING`) grants under the
            # entitlement.
            rpc :DeleteEntitlement, ::Google::Cloud::PrivilegedAccessManager::V1::DeleteEntitlementRequest, ::Google::Longrunning::Operation
            # Updates the entitlement specified in the request. Updated fields in the
            # entitlement need to be specified in an update mask. The changes made to an
            # entitlement are applicable only on future grants of the entitlement.
            # However, if new approvers are added or existing approvers are removed from
            # the approval workflow, the changes are effective on existing grants.
            #
            # The following fields are not supported for updates:
            #
            #  * All immutable fields
            #  * Entitlement name
            #  * Resource name
            #  * Resource type
            #  * Adding an approval workflow in an entitlement which previously had no
            #    approval workflow.
            #  * Deleting the approval workflow from an entitlement.
            #  * Adding or deleting a step in the approval workflow (only one step is
            #    supported)
            #
            # Note that updates are allowed on the list of approvers in an approval
            # workflow step.
            rpc :UpdateEntitlement, ::Google::Cloud::PrivilegedAccessManager::V1::UpdateEntitlementRequest, ::Google::Longrunning::Operation
            # Lists grants for a given entitlement.
            rpc :ListGrants, ::Google::Cloud::PrivilegedAccessManager::V1::ListGrantsRequest, ::Google::Cloud::PrivilegedAccessManager::V1::ListGrantsResponse
            # `SearchGrants` returns grants that are related to the calling user in the
            # specified way.
            rpc :SearchGrants, ::Google::Cloud::PrivilegedAccessManager::V1::SearchGrantsRequest, ::Google::Cloud::PrivilegedAccessManager::V1::SearchGrantsResponse
            # Get details of a single grant.
            rpc :GetGrant, ::Google::Cloud::PrivilegedAccessManager::V1::GetGrantRequest, ::Google::Cloud::PrivilegedAccessManager::V1::Grant
            # Creates a new grant in a given project/folder/organization and
            # location.
            rpc :CreateGrant, ::Google::Cloud::PrivilegedAccessManager::V1::CreateGrantRequest, ::Google::Cloud::PrivilegedAccessManager::V1::Grant
            # `ApproveGrant` is used to approve a grant. This method can only be called
            # on a grant when it's in the `APPROVAL_AWAITED` state. This operation can't
            # be undone.
            rpc :ApproveGrant, ::Google::Cloud::PrivilegedAccessManager::V1::ApproveGrantRequest, ::Google::Cloud::PrivilegedAccessManager::V1::Grant
            # `DenyGrant` is used to deny a grant. This method can only be called on a
            # grant when it's in the `APPROVAL_AWAITED` state. This operation can't be
            # undone.
            rpc :DenyGrant, ::Google::Cloud::PrivilegedAccessManager::V1::DenyGrantRequest, ::Google::Cloud::PrivilegedAccessManager::V1::Grant
            # `RevokeGrant` is used to immediately revoke access for a grant. This method
            # can be called when the grant is in a non-terminal state.
            rpc :RevokeGrant, ::Google::Cloud::PrivilegedAccessManager::V1::RevokeGrantRequest, ::Google::Longrunning::Operation
          end

          Stub = Service.rpc_stub_class
        end
      end
    end
  end
end
