# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/dialogflow/cx/v3/experiment.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/protobuf/duration_pb'
require 'google/protobuf/empty_pb'
require 'google/protobuf/field_mask_pb'
require 'google/protobuf/timestamp_pb'


descriptor_data = "\n.google/cloud/dialogflow/cx/v3/experiment.proto\x12\x1dgoogle.cloud.dialogflow.cx.v3\x1a\x1cgoogle/api/annotations.proto\x1a\x17google/api/client.proto\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a\x1egoogle/protobuf/duration.proto\x1a\x1bgoogle/protobuf/empty.proto\x1a google/protobuf/field_mask.proto\x1a\x1fgoogle/protobuf/timestamp.proto\"\xfb\x10\n\nExperiment\x12\x0c\n\x04name\x18\x01 \x01(\t\x12\x19\n\x0c\x64isplay_name\x18\x02 \x01(\tB\x03\xe0\x41\x02\x12\x13\n\x0b\x64\x65scription\x18\x03 \x01(\t\x12>\n\x05state\x18\x04 \x01(\x0e\x32/.google.cloud.dialogflow.cx.v3.Experiment.State\x12H\n\ndefinition\x18\x05 \x01(\x0b\x32\x34.google.cloud.dialogflow.cx.v3.Experiment.Definition\x12\x44\n\x0erollout_config\x18\x0e \x01(\x0b\x32,.google.cloud.dialogflow.cx.v3.RolloutConfig\x12\x42\n\rrollout_state\x18\x0f \x01(\x0b\x32+.google.cloud.dialogflow.cx.v3.RolloutState\x12\x1e\n\x16rollout_failure_reason\x18\x10 \x01(\t\x12@\n\x06result\x18\x06 \x01(\x0b\x32\x30.google.cloud.dialogflow.cx.v3.Experiment.Result\x12/\n\x0b\x63reate_time\x18\x07 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12.\n\nstart_time\x18\x08 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12,\n\x08\x65nd_time\x18\t \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12\x34\n\x10last_update_time\x18\n \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12\x34\n\x11\x65xperiment_length\x18\x0b \x01(\x0b\x32\x19.google.protobuf.Duration\x12H\n\x10variants_history\x18\x0c \x03(\x0b\x32..google.cloud.dialogflow.cx.v3.VariantsHistory\x1aw\n\nDefinition\x12\x11\n\tcondition\x18\x01 \x01(\t\x12J\n\x10version_variants\x18\x02 \x01(\x0b\x32..google.cloud.dialogflow.cx.v3.VersionVariantsH\x00\x42\n\n\x08variants\x1a\x8b\x08\n\x06Result\x12X\n\x0fversion_metrics\x18\x01 \x03(\x0b\x32?.google.cloud.dialogflow.cx.v3.Experiment.Result.VersionMetrics\x12\x34\n\x10last_update_time\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x1ag\n\x12\x43onfidenceInterval\x12\x18\n\x10\x63onfidence_level\x18\x01 \x01(\x01\x12\r\n\x05ratio\x18\x02 \x01(\x01\x12\x13\n\x0blower_bound\x18\x03 \x01(\x01\x12\x13\n\x0bupper_bound\x18\x04 \x01(\x01\x1a\xb0\x02\n\x06Metric\x12I\n\x04type\x18\x01 \x01(\x0e\x32;.google.cloud.dialogflow.cx.v3.Experiment.Result.MetricType\x12N\n\ncount_type\x18\x05 \x01(\x0e\x32:.google.cloud.dialogflow.cx.v3.Experiment.Result.CountType\x12\x0f\n\x05ratio\x18\x02 \x01(\x01H\x00\x12\x0f\n\x05\x63ount\x18\x04 \x01(\x01H\x00\x12`\n\x13\x63onfidence_interval\x18\x03 \x01(\x0b\x32\x43.google.cloud.dialogflow.cx.v3.Experiment.Result.ConfidenceIntervalB\x07\n\x05value\x1a\xaa\x01\n\x0eVersionMetrics\x12\x37\n\x07version\x18\x01 \x01(\tB&\xfa\x41#\n!dialogflow.googleapis.com/Version\x12H\n\x07metrics\x18\x02 \x03(\x0b\x32\x37.google.cloud.dialogflow.cx.v3.Experiment.Result.Metric\x12\x15\n\rsession_count\x18\x03 \x01(\x05\"\xb6\x01\n\nMetricType\x12\x16\n\x12METRIC_UNSPECIFIED\x10\x00\x12&\n\"CONTAINED_SESSION_NO_CALLBACK_RATE\x10\x01\x12\x1b\n\x17LIVE_AGENT_HANDOFF_RATE\x10\x02\x12\x19\n\x15\x43\x41LLBACK_SESSION_RATE\x10\x03\x12\x1a\n\x16\x41\x42\x41NDONED_SESSION_RATE\x10\x04\x12\x14\n\x10SESSION_END_RATE\x10\x05\"o\n\tCountType\x12\x1a\n\x16\x43OUNT_TYPE_UNSPECIFIED\x10\x00\x12\x18\n\x14TOTAL_NO_MATCH_COUNT\x10\x01\x12\x14\n\x10TOTAL_TURN_COUNT\x10\x02\x12\x16\n\x12\x41VERAGE_TURN_COUNT\x10\x03\"T\n\x05State\x12\x15\n\x11STATE_UNSPECIFIED\x10\x00\x12\t\n\x05\x44RAFT\x10\x01\x12\x0b\n\x07RUNNING\x10\x02\x12\x08\n\x04\x44ONE\x10\x03\x12\x12\n\x0eROLLOUT_FAILED\x10\x04:\x96\x01\xea\x41\x92\x01\n$dialogflow.googleapis.com/Experiment\x12jprojects/{project}/locations/{location}/agents/{agent}/environments/{environment}/experiments/{experiment}\"\xad\x01\n\x0fVersionVariants\x12H\n\x08variants\x18\x01 \x03(\x0b\x32\x36.google.cloud.dialogflow.cx.v3.VersionVariants.Variant\x1aP\n\x07Variant\x12\x0f\n\x07version\x18\x01 \x01(\t\x12\x1a\n\x12traffic_allocation\x18\x02 \x01(\x02\x12\x18\n\x10is_control_group\x18\x03 \x01(\x08\"\x9a\x01\n\x0fVariantsHistory\x12J\n\x10version_variants\x18\x01 \x01(\x0b\x32..google.cloud.dialogflow.cx.v3.VersionVariantsH\x00\x12/\n\x0bupdate_time\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\n\n\x08variants\"\x85\x02\n\rRolloutConfig\x12O\n\rrollout_steps\x18\x01 \x03(\x0b\x32\x38.google.cloud.dialogflow.cx.v3.RolloutConfig.RolloutStep\x12\x19\n\x11rollout_condition\x18\x02 \x01(\t\x12\x19\n\x11\x66\x61ilure_condition\x18\x03 \x01(\t\x1am\n\x0bRolloutStep\x12\x14\n\x0c\x64isplay_name\x18\x01 \x01(\t\x12\x17\n\x0ftraffic_percent\x18\x02 \x01(\x05\x12/\n\x0cmin_duration\x18\x03 \x01(\x0b\x32\x19.google.protobuf.Duration\"`\n\x0cRolloutState\x12\x0c\n\x04step\x18\x01 \x01(\t\x12\x12\n\nstep_index\x18\x03 \x01(\x05\x12.\n\nstart_time\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\"}\n\x16ListExperimentsRequest\x12<\n\x06parent\x18\x01 \x01(\tB,\xe0\x41\x02\xfa\x41&\x12$dialogflow.googleapis.com/Experiment\x12\x11\n\tpage_size\x18\x02 \x01(\x05\x12\x12\n\npage_token\x18\x03 \x01(\t\"r\n\x17ListExperimentsResponse\x12>\n\x0b\x65xperiments\x18\x01 \x03(\x0b\x32).google.cloud.dialogflow.cx.v3.Experiment\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\"R\n\x14GetExperimentRequest\x12:\n\x04name\x18\x01 \x01(\tB,\xe0\x41\x02\xfa\x41&\n$dialogflow.googleapis.com/Experiment\"\x9b\x01\n\x17\x43reateExperimentRequest\x12<\n\x06parent\x18\x01 \x01(\tB,\xe0\x41\x02\xfa\x41&\x12$dialogflow.googleapis.com/Experiment\x12\x42\n\nexperiment\x18\x02 \x01(\x0b\x32).google.cloud.dialogflow.cx.v3.ExperimentB\x03\xe0\x41\x02\"\x93\x01\n\x17UpdateExperimentRequest\x12\x42\n\nexperiment\x18\x01 \x01(\x0b\x32).google.cloud.dialogflow.cx.v3.ExperimentB\x03\xe0\x41\x02\x12\x34\n\x0bupdate_mask\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.FieldMaskB\x03\xe0\x41\x02\"U\n\x17\x44\x65leteExperimentRequest\x12:\n\x04name\x18\x01 \x01(\tB,\xe0\x41\x02\xfa\x41&\n$dialogflow.googleapis.com/Experiment\"T\n\x16StartExperimentRequest\x12:\n\x04name\x18\x01 \x01(\tB,\xe0\x41\x02\xfa\x41&\n$dialogflow.googleapis.com/Experiment\"S\n\x15StopExperimentRequest\x12:\n\x04name\x18\x01 \x01(\tB,\xe0\x41\x02\xfa\x41&\n$dialogflow.googleapis.com/Experiment2\xf8\x0c\n\x0b\x45xperiments\x12\xda\x01\n\x0fListExperiments\x12\x35.google.cloud.dialogflow.cx.v3.ListExperimentsRequest\x1a\x36.google.cloud.dialogflow.cx.v3.ListExperimentsResponse\"X\xda\x41\x06parent\x82\xd3\xe4\x93\x02I\x12G/v3/{parent=projects/*/locations/*/agents/*/environments/*}/experiments\x12\xc7\x01\n\rGetExperiment\x12\x33.google.cloud.dialogflow.cx.v3.GetExperimentRequest\x1a).google.cloud.dialogflow.cx.v3.Experiment\"V\xda\x41\x04name\x82\xd3\xe4\x93\x02I\x12G/v3/{name=projects/*/locations/*/agents/*/environments/*/experiments/*}\x12\xe6\x01\n\x10\x43reateExperiment\x12\x36.google.cloud.dialogflow.cx.v3.CreateExperimentRequest\x1a).google.cloud.dialogflow.cx.v3.Experiment\"o\xda\x41\x11parent,experiment\x82\xd3\xe4\x93\x02U\"G/v3/{parent=projects/*/locations/*/agents/*/environments/*}/experiments:\nexperiment\x12\xf6\x01\n\x10UpdateExperiment\x12\x36.google.cloud.dialogflow.cx.v3.UpdateExperimentRequest\x1a).google.cloud.dialogflow.cx.v3.Experiment\"\x7f\xda\x41\x16\x65xperiment,update_mask\x82\xd3\xe4\x93\x02`2R/v3/{experiment.name=projects/*/locations/*/agents/*/environments/*/experiments/*}:\nexperiment\x12\xba\x01\n\x10\x44\x65leteExperiment\x12\x36.google.cloud.dialogflow.cx.v3.DeleteExperimentRequest\x1a\x16.google.protobuf.Empty\"V\xda\x41\x04name\x82\xd3\xe4\x93\x02I*G/v3/{name=projects/*/locations/*/agents/*/environments/*/experiments/*}\x12\xd4\x01\n\x0fStartExperiment\x12\x35.google.cloud.dialogflow.cx.v3.StartExperimentRequest\x1a).google.cloud.dialogflow.cx.v3.Experiment\"_\xda\x41\x04name\x82\xd3\xe4\x93\x02R\"M/v3/{name=projects/*/locations/*/agents/*/environments/*/experiments/*}:start:\x01*\x12\xd1\x01\n\x0eStopExperiment\x12\x34.google.cloud.dialogflow.cx.v3.StopExperimentRequest\x1a).google.cloud.dialogflow.cx.v3.Experiment\"^\xda\x41\x04name\x82\xd3\xe4\x93\x02Q\"L/v3/{name=projects/*/locations/*/agents/*/environments/*/experiments/*}:stop:\x01*\x1ax\xca\x41\x19\x64ialogflow.googleapis.com\xd2\x41Yhttps://www.googleapis.com/auth/cloud-platform,https://www.googleapis.com/auth/dialogflowB\xb2\x01\n!com.google.cloud.dialogflow.cx.v3B\x0f\x45xperimentProtoP\x01Z1cloud.google.com/go/dialogflow/cx/apiv3/cxpb;cxpb\xa2\x02\x02\x44\x46\xaa\x02\x1dGoogle.Cloud.Dialogflow.Cx.V3\xea\x02!Google::Cloud::Dialogflow::CX::V3b\x06proto3"

