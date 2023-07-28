# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/discoveryengine/v1beta/conversational_search_service.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/cloud/discoveryengine/v1beta/conversation_pb'
require 'google/cloud/discoveryengine/v1beta/search_service_pb'
require 'google/protobuf/empty_pb'
require 'google/protobuf/field_mask_pb'


descriptor_data = "\nGgoogle/cloud/discoveryengine/v1beta/conversational_search_service.proto\x12#google.cloud.discoveryengine.v1beta\x1a\x1cgoogle/api/annotations.proto\x1a\x17google/api/client.proto\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a\x36google/cloud/discoveryengine/v1beta/conversation.proto\x1a\x38google/cloud/discoveryengine/v1beta/search_service.proto\x1a\x1bgoogle/protobuf/empty.proto\x1a google/protobuf/field_mask.proto\"\xcd\x02\n\x1b\x43onverseConversationRequest\x12\x41\n\x04name\x18\x01 \x01(\tB3\xe0\x41\x02\xfa\x41-\n+discoveryengine.googleapis.com/Conversation\x12\x42\n\x05query\x18\x02 \x01(\x0b\x32..google.cloud.discoveryengine.v1beta.TextInputB\x03\xe0\x41\x02\x12I\n\x0eserving_config\x18\x03 \x01(\tB1\xfa\x41.\n,discoveryengine.googleapis.com/ServingConfig\x12G\n\x0c\x63onversation\x18\x05 \x01(\x0b\x32\x31.google.cloud.discoveryengine.v1beta.Conversation\x12\x13\n\x0bsafe_search\x18\x06 \x01(\x08\"\xfc\x01\n\x1c\x43onverseConversationResponse\x12\x39\n\x05reply\x18\x01 \x01(\x0b\x32*.google.cloud.discoveryengine.v1beta.Reply\x12G\n\x0c\x63onversation\x18\x02 \x01(\x0b\x32\x31.google.cloud.discoveryengine.v1beta.Conversation\x12X\n\x0esearch_results\x18\x03 \x03(\x0b\x32@.google.cloud.discoveryengine.v1beta.SearchResponse.SearchResult\"\xab\x01\n\x19\x43reateConversationRequest\x12@\n\x06parent\x18\x01 \x01(\tB0\xe0\x41\x02\xfa\x41*\n(discoveryengine.googleapis.com/DataStore\x12L\n\x0c\x63onversation\x18\x02 \x01(\x0b\x32\x31.google.cloud.discoveryengine.v1beta.ConversationB\x03\xe0\x41\x02\"\x9a\x01\n\x19UpdateConversationRequest\x12L\n\x0c\x63onversation\x18\x01 \x01(\x0b\x32\x31.google.cloud.discoveryengine.v1beta.ConversationB\x03\xe0\x41\x02\x12/\n\x0bupdate_mask\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.FieldMask\"^\n\x19\x44\x65leteConversationRequest\x12\x41\n\x04name\x18\x01 \x01(\tB3\xe0\x41\x02\xfa\x41-\n+discoveryengine.googleapis.com/Conversation\"[\n\x16GetConversationRequest\x12\x41\n\x04name\x18\x01 \x01(\tB3\xe0\x41\x02\xfa\x41-\n+discoveryengine.googleapis.com/Conversation\"\xa5\x01\n\x18ListConversationsRequest\x12@\n\x06parent\x18\x01 \x01(\tB0\xe0\x41\x02\xfa\x41*\n(discoveryengine.googleapis.com/DataStore\x12\x11\n\tpage_size\x18\x02 \x01(\x05\x12\x12\n\npage_token\x18\x03 \x01(\t\x12\x0e\n\x06\x66ilter\x18\x04 \x01(\t\x12\x10\n\x08order_by\x18\x05 \x01(\t\"~\n\x19ListConversationsResponse\x12H\n\rconversations\x18\x01 \x03(\x0b\x32\x31.google.cloud.discoveryengine.v1beta.Conversation\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t2\xb6\x10\n\x1b\x43onversationalSearchService\x12\xe2\x02\n\x14\x43onverseConversation\x12@.google.cloud.discoveryengine.v1beta.ConverseConversationRequest\x1a\x41.google.cloud.discoveryengine.v1beta.ConverseConversationResponse\"\xc4\x01\x82\xd3\xe4\x93\x02\xb0\x01\"K/v1beta/{name=projects/*/locations/*/dataStores/*/conversations/*}:converse:\x01*Z^\"Y/v1beta/{name=projects/*/locations/*/collections/*/dataStores/*/conversations/*}:converse:\x01*\xda\x41\nname,query\x12\xdb\x02\n\x12\x43reateConversation\x12>.google.cloud.discoveryengine.v1beta.CreateConversationRequest\x1a\x31.google.cloud.discoveryengine.v1beta.Conversation\"\xd1\x01\x82\xd3\xe4\x93\x02\xb4\x01\"B/v1beta/{parent=projects/*/locations/*/dataStores/*}/conversations:\x0c\x63onversationZ`\"P/v1beta/{parent=projects/*/locations/*/collections/*/dataStores/*}/conversations:\x0c\x63onversation\xda\x41\x13parent,conversation\x12\x95\x02\n\x12\x44\x65leteConversation\x12>.google.cloud.discoveryengine.v1beta.DeleteConversationRequest\x1a\x16.google.protobuf.Empty\"\xa6\x01\x82\xd3\xe4\x93\x02\x98\x01*B/v1beta/{name=projects/*/locations/*/dataStores/*/conversations/*}ZR*P/v1beta/{name=projects/*/locations/*/collections/*/dataStores/*/conversations/*}\xda\x41\x04name\x12\xfa\x02\n\x12UpdateConversation\x12>.google.cloud.discoveryengine.v1beta.UpdateConversationRequest\x1a\x31.google.cloud.discoveryengine.v1beta.Conversation\"\xf0\x01\x82\xd3\xe4\x93\x02\xce\x01\x32O/v1beta/{conversation.name=projects/*/locations/*/dataStores/*/conversations/*}:\x0c\x63onversationZm2]/v1beta/{conversation.name=projects/*/locations/*/collections/*/dataStores/*/conversations/*}:\x0c\x63onversation\xda\x41\x18\x63onversation,update_mask\x12\xaa\x02\n\x0fGetConversation\x12;.google.cloud.discoveryengine.v1beta.GetConversationRequest\x1a\x31.google.cloud.discoveryengine.v1beta.Conversation\"\xa6\x01\x82\xd3\xe4\x93\x02\x98\x01\x12\x42/v1beta/{name=projects/*/locations/*/dataStores/*/conversations/*}ZR\x12P/v1beta/{name=projects/*/locations/*/collections/*/dataStores/*/conversations/*}\xda\x41\x04name\x12\xbd\x02\n\x11ListConversations\x12=.google.cloud.discoveryengine.v1beta.ListConversationsRequest\x1a>.google.cloud.discoveryengine.v1beta.ListConversationsResponse\"\xa8\x01\x82\xd3\xe4\x93\x02\x98\x01\x12\x42/v1beta/{parent=projects/*/locations/*/dataStores/*}/conversationsZR\x12P/v1beta/{parent=projects/*/locations/*/collections/*/dataStores/*}/conversations\xda\x41\x06parent\x1aR\xca\x41\x1e\x64iscoveryengine.googleapis.com\xd2\x41.https://www.googleapis.com/auth/cloud-platformB\xa7\x02\n\'com.google.cloud.discoveryengine.v1betaB ConversationalSearchServiceProtoP\x01ZQcloud.google.com/go/discoveryengine/apiv1beta/discoveryenginepb;discoveryenginepb\xa2\x02\x0f\x44ISCOVERYENGINE\xaa\x02#Google.Cloud.DiscoveryEngine.V1Beta\xca\x02#Google\\Cloud\\DiscoveryEngine\\V1beta\xea\x02&Google::Cloud::DiscoveryEngine::V1betab\x06proto3"

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
    ["google.cloud.discoveryengine.v1beta.TextInput", "google/cloud/discoveryengine/v1beta/conversation.proto"],
    ["google.cloud.discoveryengine.v1beta.SearchResponse.SearchResult", "google/cloud/discoveryengine/v1beta/search_service.proto"],
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
    module DiscoveryEngine
      module V1beta
        ConverseConversationRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.discoveryengine.v1beta.ConverseConversationRequest").msgclass
        ConverseConversationResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.discoveryengine.v1beta.ConverseConversationResponse").msgclass
        CreateConversationRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.discoveryengine.v1beta.CreateConversationRequest").msgclass
        UpdateConversationRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.discoveryengine.v1beta.UpdateConversationRequest").msgclass
        DeleteConversationRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.discoveryengine.v1beta.DeleteConversationRequest").msgclass
        GetConversationRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.discoveryengine.v1beta.GetConversationRequest").msgclass
        ListConversationsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.discoveryengine.v1beta.ListConversationsRequest").msgclass
        ListConversationsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.discoveryengine.v1beta.ListConversationsResponse").msgclass
      end
    end
  end
end
