# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/networkmanagement/v1/connectivity_test.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/cloud/networkmanagement/v1/trace_pb'
require 'google/protobuf/timestamp_pb'
require 'google/rpc/status_pb'


descriptor_data = "\n9google/cloud/networkmanagement/v1/connectivity_test.proto\x12!google.cloud.networkmanagement.v1\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a-google/cloud/networkmanagement/v1/trace.proto\x1a\x1fgoogle/protobuf/timestamp.proto\x1a\x17google/rpc/status.proto\"\xb8\x06\n\x10\x43onnectivityTest\x12\x11\n\x04name\x18\x01 \x01(\tB\x03\xe0\x41\x08\x12\x13\n\x0b\x64\x65scription\x18\x02 \x01(\t\x12@\n\x06source\x18\x03 \x01(\x0b\x32+.google.cloud.networkmanagement.v1.EndpointB\x03\xe0\x41\x02\x12\x45\n\x0b\x64\x65stination\x18\x04 \x01(\x0b\x32+.google.cloud.networkmanagement.v1.EndpointB\x03\xe0\x41\x02\x12\x10\n\x08protocol\x18\x05 \x01(\t\x12\x18\n\x10related_projects\x18\x06 \x03(\t\x12\x19\n\x0c\x64isplay_name\x18\x07 \x01(\tB\x03\xe0\x41\x03\x12O\n\x06labels\x18\x08 \x03(\x0b\x32?.google.cloud.networkmanagement.v1.ConnectivityTest.LabelsEntry\x12\x34\n\x0b\x63reate_time\x18\n \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x34\n\x0bupdate_time\x18\x0b \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12Y\n\x14reachability_details\x18\x0c \x01(\x0b\x32\x36.google.cloud.networkmanagement.v1.ReachabilityDetailsB\x03\xe0\x41\x03\x12O\n\x0fprobing_details\x18\x0e \x01(\x0b\x32\x31.google.cloud.networkmanagement.v1.ProbingDetailsB\x03\xe0\x41\x03\x12\x1e\n\x16\x62ypass_firewall_checks\x18\x11 \x01(\x08\x1a-\n\x0bLabelsEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\t:\x02\x38\x01:t\xea\x41q\n1networkmanagement.googleapis.com/ConnectivityTest\x12<projects/{project}/locations/global/connectivityTests/{test}\"\xc9\t\n\x08\x45ndpoint\x12\x12\n\nip_address\x18\x01 \x01(\t\x12\x0c\n\x04port\x18\x02 \x01(\x05\x12\x10\n\x08instance\x18\x03 \x01(\t\x12\x17\n\x0f\x66orwarding_rule\x18\r \x01(\t\x12j\n\x16\x66orwarding_rule_target\x18\x0e \x01(\x0e\x32@.google.cloud.networkmanagement.v1.Endpoint.ForwardingRuleTargetB\x03\xe0\x41\x03H\x00\x88\x01\x01\x12\"\n\x10load_balancer_id\x18\x0f \x01(\tB\x03\xe0\x41\x03H\x01\x88\x01\x01\x12Y\n\x12load_balancer_type\x18\x10 \x01(\x0e\x32\x33.google.cloud.networkmanagement.v1.LoadBalancerTypeB\x03\xe0\x41\x03H\x02\x88\x01\x01\x12\x1a\n\x12gke_master_cluster\x18\x07 \x01(\t\x12\x1a\n\x12\x63loud_sql_instance\x18\x08 \x01(\t\x12\x16\n\x0eredis_instance\x18\x11 \x01(\t\x12\x15\n\rredis_cluster\x18\x12 \x01(\t\x12Y\n\x0e\x63loud_function\x18\n \x01(\x0b\x32\x41.google.cloud.networkmanagement.v1.Endpoint.CloudFunctionEndpoint\x12`\n\x12\x61pp_engine_version\x18\x0b \x01(\x0b\x32\x44.google.cloud.networkmanagement.v1.Endpoint.AppEngineVersionEndpoint\x12`\n\x12\x63loud_run_revision\x18\x0c \x01(\x0b\x32\x44.google.cloud.networkmanagement.v1.Endpoint.CloudRunRevisionEndpoint\x12\x0f\n\x07network\x18\x04 \x01(\t\x12M\n\x0cnetwork_type\x18\x05 \x01(\x0e\x32\x37.google.cloud.networkmanagement.v1.Endpoint.NetworkType\x12\x12\n\nproject_id\x18\x06 \x01(\t\x1a$\n\x15\x43loudFunctionEndpoint\x12\x0b\n\x03uri\x18\x01 \x01(\t\x1a\'\n\x18\x41ppEngineVersionEndpoint\x12\x0b\n\x03uri\x18\x01 \x01(\t\x1a\'\n\x18\x43loudRunRevisionEndpoint\x12\x0b\n\x03uri\x18\x01 \x01(\t\"Q\n\x0bNetworkType\x12\x1c\n\x18NETWORK_TYPE_UNSPECIFIED\x10\x00\x12\x0f\n\x0bGCP_NETWORK\x10\x01\x12\x13\n\x0fNON_GCP_NETWORK\x10\x02\"y\n\x14\x46orwardingRuleTarget\x12&\n\"FORWARDING_RULE_TARGET_UNSPECIFIED\x10\x00\x12\x0c\n\x08INSTANCE\x10\x01\x12\x11\n\rLOAD_BALANCER\x10\x02\x12\x0f\n\x0bVPN_GATEWAY\x10\x03\x12\x07\n\x03PSC\x10\x04\x42\x19\n\x17_forwarding_rule_targetB\x13\n\x11_load_balancer_idB\x15\n\x13_load_balancer_type\"\xd5\x02\n\x13ReachabilityDetails\x12M\n\x06result\x18\x01 \x01(\x0e\x32=.google.cloud.networkmanagement.v1.ReachabilityDetails.Result\x12/\n\x0bverify_time\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12!\n\x05\x65rror\x18\x03 \x01(\x0b\x32\x12.google.rpc.Status\x12\x38\n\x06traces\x18\x05 \x03(\x0b\x32(.google.cloud.networkmanagement.v1.Trace\"a\n\x06Result\x12\x16\n\x12RESULT_UNSPECIFIED\x10\x00\x12\r\n\tREACHABLE\x10\x01\x12\x0f\n\x0bUNREACHABLE\x10\x02\x12\r\n\tAMBIGUOUS\x10\x04\x12\x10\n\x0cUNDETERMINED\x10\x05\"<\n\x11LatencyPercentile\x12\x0f\n\x07percent\x18\x01 \x01(\x05\x12\x16\n\x0elatency_micros\x18\x02 \x01(\x03\"h\n\x13LatencyDistribution\x12Q\n\x13latency_percentiles\x18\x01 \x03(\x0b\x32\x34.google.cloud.networkmanagement.v1.LatencyPercentile\"\xde\x06\n\x0eProbingDetails\x12O\n\x06result\x18\x01 \x01(\x0e\x32?.google.cloud.networkmanagement.v1.ProbingDetails.ProbingResult\x12/\n\x0bverify_time\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12!\n\x05\x65rror\x18\x03 \x01(\x0b\x32\x12.google.rpc.Status\x12X\n\x0b\x61\x62ort_cause\x18\x04 \x01(\x0e\x32\x43.google.cloud.networkmanagement.v1.ProbingDetails.ProbingAbortCause\x12\x18\n\x10sent_probe_count\x18\x05 \x01(\x05\x12\x1e\n\x16successful_probe_count\x18\x06 \x01(\x05\x12\x46\n\rendpoint_info\x18\x07 \x01(\x0b\x32/.google.cloud.networkmanagement.v1.EndpointInfo\x12O\n\x0fprobing_latency\x18\x08 \x01(\x0b\x32\x36.google.cloud.networkmanagement.v1.LatencyDistribution\x12\x63\n\x1b\x64\x65stination_egress_location\x18\t \x01(\x0b\x32>.google.cloud.networkmanagement.v1.ProbingDetails.EdgeLocation\x1a)\n\x0c\x45\x64geLocation\x12\x19\n\x11metropolitan_area\x18\x01 \x01(\t\"\x80\x01\n\rProbingResult\x12\x1e\n\x1aPROBING_RESULT_UNSPECIFIED\x10\x00\x12\r\n\tREACHABLE\x10\x01\x12\x0f\n\x0bUNREACHABLE\x10\x02\x12\x1d\n\x19REACHABILITY_INCONSISTENT\x10\x03\x12\x10\n\x0cUNDETERMINED\x10\x04\"g\n\x11ProbingAbortCause\x12#\n\x1fPROBING_ABORT_CAUSE_UNSPECIFIED\x10\x00\x12\x15\n\x11PERMISSION_DENIED\x10\x01\x12\x16\n\x12NO_SOURCE_LOCATION\x10\x02\x42\xfd\x01\n%com.google.cloud.networkmanagement.v1B\x0eTestOuterClassP\x01ZScloud.google.com/go/networkmanagement/apiv1/networkmanagementpb;networkmanagementpb\xaa\x02!Google.Cloud.NetworkManagement.V1\xca\x02!Google\\Cloud\\NetworkManagement\\V1\xea\x02$Google::Cloud::NetworkManagement::V1b\x06proto3"

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
    ["google.rpc.Status", "google/rpc/status.proto"],
    ["google.cloud.networkmanagement.v1.Trace", "google/cloud/networkmanagement/v1/trace.proto"],
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
    module NetworkManagement
      module V1
        ConnectivityTest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.networkmanagement.v1.ConnectivityTest").msgclass
        Endpoint = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.networkmanagement.v1.Endpoint").msgclass
        Endpoint::CloudFunctionEndpoint = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.networkmanagement.v1.Endpoint.CloudFunctionEndpoint").msgclass
        Endpoint::AppEngineVersionEndpoint = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.networkmanagement.v1.Endpoint.AppEngineVersionEndpoint").msgclass
        Endpoint::CloudRunRevisionEndpoint = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.networkmanagement.v1.Endpoint.CloudRunRevisionEndpoint").msgclass
        Endpoint::NetworkType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.networkmanagement.v1.Endpoint.NetworkType").enummodule
        Endpoint::ForwardingRuleTarget = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.networkmanagement.v1.Endpoint.ForwardingRuleTarget").enummodule
        ReachabilityDetails = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.networkmanagement.v1.ReachabilityDetails").msgclass
        ReachabilityDetails::Result = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.networkmanagement.v1.ReachabilityDetails.Result").enummodule
        LatencyPercentile = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.networkmanagement.v1.LatencyPercentile").msgclass
        LatencyDistribution = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.networkmanagement.v1.LatencyDistribution").msgclass
        ProbingDetails = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.networkmanagement.v1.ProbingDetails").msgclass
        ProbingDetails::EdgeLocation = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.networkmanagement.v1.ProbingDetails.EdgeLocation").msgclass
        ProbingDetails::ProbingResult = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.networkmanagement.v1.ProbingDetails.ProbingResult").enummodule
        ProbingDetails::ProbingAbortCause = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.networkmanagement.v1.ProbingDetails.ProbingAbortCause").enummodule
      end
    end
  end
end