pool = Google::Protobuf::DescriptorPool.generated_pool

begin
  pool.add_serialized_file(descriptor_data)
rescue TypeError
  # Compatibility code: will be removed in the next major version.
  require 'google/protobuf/descriptor_pb'
  parsed = Google::Protobuf::FileDescriptorProto.decode(descriptor_data)
  parsed.clear_dependency
  serialized = parsed.class.encode(parsed)
  file = pool.add_serialized_file(serialized)
  warn "Warning: Protobuf detected an import path issue while loading generated file #{__FILE__}"
  imports = [
    ["google.protobuf.Timestamp", "google/protobuf/timestamp.proto"],
    ["google.protobuf.Duration", "google/protobuf/duration.proto"],
    ["google.protobuf.FieldMask", "google/protobuf/field_mask.proto"],
  ]
  imports.each do |type_name, expected_filename|
    import_file = pool.lookup(type_name).file_descriptor
    if import_file.name != expected_filename
      warn "- #{file.name} imports #{expected_filename}, but that import was loaded as #{import_file.name}"
    end
  end
  warn "Each proto file must use a consistent fully-qualified name."
  warn "This will become an error in the next major version."
end

module Google
  module Cloud
    module Dialogflow
      module CX
        module V3
          Experiment = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.Experiment").msgclass
          Experiment::Definition = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.Experiment.Definition").msgclass
          Experiment::Result = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.Experiment.Result").msgclass
          Experiment::Result::ConfidenceInterval = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.Experiment.Result.ConfidenceInterval").msgclass
          Experiment::Result::Metric = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.Experiment.Result.Metric").msgclass
          Experiment::Result::VersionMetrics = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.Experiment.Result.VersionMetrics").msgclass
          Experiment::Result::MetricType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.Experiment.Result.MetricType").enummodule
          Experiment::Result::CountType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.Experiment.Result.CountType").enummodule
          Experiment::State = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.Experiment.State").enummodule
          VersionVariants = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.VersionVariants").msgclass
          VersionVariants::Variant = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.VersionVariants.Variant").msgclass
          VariantsHistory = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.VariantsHistory").msgclass
          RolloutConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.RolloutConfig").msgclass
          RolloutConfig::RolloutStep = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.RolloutConfig.RolloutStep").msgclass
          RolloutState = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.RolloutState").msgclass
          ListExperimentsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.ListExperimentsRequest").msgclass
          ListExperimentsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.ListExperimentsResponse").msgclass
          GetExperimentRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.GetExperimentRequest").msgclass
          CreateExperimentRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.CreateExperimentRequest").msgclass
          UpdateExperimentRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.UpdateExperimentRequest").msgclass
          DeleteExperimentRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.DeleteExperimentRequest").msgclass
          StartExperimentRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.StartExperimentRequest").msgclass
          StopExperimentRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.StopExperimentRequest").msgclass
        end
      end
    end
  end
end
