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

require "gapic/rest"
require "gapic/config"
require "gapic/config/method"

require "google/cloud/telco_automation/v1/version"
require "google/cloud/telco_automation/v1/bindings_override"

require "google/cloud/telco_automation/v1/telco_automation/credentials"
require "google/cloud/telco_automation/v1/telco_automation/paths"
require "google/cloud/telco_automation/v1/telco_automation/rest/operations"
require "google/cloud/telco_automation/v1/telco_automation/rest/client"

module Google
  module Cloud
    module TelcoAutomation
      module V1
        ##
        # TelcoAutomation Service manages the control plane cluster a.k.a.
        # Orchestration Cluster (GKE cluster with config controller) of TNA. It also
        # exposes blueprint APIs which manages the lifecycle of blueprints that control
        # the infrastructure setup (e.g GDCE clusters) and deployment of network
        # functions.
        #
        # To load this service and instantiate a REST client:
        #
        #     require "google/cloud/telco_automation/v1/telco_automation/rest"
        #     client = ::Google::Cloud::TelcoAutomation::V1::TelcoAutomation::Rest::Client.new
        #
        module TelcoAutomation
          # Client for the REST transport
          module Rest
          end
        end
      end
    end
  end
end

helper_path = ::File.join __dir__, "rest", "helpers.rb"
require "google/cloud/telco_automation/v1/telco_automation/rest/helpers" if ::File.file? helper_path
