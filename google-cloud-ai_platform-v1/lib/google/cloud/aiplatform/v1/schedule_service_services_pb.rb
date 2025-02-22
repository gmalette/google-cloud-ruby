# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: google/cloud/aiplatform/v1/schedule_service.proto for package 'Google.Cloud.AIPlatform.V1'
# Original file comments:
# Copyright 2023 Google LLC
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
require 'google/cloud/aiplatform/v1/schedule_service_pb'

module Google
  module Cloud
    module AIPlatform
      module V1
        module ScheduleService
          # A service for creating and managing Vertex AI's Schedule resources to
          # periodically launch shceudled runs to make API calls.
          class Service

            include ::GRPC::GenericService

            self.marshal_class_method = :encode
            self.unmarshal_class_method = :decode
            self.service_name = 'google.cloud.aiplatform.v1.ScheduleService'

            # Creates a Schedule.
            rpc :CreateSchedule, ::Google::Cloud::AIPlatform::V1::CreateScheduleRequest, ::Google::Cloud::AIPlatform::V1::Schedule
            # Deletes a Schedule.
            rpc :DeleteSchedule, ::Google::Cloud::AIPlatform::V1::DeleteScheduleRequest, ::Google::Longrunning::Operation
            # Gets a Schedule.
            rpc :GetSchedule, ::Google::Cloud::AIPlatform::V1::GetScheduleRequest, ::Google::Cloud::AIPlatform::V1::Schedule
            # Lists Schedules in a Location.
            rpc :ListSchedules, ::Google::Cloud::AIPlatform::V1::ListSchedulesRequest, ::Google::Cloud::AIPlatform::V1::ListSchedulesResponse
            # Pauses a Schedule. Will mark
            # [Schedule.state][google.cloud.aiplatform.v1.Schedule.state] to 'PAUSED'. If
            # the schedule is paused, no new runs will be created. Already created runs
            # will NOT be paused or canceled.
            rpc :PauseSchedule, ::Google::Cloud::AIPlatform::V1::PauseScheduleRequest, ::Google::Protobuf::Empty
            # Resumes a paused Schedule to start scheduling new runs. Will mark
            # [Schedule.state][google.cloud.aiplatform.v1.Schedule.state] to 'ACTIVE'.
            # Only paused Schedule can be resumed.
            #
            # When the Schedule is resumed, new runs will be scheduled starting from the
            # next execution time after the current time based on the time_specification
            # in the Schedule. If
            # [Schedule.catch_up][google.cloud.aiplatform.v1.Schedule.catch_up] is set up
            # true, all missed runs will be scheduled for backfill first.
            rpc :ResumeSchedule, ::Google::Cloud::AIPlatform::V1::ResumeScheduleRequest, ::Google::Protobuf::Empty
            # Updates an active or paused Schedule.
            #
            # When the Schedule is updated, new runs will be scheduled starting from the
            # updated next execution time after the update time based on the
            # time_specification in the updated Schedule. All unstarted runs before the
            # update time will be skipped while already created runs will NOT be paused
            # or canceled.
            rpc :UpdateSchedule, ::Google::Cloud::AIPlatform::V1::UpdateScheduleRequest, ::Google::Cloud::AIPlatform::V1::Schedule
          end

          Stub = Service.rpc_stub_class
        end
      end
    end
  end
end
