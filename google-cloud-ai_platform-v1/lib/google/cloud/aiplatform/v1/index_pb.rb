# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/aiplatform/v1/index.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/cloud/aiplatform/v1/deployed_index_ref_pb'
require 'google/protobuf/struct_pb'
require 'google/protobuf/timestamp_pb'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/cloud/aiplatform/v1/index.proto", :syntax => :proto3) do
    add_message "google.cloud.aiplatform.v1.Index" do
      optional :name, :string, 1
      optional :display_name, :string, 2
      optional :description, :string, 3
      optional :metadata_schema_uri, :string, 4
      optional :metadata, :message, 6, "google.protobuf.Value"
      repeated :deployed_indexes, :message, 7, "google.cloud.aiplatform.v1.DeployedIndexRef"
      optional :etag, :string, 8
      map :labels, :string, :string, 9
      optional :create_time, :message, 10, "google.protobuf.Timestamp"
      optional :update_time, :message, 11, "google.protobuf.Timestamp"
      optional :index_stats, :message, 14, "google.cloud.aiplatform.v1.IndexStats"
      optional :index_update_method, :enum, 16, "google.cloud.aiplatform.v1.Index.IndexUpdateMethod"
    end
    add_enum "google.cloud.aiplatform.v1.Index.IndexUpdateMethod" do
      value :INDEX_UPDATE_METHOD_UNSPECIFIED, 0
      value :BATCH_UPDATE, 1
      value :STREAM_UPDATE, 2
    end
    add_message "google.cloud.aiplatform.v1.IndexDatapoint" do
      optional :datapoint_id, :string, 1
      repeated :feature_vector, :float, 2
      repeated :restricts, :message, 4, "google.cloud.aiplatform.v1.IndexDatapoint.Restriction"
      optional :crowding_tag, :message, 5, "google.cloud.aiplatform.v1.IndexDatapoint.CrowdingTag"
    end
    add_message "google.cloud.aiplatform.v1.IndexDatapoint.Restriction" do
      optional :namespace, :string, 1
      repeated :allow_list, :string, 2
      repeated :deny_list, :string, 3
    end
    add_message "google.cloud.aiplatform.v1.IndexDatapoint.CrowdingTag" do
      optional :crowding_attribute, :string, 1
    end
    add_message "google.cloud.aiplatform.v1.IndexStats" do
      optional :vectors_count, :int64, 1
      optional :shards_count, :int32, 2
    end
  end
end

module Google
  module Cloud
    module AIPlatform
      module V1
        Index = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.Index").msgclass
        Index::IndexUpdateMethod = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.Index.IndexUpdateMethod").enummodule
        IndexDatapoint = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.IndexDatapoint").msgclass
        IndexDatapoint::Restriction = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.IndexDatapoint.Restriction").msgclass
        IndexDatapoint::CrowdingTag = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.IndexDatapoint.CrowdingTag").msgclass
        IndexStats = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.IndexStats").msgclass
      end
    end
  end
end
