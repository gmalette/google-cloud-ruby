# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/monitoring/v3/common.proto

require 'google/protobuf'

require 'google/api/distribution_pb'
require 'google/protobuf/duration_pb'
require 'google/protobuf/timestamp_pb'


descriptor_data = "\n!google/monitoring/v3/common.proto\x12\x14google.monitoring.v3\x1a\x1dgoogle/api/distribution.proto\x1a\x1egoogle/protobuf/duration.proto\x1a\x1fgoogle/protobuf/timestamp.proto\"\xaa\x01\n\nTypedValue\x12\x14\n\nbool_value\x18\x01 \x01(\x08H\x00\x12\x15\n\x0bint64_value\x18\x02 \x01(\x03H\x00\x12\x16\n\x0c\x64ouble_value\x18\x03 \x01(\x01H\x00\x12\x16\n\x0cstring_value\x18\x04 \x01(\tH\x00\x12\x36\n\x12\x64istribution_value\x18\x05 \x01(\x0b\x32\x18.google.api.DistributionH\x00\x42\x07\n\x05value\"l\n\x0cTimeInterval\x12,\n\x08\x65nd_time\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12.\n\nstart_time\x18\x01 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\"\xad\x07\n\x0b\x41ggregation\x12\x33\n\x10\x61lignment_period\x18\x01 \x01(\x0b\x32\x19.google.protobuf.Duration\x12\x45\n\x12per_series_aligner\x18\x02 \x01(\x0e\x32).google.monitoring.v3.Aggregation.Aligner\x12G\n\x14\x63ross_series_reducer\x18\x04 \x01(\x0e\x32).google.monitoring.v3.Aggregation.Reducer\x12\x17\n\x0fgroup_by_fields\x18\x05 \x03(\t\"\x8b\x03\n\x07\x41ligner\x12\x0e\n\nALIGN_NONE\x10\x00\x12\x0f\n\x0b\x41LIGN_DELTA\x10\x01\x12\x0e\n\nALIGN_RATE\x10\x02\x12\x15\n\x11\x41LIGN_INTERPOLATE\x10\x03\x12\x14\n\x10\x41LIGN_NEXT_OLDER\x10\x04\x12\r\n\tALIGN_MIN\x10\n\x12\r\n\tALIGN_MAX\x10\x0b\x12\x0e\n\nALIGN_MEAN\x10\x0c\x12\x0f\n\x0b\x41LIGN_COUNT\x10\r\x12\r\n\tALIGN_SUM\x10\x0e\x12\x10\n\x0c\x41LIGN_STDDEV\x10\x0f\x12\x14\n\x10\x41LIGN_COUNT_TRUE\x10\x10\x12\x15\n\x11\x41LIGN_COUNT_FALSE\x10\x18\x12\x17\n\x13\x41LIGN_FRACTION_TRUE\x10\x11\x12\x17\n\x13\x41LIGN_PERCENTILE_99\x10\x12\x12\x17\n\x13\x41LIGN_PERCENTILE_95\x10\x13\x12\x17\n\x13\x41LIGN_PERCENTILE_50\x10\x14\x12\x17\n\x13\x41LIGN_PERCENTILE_05\x10\x15\x12\x18\n\x14\x41LIGN_PERCENT_CHANGE\x10\x17\"\xb1\x02\n\x07Reducer\x12\x0f\n\x0bREDUCE_NONE\x10\x00\x12\x0f\n\x0bREDUCE_MEAN\x10\x01\x12\x0e\n\nREDUCE_MIN\x10\x02\x12\x0e\n\nREDUCE_MAX\x10\x03\x12\x0e\n\nREDUCE_SUM\x10\x04\x12\x11\n\rREDUCE_STDDEV\x10\x05\x12\x10\n\x0cREDUCE_COUNT\x10\x06\x12\x15\n\x11REDUCE_COUNT_TRUE\x10\x07\x12\x16\n\x12REDUCE_COUNT_FALSE\x10\x0f\x12\x18\n\x14REDUCE_FRACTION_TRUE\x10\x08\x12\x18\n\x14REDUCE_PERCENTILE_99\x10\t\x12\x18\n\x14REDUCE_PERCENTILE_95\x10\n\x12\x18\n\x14REDUCE_PERCENTILE_50\x10\x0b\x12\x18\n\x14REDUCE_PERCENTILE_05\x10\x0c*\x9e\x01\n\x0e\x43omparisonType\x12\x1a\n\x16\x43OMPARISON_UNSPECIFIED\x10\x00\x12\x11\n\rCOMPARISON_GT\x10\x01\x12\x11\n\rCOMPARISON_GE\x10\x02\x12\x11\n\rCOMPARISON_LT\x10\x03\x12\x11\n\rCOMPARISON_LE\x10\x04\x12\x11\n\rCOMPARISON_EQ\x10\x05\x12\x11\n\rCOMPARISON_NE\x10\x06*a\n\x0bServiceTier\x12\x1c\n\x18SERVICE_TIER_UNSPECIFIED\x10\x00\x12\x16\n\x12SERVICE_TIER_BASIC\x10\x01\x12\x18\n\x14SERVICE_TIER_PREMIUM\x10\x02\x1a\x02\x18\x01\x42\xcd\x01\n\x18\x63om.google.monitoring.v3B\x0b\x43ommonProtoP\x01ZAcloud.google.com/go/monitoring/apiv3/v2/monitoringpb;monitoringpb\xa2\x02\x04GMON\xaa\x02\x1aGoogle.Cloud.Monitoring.V3\xca\x02\x1aGoogle\\Cloud\\Monitoring\\V3\xea\x02\x1dGoogle::Cloud::Monitoring::V3b\x06proto3"

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
    ["google.api.Distribution", "google/api/distribution.proto"],
    ["google.protobuf.Timestamp", "google/protobuf/timestamp.proto"],
    ["google.protobuf.Duration", "google/protobuf/duration.proto"],
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
    module Monitoring
      module V3
        TypedValue = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.monitoring.v3.TypedValue").msgclass
        TimeInterval = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.monitoring.v3.TimeInterval").msgclass
        Aggregation = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.monitoring.v3.Aggregation").msgclass
        Aggregation::Aligner = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.monitoring.v3.Aggregation.Aligner").enummodule
        Aggregation::Reducer = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.monitoring.v3.Aggregation.Reducer").enummodule
        ComparisonType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.monitoring.v3.ComparisonType").enummodule
        ServiceTier = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.monitoring.v3.ServiceTier").enummodule
      end
    end
  end
end
