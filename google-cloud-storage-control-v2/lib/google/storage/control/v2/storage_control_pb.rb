# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/storage/control/v2/storage_control.proto

require 'google/protobuf'

require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/field_info_pb'
require 'google/api/resource_pb'
require 'google/api/routing_pb'
require 'google/longrunning/operations_pb'
require 'google/protobuf/empty_pb'
require 'google/protobuf/timestamp_pb'


descriptor_data = "\n/google/storage/control/v2/storage_control.proto\x12\x19google.storage.control.v2\x1a\x17google/api/client.proto\x1a\x1fgoogle/api/field_behavior.proto\x1a\x1bgoogle/api/field_info.proto\x1a\x19google/api/resource.proto\x1a\x18google/api/routing.proto\x1a#google/longrunning/operations.proto\x1a\x1bgoogle/protobuf/empty.proto\x1a\x1fgoogle/protobuf/timestamp.proto\"+\n\x11PendingRenameInfo\x12\x16\n\toperation\x18\x01 \x01(\tB\x03\xe0\x41\x03\"\xe2\x02\n\x06\x46older\x12\x11\n\x04name\x18\x01 \x01(\tB\x03\xe0\x41\x08\x12\x1b\n\x0emetageneration\x18\x03 \x01(\x03\x42\x03\xe0\x41\x03\x12\x34\n\x0b\x63reate_time\x18\x04 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x34\n\x0bupdate_time\x18\x05 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12N\n\x13pending_rename_info\x18\x07 \x01(\x0b\x32,.google.storage.control.v2.PendingRenameInfoB\x03\xe0\x41\x03:l\xea\x41i\n\x1dstorage.googleapis.com/Folder\x12\x37projects/{project}/buckets/{bucket}/folders/{folder=**}*\x07\x66olders2\x06\x66older\"\xf4\x01\n\x10GetFolderRequest\x12\x33\n\x04name\x18\x06 \x01(\tB%\xe0\x41\x02\xfa\x41\x1f\n\x1dstorage.googleapis.com/Folder\x12$\n\x17if_metageneration_match\x18\x03 \x01(\x03H\x00\x88\x01\x01\x12(\n\x1bif_metageneration_not_match\x18\x04 \x01(\x03H\x01\x88\x01\x01\x12\x1f\n\nrequest_id\x18\x05 \x01(\tB\x0b\xe0\x41\x01\xe2\x8c\xcf\xd7\x08\x02\x08\x01\x42\x1a\n\x18_if_metageneration_matchB\x1e\n\x1c_if_metageneration_not_match\"\xd5\x01\n\x13\x43reateFolderRequest\x12\x35\n\x06parent\x18\x01 \x01(\tB%\xe0\x41\x02\xfa\x41\x1f\x12\x1dstorage.googleapis.com/Folder\x12\x36\n\x06\x66older\x18\x02 \x01(\x0b\x32!.google.storage.control.v2.FolderB\x03\xe0\x41\x02\x12\x16\n\tfolder_id\x18\x03 \x01(\tB\x03\xe0\x41\x02\x12\x16\n\trecursive\x18\x04 \x01(\x08\x42\x03\xe0\x41\x01\x12\x1f\n\nrequest_id\x18\x05 \x01(\tB\x0b\xe0\x41\x01\xe2\x8c\xcf\xd7\x08\x02\x08\x01\"\xf7\x01\n\x13\x44\x65leteFolderRequest\x12\x33\n\x04name\x18\x06 \x01(\tB%\xe0\x41\x02\xfa\x41\x1f\n\x1dstorage.googleapis.com/Folder\x12$\n\x17if_metageneration_match\x18\x03 \x01(\x03H\x00\x88\x01\x01\x12(\n\x1bif_metageneration_not_match\x18\x04 \x01(\x03H\x01\x88\x01\x01\x12\x1f\n\nrequest_id\x18\x05 \x01(\tB\x0b\xe0\x41\x01\xe2\x8c\xcf\xd7\x08\x02\x08\x01\x42\x1a\n\x18_if_metageneration_matchB\x1e\n\x1c_if_metageneration_not_match\"\x8c\x02\n\x12ListFoldersRequest\x12\x35\n\x06parent\x18\x01 \x01(\tB%\xe0\x41\x02\xfa\x41\x1f\x12\x1dstorage.googleapis.com/Folder\x12\x16\n\tpage_size\x18\x02 \x01(\x05\x42\x03\xe0\x41\x01\x12\x17\n\npage_token\x18\x03 \x01(\tB\x03\xe0\x41\x01\x12\x13\n\x06prefix\x18\x04 \x01(\tB\x03\xe0\x41\x01\x12\x16\n\tdelimiter\x18\x08 \x01(\tB\x03\xe0\x41\x01\x12 \n\x13lexicographic_start\x18\x06 \x01(\tB\x03\xe0\x41\x01\x12\x1e\n\x11lexicographic_end\x18\x07 \x01(\tB\x03\xe0\x41\x01\x12\x1f\n\nrequest_id\x18\t \x01(\tB\x0b\xe0\x41\x01\xe2\x8c\xcf\xd7\x08\x02\x08\x01\"b\n\x13ListFoldersResponse\x12\x32\n\x07\x66olders\x18\x01 \x03(\x0b\x32!.google.storage.control.v2.Folder\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\"\x9b\x02\n\x13RenameFolderRequest\x12\x33\n\x04name\x18\x07 \x01(\tB%\xe0\x41\x02\xfa\x41\x1f\n\x1dstorage.googleapis.com/Folder\x12\"\n\x15\x64\x65stination_folder_id\x18\x08 \x01(\tB\x03\xe0\x41\x02\x12$\n\x17if_metageneration_match\x18\x04 \x01(\x03H\x00\x88\x01\x01\x12(\n\x1bif_metageneration_not_match\x18\x05 \x01(\x03H\x01\x88\x01\x01\x12\x1f\n\nrequest_id\x18\x06 \x01(\tB\x0b\xe0\x41\x01\xe2\x8c\xcf\xd7\x08\x02\x08\x01\x42\x1a\n\x18_if_metageneration_matchB\x1e\n\x1c_if_metageneration_not_match\"\x9a\x02\n\"CommonLongRunningOperationMetadata\x12\x34\n\x0b\x63reate_time\x18\x01 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x31\n\x08\x65nd_time\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x34\n\x0bupdate_time\x18\x03 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x11\n\x04type\x18\x04 \x01(\tB\x03\xe0\x41\x03\x12#\n\x16requested_cancellation\x18\x05 \x01(\x08\x42\x03\xe0\x41\x03\x12\x1d\n\x10progress_percent\x18\x06 \x01(\x05\x42\x03\xe0\x41\x03\"\xa7\x01\n\x14RenameFolderMetadata\x12V\n\x0f\x63ommon_metadata\x18\x01 \x01(\x0b\x32=.google.storage.control.v2.CommonLongRunningOperationMetadata\x12\x18\n\x10source_folder_id\x18\x02 \x01(\t\x12\x1d\n\x15\x64\x65stination_folder_id\x18\x03 \x01(\t\"\xd9\x03\n\rStorageLayout\x12\x11\n\x04name\x18\x01 \x01(\tB\x03\xe0\x41\x03\x12\x15\n\x08location\x18\x02 \x01(\tB\x03\xe0\x41\x03\x12\x1a\n\rlocation_type\x18\x03 \x01(\tB\x03\xe0\x41\x03\x12\x64\n\x17\x63ustom_placement_config\x18\x04 \x01(\x0b\x32>.google.storage.control.v2.StorageLayout.CustomPlacementConfigB\x03\xe0\x41\x03\x12\x63\n\x16hierarchical_namespace\x18\x05 \x01(\x0b\x32>.google.storage.control.v2.StorageLayout.HierarchicalNamespaceB\x03\xe0\x41\x03\x1a/\n\x15\x43ustomPlacementConfig\x12\x16\n\x0e\x64\x61ta_locations\x18\x01 \x03(\t\x1a(\n\x15HierarchicalNamespace\x12\x0f\n\x07\x65nabled\x18\x01 \x01(\x08:\\\xea\x41Y\n$storage.googleapis.com/StorageLayout\x12\x31projects/{project}/buckets/{bucket}/storageLayout\"\x86\x01\n\x17GetStorageLayoutRequest\x12:\n\x04name\x18\x01 \x01(\tB,\xe0\x41\x02\xfa\x41&\n$storage.googleapis.com/StorageLayout\x12\x0e\n\x06prefix\x18\x02 \x01(\t\x12\x1f\n\nrequest_id\x18\x03 \x01(\tB\x0b\xe0\x41\x01\xe2\x8c\xcf\xd7\x08\x02\x08\x01\"\xbe\x02\n\rManagedFolder\x12\x11\n\x04name\x18\x01 \x01(\tB\x03\xe0\x41\x08\x12\x1b\n\x0emetageneration\x18\x03 \x01(\x03\x42\x03\xe0\x41\x03\x12\x34\n\x0b\x63reate_time\x18\x04 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x34\n\x0bupdate_time\x18\x05 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03:\x90\x01\xea\x41\x8c\x01\n$storage.googleapis.com/ManagedFolder\x12\x45projects/{project}/buckets/{bucket}/managedFolders/{managedFolder=**}*\x0emanagedFolders2\rmanagedFolder\"\x82\x02\n\x17GetManagedFolderRequest\x12:\n\x04name\x18\x06 \x01(\tB,\xe0\x41\x02\xfa\x41&\n$storage.googleapis.com/ManagedFolder\x12$\n\x17if_metageneration_match\x18\x03 \x01(\x03H\x00\x88\x01\x01\x12(\n\x1bif_metageneration_not_match\x18\x04 \x01(\x03H\x01\x88\x01\x01\x12\x1f\n\nrequest_id\x18\x05 \x01(\tB\x0b\xe0\x41\x01\xe2\x8c\xcf\xd7\x08\x02\x08\x01\x42\x1a\n\x18_if_metageneration_matchB\x1e\n\x1c_if_metageneration_not_match\"\xe2\x01\n\x1a\x43reateManagedFolderRequest\x12<\n\x06parent\x18\x01 \x01(\tB,\xe0\x41\x02\xfa\x41&\x12$storage.googleapis.com/ManagedFolder\x12\x45\n\x0emanaged_folder\x18\x02 \x01(\x0b\x32(.google.storage.control.v2.ManagedFolderB\x03\xe0\x41\x02\x12\x1e\n\x11managed_folder_id\x18\x03 \x01(\tB\x03\xe0\x41\x02\x12\x1f\n\nrequest_id\x18\x04 \x01(\tB\x0b\xe0\x41\x01\xe2\x8c\xcf\xd7\x08\x02\x08\x01\"\x9e\x02\n\x1a\x44\x65leteManagedFolderRequest\x12:\n\x04name\x18\x07 \x01(\tB,\xe0\x41\x02\xfa\x41&\n$storage.googleapis.com/ManagedFolder\x12$\n\x17if_metageneration_match\x18\x03 \x01(\x03H\x00\x88\x01\x01\x12(\n\x1bif_metageneration_not_match\x18\x04 \x01(\x03H\x01\x88\x01\x01\x12\x17\n\x0f\x61llow_non_empty\x18\x05 \x01(\x08\x12\x1f\n\nrequest_id\x18\x06 \x01(\tB\x0b\xe0\x41\x01\xe2\x8c\xcf\xd7\x08\x02\x08\x01\x42\x1a\n\x18_if_metageneration_matchB\x1e\n\x1c_if_metageneration_not_match\"\xc0\x01\n\x19ListManagedFoldersRequest\x12<\n\x06parent\x18\x01 \x01(\tB,\xe0\x41\x02\xfa\x41&\x12$storage.googleapis.com/ManagedFolder\x12\x16\n\tpage_size\x18\x02 \x01(\x05\x42\x03\xe0\x41\x01\x12\x17\n\npage_token\x18\x03 \x01(\tB\x03\xe0\x41\x01\x12\x13\n\x06prefix\x18\x04 \x01(\tB\x03\xe0\x41\x01\x12\x1f\n\nrequest_id\x18\x05 \x01(\tB\x0b\xe0\x41\x01\xe2\x8c\xcf\xd7\x08\x02\x08\x01\"x\n\x1aListManagedFoldersResponse\x12\x41\n\x0fmanaged_folders\x18\x01 \x03(\x0b\x32(.google.storage.control.v2.ManagedFolder\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t2\xcd\x0f\n\x0eStorageControl\x12\x9a\x01\n\x0c\x43reateFolder\x12..google.storage.control.v2.CreateFolderRequest\x1a!.google.storage.control.v2.Folder\"7\xda\x41\x17parent,folder,folder_id\x8a\xd3\xe4\x93\x02\x17\x12\x15\n\x06parent\x12\x0b{bucket=**}\x12\x8f\x01\n\x0c\x44\x65leteFolder\x12..google.storage.control.v2.DeleteFolderRequest\x1a\x16.google.protobuf.Empty\"7\xda\x41\x04name\x8a\xd3\xe4\x93\x02*\x12(\n\x04name\x12 {bucket=projects/*/buckets/*}/**\x12\x94\x01\n\tGetFolder\x12+.google.storage.control.v2.GetFolderRequest\x1a!.google.storage.control.v2.Folder\"7\xda\x41\x04name\x8a\xd3\xe4\x93\x02*\x12(\n\x04name\x12 {bucket=projects/*/buckets/*}/**\x12\x94\x01\n\x0bListFolders\x12-.google.storage.control.v2.ListFoldersRequest\x1a..google.storage.control.v2.ListFoldersResponse\"&\xda\x41\x06parent\x8a\xd3\xe4\x93\x02\x17\x12\x15\n\x06parent\x12\x0b{bucket=**}\x12\xcd\x01\n\x0cRenameFolder\x12..google.storage.control.v2.RenameFolderRequest\x1a\x1d.google.longrunning.Operation\"n\xca\x41\x1e\n\x06\x46older\x12\x14RenameFolderMetadata\xda\x41\x1aname,destination_folder_id\x8a\xd3\xe4\x93\x02*\x12(\n\x04name\x12 {bucket=projects/*/buckets/*}/**\x12\xa9\x01\n\x10GetStorageLayout\x12\x32.google.storage.control.v2.GetStorageLayoutRequest\x1a(.google.storage.control.v2.StorageLayout\"7\xda\x41\x04name\x8a\xd3\xe4\x93\x02*\x12(\n\x04name\x12 {bucket=projects/*/buckets/*}/**\x12\xbf\x01\n\x13\x43reateManagedFolder\x12\x35.google.storage.control.v2.CreateManagedFolderRequest\x1a(.google.storage.control.v2.ManagedFolder\"G\xda\x41\'parent,managed_folder,managed_folder_id\x8a\xd3\xe4\x93\x02\x17\x12\x15\n\x06parent\x12\x0b{bucket=**}\x12\x9d\x01\n\x13\x44\x65leteManagedFolder\x12\x35.google.storage.control.v2.DeleteManagedFolderRequest\x1a\x16.google.protobuf.Empty\"7\xda\x41\x04name\x8a\xd3\xe4\x93\x02*\x12(\n\x04name\x12 {bucket=projects/*/buckets/*}/**\x12\xa9\x01\n\x10GetManagedFolder\x12\x32.google.storage.control.v2.GetManagedFolderRequest\x1a(.google.storage.control.v2.ManagedFolder\"7\xda\x41\x04name\x8a\xd3\xe4\x93\x02*\x12(\n\x04name\x12 {bucket=projects/*/buckets/*}/**\x12\xa9\x01\n\x12ListManagedFolders\x12\x34.google.storage.control.v2.ListManagedFoldersRequest\x1a\x35.google.storage.control.v2.ListManagedFoldersResponse\"&\xda\x41\x06parent\x8a\xd3\xe4\x93\x02\x17\x12\x15\n\x06parent\x12\x0b{bucket=**}\x1a\xa7\x02\xca\x41\x16storage.googleapis.com\xd2\x41\x8a\x02https://www.googleapis.com/auth/cloud-platform,https://www.googleapis.com/auth/cloud-platform.read-only,https://www.googleapis.com/auth/devstorage.full_control,https://www.googleapis.com/auth/devstorage.read_only,https://www.googleapis.com/auth/devstorage.read_writeB\xa6\x02\n\x1d\x63om.google.storage.control.v2B\x13StorageControlProtoP\x01Z=cloud.google.com/go/storage/control/apiv2/controlpb;controlpb\xaa\x02\x1fGoogle.Cloud.Storage.Control.V2\xca\x02\x1fGoogle\\Cloud\\Storage\\Control\\V2\xea\x02#Google::Cloud::Storage::Control::V2\xea\x41\x44\n\x1dstorage.googleapis.com/Bucket\x12#projects/{project}/buckets/{bucket}b\x06proto3"

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
    module Storage
      module Control
        module V2
          PendingRenameInfo = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.storage.control.v2.PendingRenameInfo").msgclass
          Folder = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.storage.control.v2.Folder").msgclass
          GetFolderRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.storage.control.v2.GetFolderRequest").msgclass
          CreateFolderRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.storage.control.v2.CreateFolderRequest").msgclass
          DeleteFolderRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.storage.control.v2.DeleteFolderRequest").msgclass
          ListFoldersRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.storage.control.v2.ListFoldersRequest").msgclass
          ListFoldersResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.storage.control.v2.ListFoldersResponse").msgclass
          RenameFolderRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.storage.control.v2.RenameFolderRequest").msgclass
          CommonLongRunningOperationMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.storage.control.v2.CommonLongRunningOperationMetadata").msgclass
          RenameFolderMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.storage.control.v2.RenameFolderMetadata").msgclass
          StorageLayout = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.storage.control.v2.StorageLayout").msgclass
          StorageLayout::CustomPlacementConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.storage.control.v2.StorageLayout.CustomPlacementConfig").msgclass
          StorageLayout::HierarchicalNamespace = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.storage.control.v2.StorageLayout.HierarchicalNamespace").msgclass
          GetStorageLayoutRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.storage.control.v2.GetStorageLayoutRequest").msgclass
          ManagedFolder = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.storage.control.v2.ManagedFolder").msgclass
          GetManagedFolderRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.storage.control.v2.GetManagedFolderRequest").msgclass
          CreateManagedFolderRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.storage.control.v2.CreateManagedFolderRequest").msgclass
          DeleteManagedFolderRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.storage.control.v2.DeleteManagedFolderRequest").msgclass
          ListManagedFoldersRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.storage.control.v2.ListManagedFoldersRequest").msgclass
          ListManagedFoldersResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.storage.control.v2.ListManagedFoldersResponse").msgclass
        end
      end
    end
  end
end
