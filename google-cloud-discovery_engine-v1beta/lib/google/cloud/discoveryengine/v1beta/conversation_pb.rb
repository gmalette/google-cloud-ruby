# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/discoveryengine/v1beta/conversation.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/protobuf/timestamp_pb'


descriptor_data = "\n6google/cloud/discoveryengine/v1beta/conversation.proto\x12#google.cloud.discoveryengine.v1beta\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a\x1fgoogle/protobuf/timestamp.proto\"\xfe\x04\n\x0c\x43onversation\x12\x11\n\x04name\x18\x01 \x01(\tB\x03\xe0\x41\x05\x12\x46\n\x05state\x18\x02 \x01(\x0e\x32\x37.google.cloud.discoveryengine.v1beta.Conversation.State\x12\x16\n\x0euser_pseudo_id\x18\x03 \x01(\t\x12J\n\x08messages\x18\x04 \x03(\x0b\x32\x38.google.cloud.discoveryengine.v1beta.ConversationMessage\x12\x33\n\nstart_time\x18\x05 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x31\n\x08\x65nd_time\x18\x06 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\">\n\x05State\x12\x15\n\x11STATE_UNSPECIFIED\x10\x00\x12\x0f\n\x0bIN_PROGRESS\x10\x01\x12\r\n\tCOMPLETED\x10\x02:\x86\x02\xea\x41\x82\x02\n+discoveryengine.googleapis.com/Conversation\x12\\projects/{project}/locations/{location}/dataStores/{data_store}/conversations/{conversation}\x12uprojects/{project}/locations/{location}/collections/{collection}/dataStores/{data_store}/conversations/{conversation}\"\xab\x01\n\x05Reply\x12\r\n\x05reply\x18\x01 \x01(\t\x12H\n\nreferences\x18\x02 \x03(\x0b\x32\x34.google.cloud.discoveryengine.v1beta.Reply.Reference\x1aI\n\tReference\x12\x0b\n\x03uri\x18\x01 \x01(\t\x12\x13\n\x0b\x61nchor_text\x18\x02 \x01(\t\x12\r\n\x05start\x18\x03 \x01(\x05\x12\x0b\n\x03\x65nd\x18\x04 \x01(\x05\"I\n\x13\x43onversationContext\x12\x19\n\x11\x63ontext_documents\x18\x01 \x03(\t\x12\x17\n\x0f\x61\x63tive_document\x18\x02 \x01(\t\"e\n\tTextInput\x12\r\n\x05input\x18\x01 \x01(\t\x12I\n\x07\x63ontext\x18\x02 \x01(\x0b\x32\x38.google.cloud.discoveryengine.v1beta.ConversationContext\"\xd9\x01\n\x13\x43onversationMessage\x12\x44\n\nuser_input\x18\x01 \x01(\x0b\x32..google.cloud.discoveryengine.v1beta.TextInputH\x00\x12;\n\x05reply\x18\x02 \x01(\x0b\x32*.google.cloud.discoveryengine.v1beta.ReplyH\x00\x12\x34\n\x0b\x63reate_time\x18\x03 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x42\t\n\x07messageB\x98\x02\n\'com.google.cloud.discoveryengine.v1betaB\x11\x43onversationProtoP\x01ZQcloud.google.com/go/discoveryengine/apiv1beta/discoveryenginepb;discoveryenginepb\xa2\x02\x0f\x44ISCOVERYENGINE\xaa\x02#Google.Cloud.DiscoveryEngine.V1Beta\xca\x02#Google\\Cloud\\DiscoveryEngine\\V1beta\xea\x02&Google::Cloud::DiscoveryEngine::V1betab\x06proto3"

pool = Google::Protobuf::DescriptorPool.generated_pool

begin
  pool.add_serialized_file(descriptor_data)
rescue TypeError => e
  # Compatibility code: will be removed in the next major version.
  require 'google/protobuf/descriptor_pb'
  parsed = Google::Protobuf::FileDescriptorProto.decode(descriptor_data)
  parsed.clear_dependency
  serialized = parsed.class.encode(parsed)
  file = pool.add_serialized_file(serialized)
  warn "Warning: Protobuf detected an import path issue while loading generated file #{__FILE__}"
  imports = [
    ["google.protobuf.Timestamp", "google/protobuf/timestamp.proto"],
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
    module DiscoveryEngine
      module V1beta
        Conversation = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.discoveryengine.v1beta.Conversation").msgclass
        Conversation::State = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.discoveryengine.v1beta.Conversation.State").enummodule
        Reply = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.discoveryengine.v1beta.Reply").msgclass
        Reply::Reference = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.discoveryengine.v1beta.Reply.Reference").msgclass
        ConversationContext = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.discoveryengine.v1beta.ConversationContext").msgclass
        TextInput = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.discoveryengine.v1beta.TextInput").msgclass
        ConversationMessage = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.discoveryengine.v1beta.ConversationMessage").msgclass
      end
    end
  end
end
