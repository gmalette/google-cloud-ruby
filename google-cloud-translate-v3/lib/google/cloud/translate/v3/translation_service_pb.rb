# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/translate/v3/translation_service.proto

require 'google/protobuf'

require 'google/cloud/translate/v3/adaptive_mt_pb'
require 'google/cloud/translate/v3/automl_translation_pb'
require 'google/cloud/translate/v3/common_pb'
require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/longrunning/operations_pb'
require 'google/protobuf/empty_pb'
require 'google/protobuf/field_mask_pb'
require 'google/protobuf/timestamp_pb'


descriptor_data = "\n3google/cloud/translate/v3/translation_service.proto\x12\x1bgoogle.cloud.translation.v3\x1a+google/cloud/translate/v3/adaptive_mt.proto\x1a\x32google/cloud/translate/v3/automl_translation.proto\x1a&google/cloud/translate/v3/common.proto\x1a\x1cgoogle/api/annotations.proto\x1a\x17google/api/client.proto\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a#google/longrunning/operations.proto\x1a\x1bgoogle/protobuf/empty.proto\x1a google/protobuf/field_mask.proto\x1a\x1fgoogle/protobuf/timestamp.proto\"7\n\x15TransliterationConfig\x12\x1e\n\x16\x65nable_transliteration\x18\x01 \x01(\x08\"\x8e\x04\n\x14TranslateTextRequest\x12\x15\n\x08\x63ontents\x18\x01 \x03(\tB\x03\xe0\x41\x02\x12\x16\n\tmime_type\x18\x03 \x01(\tB\x03\xe0\x41\x01\x12!\n\x14source_language_code\x18\x04 \x01(\tB\x03\xe0\x41\x01\x12!\n\x14target_language_code\x18\x05 \x01(\tB\x03\xe0\x41\x02\x12\x39\n\x06parent\x18\x08 \x01(\tB)\xe0\x41\x02\xfa\x41#\n!locations.googleapis.com/Location\x12\x12\n\x05model\x18\x06 \x01(\tB\x03\xe0\x41\x01\x12V\n\x0fglossary_config\x18\x07 \x01(\x0b\x32\x38.google.cloud.translation.v3.TranslateTextGlossaryConfigB\x03\xe0\x41\x01\x12W\n\x16transliteration_config\x18\r \x01(\x0b\x32\x32.google.cloud.translation.v3.TransliterationConfigB\x03\xe0\x41\x01\x12R\n\x06labels\x18\n \x03(\x0b\x32=.google.cloud.translation.v3.TranslateTextRequest.LabelsEntryB\x03\xe0\x41\x01\x1a-\n\x0bLabelsEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\t:\x02\x38\x01\"\xa0\x01\n\x15TranslateTextResponse\x12>\n\x0ctranslations\x18\x01 \x03(\x0b\x32(.google.cloud.translation.v3.Translation\x12G\n\x15glossary_translations\x18\x03 \x03(\x0b\x32(.google.cloud.translation.v3.Translation\"\xa8\x01\n\x0bTranslation\x12\x17\n\x0ftranslated_text\x18\x01 \x01(\t\x12\r\n\x05model\x18\x02 \x01(\t\x12\x1e\n\x16\x64\x65tected_language_code\x18\x04 \x01(\t\x12Q\n\x0fglossary_config\x18\x03 \x01(\x0b\x32\x38.google.cloud.translation.v3.TranslateTextGlossaryConfig\"\x8a\x01\n\x13RomanizeTextRequest\x12\x39\n\x06parent\x18\x04 \x01(\tB)\xe0\x41\x02\xfa\x41#\n!locations.googleapis.com/Location\x12\x15\n\x08\x63ontents\x18\x01 \x03(\tB\x03\xe0\x41\x02\x12!\n\x14source_language_code\x18\x02 \x01(\tB\x03\xe0\x41\x01\"F\n\x0cRomanization\x12\x16\n\x0eromanized_text\x18\x01 \x01(\t\x12\x1e\n\x16\x64\x65tected_language_code\x18\x02 \x01(\t\"X\n\x14RomanizeTextResponse\x12@\n\rromanizations\x18\x01 \x03(\x0b\x32).google.cloud.translation.v3.Romanization\"\x9f\x02\n\x15\x44\x65tectLanguageRequest\x12\x39\n\x06parent\x18\x05 \x01(\tB)\xe0\x41\x02\xfa\x41#\n!locations.googleapis.com/Location\x12\x12\n\x05model\x18\x04 \x01(\tB\x03\xe0\x41\x01\x12\x11\n\x07\x63ontent\x18\x01 \x01(\tH\x00\x12\x16\n\tmime_type\x18\x03 \x01(\tB\x03\xe0\x41\x01\x12S\n\x06labels\x18\x06 \x03(\x0b\x32>.google.cloud.translation.v3.DetectLanguageRequest.LabelsEntryB\x03\xe0\x41\x01\x1a-\n\x0bLabelsEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\t:\x02\x38\x01\x42\x08\n\x06source\"=\n\x10\x44\x65tectedLanguage\x12\x15\n\rlanguage_code\x18\x01 \x01(\t\x12\x12\n\nconfidence\x18\x02 \x01(\x02\"Z\n\x16\x44\x65tectLanguageResponse\x12@\n\tlanguages\x18\x01 \x03(\x0b\x32-.google.cloud.translation.v3.DetectedLanguage\"\x91\x01\n\x1cGetSupportedLanguagesRequest\x12\x39\n\x06parent\x18\x03 \x01(\tB)\xe0\x41\x02\xfa\x41#\n!locations.googleapis.com/Location\x12\"\n\x15\x64isplay_language_code\x18\x01 \x01(\tB\x03\xe0\x41\x01\x12\x12\n\x05model\x18\x02 \x01(\tB\x03\xe0\x41\x01\"W\n\x12SupportedLanguages\x12\x41\n\tlanguages\x18\x01 \x03(\x0b\x32..google.cloud.translation.v3.SupportedLanguage\"p\n\x11SupportedLanguage\x12\x15\n\rlanguage_code\x18\x01 \x01(\t\x12\x14\n\x0c\x64isplay_name\x18\x02 \x01(\t\x12\x16\n\x0esupport_source\x18\x03 \x01(\x08\x12\x16\n\x0esupport_target\x18\x04 \x01(\x08\"#\n\tGcsSource\x12\x16\n\tinput_uri\x18\x01 \x01(\tB\x03\xe0\x41\x02\"m\n\x0bInputConfig\x12\x16\n\tmime_type\x18\x01 \x01(\tB\x03\xe0\x41\x01\x12<\n\ngcs_source\x18\x02 \x01(\x0b\x32&.google.cloud.translation.v3.GcsSourceH\x00\x42\x08\n\x06source\"0\n\x0eGcsDestination\x12\x1e\n\x11output_uri_prefix\x18\x01 \x01(\tB\x03\xe0\x41\x02\"e\n\x0cOutputConfig\x12\x46\n\x0fgcs_destination\x18\x01 \x01(\x0b\x32+.google.cloud.translation.v3.GcsDestinationH\x00\x42\r\n\x0b\x64\x65stination\"\x83\x01\n\x13\x44ocumentInputConfig\x12\x11\n\x07\x63ontent\x18\x01 \x01(\x0cH\x00\x12<\n\ngcs_source\x18\x02 \x01(\x0b\x32&.google.cloud.translation.v3.GcsSourceH\x00\x12\x11\n\tmime_type\x18\x04 \x01(\tB\x08\n\x06source\"\x8a\x01\n\x14\x44ocumentOutputConfig\x12K\n\x0fgcs_destination\x18\x01 \x01(\x0b\x32+.google.cloud.translation.v3.GcsDestinationB\x03\xe0\x41\x01H\x00\x12\x16\n\tmime_type\x18\x03 \x01(\tB\x03\xe0\x41\x01\x42\r\n\x0b\x64\x65stination\"\xbe\x05\n\x18TranslateDocumentRequest\x12\x13\n\x06parent\x18\x01 \x01(\tB\x03\xe0\x41\x02\x12!\n\x14source_language_code\x18\x02 \x01(\tB\x03\xe0\x41\x01\x12!\n\x14target_language_code\x18\x03 \x01(\tB\x03\xe0\x41\x02\x12T\n\x15\x64ocument_input_config\x18\x04 \x01(\x0b\x32\x30.google.cloud.translation.v3.DocumentInputConfigB\x03\xe0\x41\x02\x12V\n\x16\x64ocument_output_config\x18\x05 \x01(\x0b\x32\x31.google.cloud.translation.v3.DocumentOutputConfigB\x03\xe0\x41\x01\x12\x12\n\x05model\x18\x06 \x01(\tB\x03\xe0\x41\x01\x12V\n\x0fglossary_config\x18\x07 \x01(\x0b\x32\x38.google.cloud.translation.v3.TranslateTextGlossaryConfigB\x03\xe0\x41\x01\x12V\n\x06labels\x18\x08 \x03(\x0b\x32\x41.google.cloud.translation.v3.TranslateDocumentRequest.LabelsEntryB\x03\xe0\x41\x01\x12#\n\x16\x63ustomized_attribution\x18\n \x01(\tB\x03\xe0\x41\x01\x12)\n\x1cis_translate_native_pdf_only\x18\x0b \x01(\x08\x42\x03\xe0\x41\x01\x12-\n enable_shadow_removal_native_pdf\x18\x0c \x01(\x08\x42\x03\xe0\x41\x01\x12\'\n\x1a\x65nable_rotation_correction\x18\r \x01(\x08\x42\x03\xe0\x41\x01\x1a-\n\x0bLabelsEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\t:\x02\x38\x01\"e\n\x13\x44ocumentTranslation\x12\x1b\n\x13\x62yte_stream_outputs\x18\x01 \x03(\x0c\x12\x11\n\tmime_type\x18\x02 \x01(\t\x12\x1e\n\x16\x64\x65tected_language_code\x18\x03 \x01(\t\"\xa6\x02\n\x19TranslateDocumentResponse\x12N\n\x14\x64ocument_translation\x18\x01 \x01(\x0b\x32\x30.google.cloud.translation.v3.DocumentTranslation\x12W\n\x1dglossary_document_translation\x18\x02 \x01(\x0b\x32\x30.google.cloud.translation.v3.DocumentTranslation\x12\r\n\x05model\x18\x03 \x01(\t\x12Q\n\x0fglossary_config\x18\x04 \x01(\x0b\x32\x38.google.cloud.translation.v3.TranslateTextGlossaryConfig\"\x88\x06\n\x19\x42\x61tchTranslateTextRequest\x12\x39\n\x06parent\x18\x01 \x01(\tB)\xe0\x41\x02\xfa\x41#\n!locations.googleapis.com/Location\x12!\n\x14source_language_code\x18\x02 \x01(\tB\x03\xe0\x41\x02\x12\"\n\x15target_language_codes\x18\x03 \x03(\tB\x03\xe0\x41\x02\x12W\n\x06models\x18\x04 \x03(\x0b\x32\x42.google.cloud.translation.v3.BatchTranslateTextRequest.ModelsEntryB\x03\xe0\x41\x01\x12\x44\n\rinput_configs\x18\x05 \x03(\x0b\x32(.google.cloud.translation.v3.InputConfigB\x03\xe0\x41\x02\x12\x45\n\routput_config\x18\x06 \x01(\x0b\x32).google.cloud.translation.v3.OutputConfigB\x03\xe0\x41\x02\x12_\n\nglossaries\x18\x07 \x03(\x0b\x32\x46.google.cloud.translation.v3.BatchTranslateTextRequest.GlossariesEntryB\x03\xe0\x41\x01\x12W\n\x06labels\x18\t \x03(\x0b\x32\x42.google.cloud.translation.v3.BatchTranslateTextRequest.LabelsEntryB\x03\xe0\x41\x01\x1a-\n\x0bModelsEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\t:\x02\x38\x01\x1ak\n\x0fGlossariesEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12G\n\x05value\x18\x02 \x01(\x0b\x32\x38.google.cloud.translation.v3.TranslateTextGlossaryConfig:\x02\x38\x01\x1a-\n\x0bLabelsEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\t:\x02\x38\x01\"\xce\x02\n\x16\x42\x61tchTranslateMetadata\x12H\n\x05state\x18\x01 \x01(\x0e\x32\x39.google.cloud.translation.v3.BatchTranslateMetadata.State\x12\x1d\n\x15translated_characters\x18\x02 \x01(\x03\x12\x19\n\x11\x66\x61iled_characters\x18\x03 \x01(\x03\x12\x18\n\x10total_characters\x18\x04 \x01(\x03\x12/\n\x0bsubmit_time\x18\x05 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\"e\n\x05State\x12\x15\n\x11STATE_UNSPECIFIED\x10\x00\x12\x0b\n\x07RUNNING\x10\x01\x12\r\n\tSUCCEEDED\x10\x02\x12\n\n\x06\x46\x41ILED\x10\x03\x12\x0e\n\nCANCELLING\x10\x04\x12\r\n\tCANCELLED\x10\x05\"\xcb\x01\n\x16\x42\x61tchTranslateResponse\x12\x18\n\x10total_characters\x18\x01 \x01(\x03\x12\x1d\n\x15translated_characters\x18\x02 \x01(\x03\x12\x19\n\x11\x66\x61iled_characters\x18\x03 \x01(\x03\x12/\n\x0bsubmit_time\x18\x04 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12,\n\x08\x65nd_time\x18\x05 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\"]\n\x13GlossaryInputConfig\x12<\n\ngcs_source\x18\x01 \x01(\x0b\x32&.google.cloud.translation.v3.GcsSourceH\x00\x42\x08\n\x06source\"\x9a\x05\n\x08Glossary\x12\x11\n\x04name\x18\x01 \x01(\tB\x03\xe0\x41\x02\x12O\n\rlanguage_pair\x18\x03 \x01(\x0b\x32\x36.google.cloud.translation.v3.Glossary.LanguageCodePairH\x00\x12T\n\x12language_codes_set\x18\x04 \x01(\x0b\x32\x36.google.cloud.translation.v3.Glossary.LanguageCodesSetH\x00\x12\x46\n\x0cinput_config\x18\x05 \x01(\x0b\x32\x30.google.cloud.translation.v3.GlossaryInputConfig\x12\x18\n\x0b\x65ntry_count\x18\x06 \x01(\x05\x42\x03\xe0\x41\x03\x12\x34\n\x0bsubmit_time\x18\x07 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x31\n\x08\x65nd_time\x18\x08 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x19\n\x0c\x64isplay_name\x18\t \x01(\tB\x03\xe0\x41\x01\x1aN\n\x10LanguageCodePair\x12\x1c\n\x14source_language_code\x18\x01 \x01(\t\x12\x1c\n\x14target_language_code\x18\x02 \x01(\t\x1a*\n\x10LanguageCodesSet\x12\x16\n\x0elanguage_codes\x18\x01 \x03(\t:e\xea\x41\x62\n!translate.googleapis.com/Glossary\x12=projects/{project}/locations/{location}/glossaries/{glossary}B\x0b\n\tlanguages\"\x90\x01\n\x15\x43reateGlossaryRequest\x12\x39\n\x06parent\x18\x01 \x01(\tB)\xe0\x41\x02\xfa\x41#\n!locations.googleapis.com/Location\x12<\n\x08glossary\x18\x02 \x01(\x0b\x32%.google.cloud.translation.v3.GlossaryB\x03\xe0\x41\x02\"\x86\x01\n\x15UpdateGlossaryRequest\x12<\n\x08glossary\x18\x01 \x01(\x0b\x32%.google.cloud.translation.v3.GlossaryB\x03\xe0\x41\x02\x12/\n\x0bupdate_mask\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.FieldMask\"M\n\x12GetGlossaryRequest\x12\x37\n\x04name\x18\x01 \x01(\tB)\xe0\x41\x02\xfa\x41#\n!translate.googleapis.com/Glossary\"P\n\x15\x44\x65leteGlossaryRequest\x12\x37\n\x04name\x18\x01 \x01(\tB)\xe0\x41\x02\xfa\x41#\n!translate.googleapis.com/Glossary\"\x98\x01\n\x15ListGlossariesRequest\x12\x39\n\x06parent\x18\x01 \x01(\tB)\xe0\x41\x02\xfa\x41#\n!locations.googleapis.com/Location\x12\x16\n\tpage_size\x18\x02 \x01(\x05\x42\x03\xe0\x41\x01\x12\x17\n\npage_token\x18\x03 \x01(\tB\x03\xe0\x41\x01\x12\x13\n\x06\x66ilter\x18\x04 \x01(\tB\x03\xe0\x41\x01\"l\n\x16ListGlossariesResponse\x12\x39\n\nglossaries\x18\x01 \x03(\x0b\x32%.google.cloud.translation.v3.Glossary\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\"W\n\x17GetGlossaryEntryRequest\x12<\n\x04name\x18\x01 \x01(\tB.\xe0\x41\x02\xfa\x41(\n&translate.googleapis.com/GlossaryEntry\"Z\n\x1a\x44\x65leteGlossaryEntryRequest\x12<\n\x04name\x18\x01 \x01(\tB.\xe0\x41\x02\xfa\x41(\n&translate.googleapis.com/GlossaryEntry\"\x88\x01\n\x1aListGlossaryEntriesRequest\x12\x39\n\x06parent\x18\x01 \x01(\tB)\xe0\x41\x02\xfa\x41#\n!translate.googleapis.com/Glossary\x12\x16\n\tpage_size\x18\x02 \x01(\x05\x42\x03\xe0\x41\x01\x12\x17\n\npage_token\x18\x03 \x01(\tB\x03\xe0\x41\x01\"\x86\x01\n\x1bListGlossaryEntriesResponse\x12I\n\x10glossary_entries\x18\x01 \x03(\x0b\x32*.google.cloud.translation.v3.GlossaryEntryB\x03\xe0\x41\x01\x12\x1c\n\x0fnext_page_token\x18\x02 \x01(\tB\x03\xe0\x41\x01\"\xa0\x01\n\x1a\x43reateGlossaryEntryRequest\x12\x39\n\x06parent\x18\x01 \x01(\tB)\xe0\x41\x02\xfa\x41#\n!translate.googleapis.com/Glossary\x12G\n\x0eglossary_entry\x18\x02 \x01(\x0b\x32*.google.cloud.translation.v3.GlossaryEntryB\x03\xe0\x41\x02\"e\n\x1aUpdateGlossaryEntryRequest\x12G\n\x0eglossary_entry\x18\x01 \x01(\x0b\x32*.google.cloud.translation.v3.GlossaryEntryB\x03\xe0\x41\x02\"\x88\x02\n\x16\x43reateGlossaryMetadata\x12\x0c\n\x04name\x18\x01 \x01(\t\x12H\n\x05state\x18\x02 \x01(\x0e\x32\x39.google.cloud.translation.v3.CreateGlossaryMetadata.State\x12/\n\x0bsubmit_time\x18\x03 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\"e\n\x05State\x12\x15\n\x11STATE_UNSPECIFIED\x10\x00\x12\x0b\n\x07RUNNING\x10\x01\x12\r\n\tSUCCEEDED\x10\x02\x12\n\n\x06\x46\x41ILED\x10\x03\x12\x0e\n\nCANCELLING\x10\x04\x12\r\n\tCANCELLED\x10\x05\"\xb3\x02\n\x16UpdateGlossaryMetadata\x12\x37\n\x08glossary\x18\x01 \x01(\x0b\x32%.google.cloud.translation.v3.Glossary\x12H\n\x05state\x18\x02 \x01(\x0e\x32\x39.google.cloud.translation.v3.UpdateGlossaryMetadata.State\x12/\n\x0bsubmit_time\x18\x03 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\"e\n\x05State\x12\x15\n\x11STATE_UNSPECIFIED\x10\x00\x12\x0b\n\x07RUNNING\x10\x01\x12\r\n\tSUCCEEDED\x10\x02\x12\n\n\x06\x46\x41ILED\x10\x03\x12\x0e\n\nCANCELLING\x10\x04\x12\r\n\tCANCELLED\x10\x05\"\x88\x02\n\x16\x44\x65leteGlossaryMetadata\x12\x0c\n\x04name\x18\x01 \x01(\t\x12H\n\x05state\x18\x02 \x01(\x0e\x32\x39.google.cloud.translation.v3.DeleteGlossaryMetadata.State\x12/\n\x0bsubmit_time\x18\x03 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\"e\n\x05State\x12\x15\n\x11STATE_UNSPECIFIED\x10\x00\x12\x0b\n\x07RUNNING\x10\x01\x12\r\n\tSUCCEEDED\x10\x02\x12\n\n\x06\x46\x41ILED\x10\x03\x12\x0e\n\nCANCELLING\x10\x04\x12\r\n\tCANCELLED\x10\x05\"\x85\x01\n\x16\x44\x65leteGlossaryResponse\x12\x0c\n\x04name\x18\x01 \x01(\t\x12/\n\x0bsubmit_time\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12,\n\x08\x65nd_time\x18\x03 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\"\xd1\x07\n\x1d\x42\x61tchTranslateDocumentRequest\x12\x39\n\x06parent\x18\x01 \x01(\tB)\xe0\x41\x02\xfa\x41#\n!locations.googleapis.com/Location\x12!\n\x14source_language_code\x18\x02 \x01(\tB\x03\xe0\x41\x02\x12\"\n\x15target_language_codes\x18\x03 \x03(\tB\x03\xe0\x41\x02\x12Q\n\rinput_configs\x18\x04 \x03(\x0b\x32\x35.google.cloud.translation.v3.BatchDocumentInputConfigB\x03\xe0\x41\x02\x12R\n\routput_config\x18\x05 \x01(\x0b\x32\x36.google.cloud.translation.v3.BatchDocumentOutputConfigB\x03\xe0\x41\x02\x12[\n\x06models\x18\x06 \x03(\x0b\x32\x46.google.cloud.translation.v3.BatchTranslateDocumentRequest.ModelsEntryB\x03\xe0\x41\x01\x12\x63\n\nglossaries\x18\x07 \x03(\x0b\x32J.google.cloud.translation.v3.BatchTranslateDocumentRequest.GlossariesEntryB\x03\xe0\x41\x01\x12r\n\x12\x66ormat_conversions\x18\x08 \x03(\x0b\x32Q.google.cloud.translation.v3.BatchTranslateDocumentRequest.FormatConversionsEntryB\x03\xe0\x41\x01\x12#\n\x16\x63ustomized_attribution\x18\n \x01(\tB\x03\xe0\x41\x01\x12-\n enable_shadow_removal_native_pdf\x18\x0b \x01(\x08\x42\x03\xe0\x41\x01\x12\'\n\x1a\x65nable_rotation_correction\x18\x0c \x01(\x08\x42\x03\xe0\x41\x01\x1a-\n\x0bModelsEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\t:\x02\x38\x01\x1ak\n\x0fGlossariesEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12G\n\x05value\x18\x02 \x01(\x0b\x32\x38.google.cloud.translation.v3.TranslateTextGlossaryConfig:\x02\x38\x01\x1a\x38\n\x16\x46ormatConversionsEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\t:\x02\x38\x01\"b\n\x18\x42\x61tchDocumentInputConfig\x12<\n\ngcs_source\x18\x01 \x01(\x0b\x32&.google.cloud.translation.v3.GcsSourceH\x00\x42\x08\n\x06source\"r\n\x19\x42\x61tchDocumentOutputConfig\x12\x46\n\x0fgcs_destination\x18\x01 \x01(\x0b\x32+.google.cloud.translation.v3.GcsDestinationH\x00\x42\r\n\x0b\x64\x65stination\"\xd9\x02\n\x1e\x42\x61tchTranslateDocumentResponse\x12\x13\n\x0btotal_pages\x18\x01 \x01(\x03\x12\x18\n\x10translated_pages\x18\x02 \x01(\x03\x12\x14\n\x0c\x66\x61iled_pages\x18\x03 \x01(\x03\x12\x1c\n\x14total_billable_pages\x18\x04 \x01(\x03\x12\x18\n\x10total_characters\x18\x05 \x01(\x03\x12\x1d\n\x15translated_characters\x18\x06 \x01(\x03\x12\x19\n\x11\x66\x61iled_characters\x18\x07 \x01(\x03\x12!\n\x19total_billable_characters\x18\x08 \x01(\x03\x12/\n\x0bsubmit_time\x18\t \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12,\n\x08\x65nd_time\x18\n \x01(\x0b\x32\x1a.google.protobuf.Timestamp\"\xe4\x03\n\x1e\x42\x61tchTranslateDocumentMetadata\x12P\n\x05state\x18\x01 \x01(\x0e\x32\x41.google.cloud.translation.v3.BatchTranslateDocumentMetadata.State\x12\x13\n\x0btotal_pages\x18\x02 \x01(\x03\x12\x18\n\x10translated_pages\x18\x03 \x01(\x03\x12\x14\n\x0c\x66\x61iled_pages\x18\x04 \x01(\x03\x12\x1c\n\x14total_billable_pages\x18\x05 \x01(\x03\x12\x18\n\x10total_characters\x18\x06 \x01(\x03\x12\x1d\n\x15translated_characters\x18\x07 \x01(\x03\x12\x19\n\x11\x66\x61iled_characters\x18\x08 \x01(\x03\x12!\n\x19total_billable_characters\x18\t \x01(\x03\x12/\n\x0bsubmit_time\x18\n \x01(\x0b\x32\x1a.google.protobuf.Timestamp\"e\n\x05State\x12\x15\n\x11STATE_UNSPECIFIED\x10\x00\x12\x0b\n\x07RUNNING\x10\x01\x12\r\n\tSUCCEEDED\x10\x02\x12\n\n\x06\x46\x41ILED\x10\x03\x12\x0e\n\nCANCELLING\x10\x04\x12\r\n\tCANCELLED\x10\x05\"\xa1\x01\n\x1bTranslateTextGlossaryConfig\x12;\n\x08glossary\x18\x01 \x01(\tB)\xe0\x41\x02\xfa\x41#\n!translate.googleapis.com/Glossary\x12\x18\n\x0bignore_case\x18\x02 \x01(\x08\x42\x03\xe0\x41\x01\x12+\n\x1e\x63ontextual_translation_enabled\x18\x04 \x01(\x08\x42\x03\xe0\x41\x01\x32\xbd\x43\n\x12TranslationService\x12\xd4\x02\n\rTranslateText\x12\x31.google.cloud.translation.v3.TranslateTextRequest\x1a\x32.google.cloud.translation.v3.TranslateTextResponse\"\xdb\x01\xda\x41$parent,target_language_code,contents\xda\x41Iparent,model,mime_type,source_language_code,target_language_code,contents\x82\xd3\xe4\x93\x02\x62\"1/v3/{parent=projects/*/locations/*}:translateText:\x01*Z*\"%/v3/{parent=projects/*}:translateText:\x01*\x12\xed\x01\n\x0cRomanizeText\x12\x30.google.cloud.translation.v3.RomanizeTextRequest\x1a\x31.google.cloud.translation.v3.RomanizeTextResponse\"x\xda\x41\x0fparent,contents\x82\xd3\xe4\x93\x02`\"0/v3/{parent=projects/*/locations/*}:romanizeText:\x01*Z)\"$/v3/{parent=projects/*}:romanizeText:\x01*\x12\x87\x02\n\x0e\x44\x65tectLanguage\x12\x32.google.cloud.translation.v3.DetectLanguageRequest\x1a\x33.google.cloud.translation.v3.DetectLanguageResponse\"\x8b\x01\xda\x41\x1eparent,model,mime_type,content\x82\xd3\xe4\x93\x02\x64\"2/v3/{parent=projects/*/locations/*}:detectLanguage:\x01*Z+\"&/v3/{parent=projects/*}:detectLanguage:\x01*\x12\x97\x02\n\x15GetSupportedLanguages\x12\x39.google.cloud.translation.v3.GetSupportedLanguagesRequest\x1a/.google.cloud.translation.v3.SupportedLanguages\"\x91\x01\xda\x41\"parent,model,display_language_code\x82\xd3\xe4\x93\x02\x66\x12\x36/v3/{parent=projects/*/locations/*}/supportedLanguagesZ,\x12*/v3/{parent=projects/*}/supportedLanguages\x12\xc4\x01\n\x11TranslateDocument\x12\x35.google.cloud.translation.v3.TranslateDocumentRequest\x1a\x36.google.cloud.translation.v3.TranslateDocumentResponse\"@\x82\xd3\xe4\x93\x02:\"5/v3/{parent=projects/*/locations/*}:translateDocument:\x01*\x12\xe1\x01\n\x12\x42\x61tchTranslateText\x12\x36.google.cloud.translation.v3.BatchTranslateTextRequest\x1a\x1d.google.longrunning.Operation\"t\xca\x41\x30\n\x16\x42\x61tchTranslateResponse\x12\x16\x42\x61tchTranslateMetadata\x82\xd3\xe4\x93\x02;\"6/v3/{parent=projects/*/locations/*}:batchTranslateText:\x01*\x12\xce\x02\n\x16\x42\x61tchTranslateDocument\x12:.google.cloud.translation.v3.BatchTranslateDocumentRequest\x1a\x1d.google.longrunning.Operation\"\xd8\x01\xca\x41@\n\x1e\x42\x61tchTranslateDocumentResponse\x12\x1e\x42\x61tchTranslateDocumentMetadata\xda\x41Mparent,source_language_code,target_language_codes,input_configs,output_config\x82\xd3\xe4\x93\x02?\":/v3/{parent=projects/*/locations/*}:batchTranslateDocument:\x01*\x12\xdc\x01\n\x0e\x43reateGlossary\x12\x32.google.cloud.translation.v3.CreateGlossaryRequest\x1a\x1d.google.longrunning.Operation\"w\xca\x41\"\n\x08Glossary\x12\x16\x43reateGlossaryMetadata\xda\x41\x0fparent,glossary\x82\xd3\xe4\x93\x02:\"./v3/{parent=projects/*/locations/*}/glossaries:\x08glossary\x12\xeb\x01\n\x0eUpdateGlossary\x12\x32.google.cloud.translation.v3.UpdateGlossaryRequest\x1a\x1d.google.longrunning.Operation\"\x85\x01\xca\x41\"\n\x08Glossary\x12\x16UpdateGlossaryMetadata\xda\x41\x14glossary,update_mask\x82\xd3\xe4\x93\x02\x43\x32\x37/v3/{glossary.name=projects/*/locations/*/glossaries/*}:\x08glossary\x12\xba\x01\n\x0eListGlossaries\x12\x32.google.cloud.translation.v3.ListGlossariesRequest\x1a\x33.google.cloud.translation.v3.ListGlossariesResponse\"?\xda\x41\x06parent\x82\xd3\xe4\x93\x02\x30\x12./v3/{parent=projects/*/locations/*}/glossaries\x12\xa4\x01\n\x0bGetGlossary\x12/.google.cloud.translation.v3.GetGlossaryRequest\x1a%.google.cloud.translation.v3.Glossary\"=\xda\x41\x04name\x82\xd3\xe4\x93\x02\x30\x12./v3/{name=projects/*/locations/*/glossaries/*}\x12\xd5\x01\n\x0e\x44\x65leteGlossary\x12\x32.google.cloud.translation.v3.DeleteGlossaryRequest\x1a\x1d.google.longrunning.Operation\"p\xca\x41\x30\n\x16\x44\x65leteGlossaryResponse\x12\x16\x44\x65leteGlossaryMetadata\xda\x41\x04name\x82\xd3\xe4\x93\x02\x30*./v3/{name=projects/*/locations/*/glossaries/*}\x12\xc5\x01\n\x10GetGlossaryEntry\x12\x34.google.cloud.translation.v3.GetGlossaryEntryRequest\x1a*.google.cloud.translation.v3.GlossaryEntry\"O\xda\x41\x04name\x82\xd3\xe4\x93\x02\x42\x12@/v3/{name=projects/*/locations/*/glossaries/*/glossaryEntries/*}\x12\xdb\x01\n\x13ListGlossaryEntries\x12\x37.google.cloud.translation.v3.ListGlossaryEntriesRequest\x1a\x38.google.cloud.translation.v3.ListGlossaryEntriesResponse\"Q\xda\x41\x06parent\x82\xd3\xe4\x93\x02\x42\x12@/v3/{parent=projects/*/locations/*/glossaries/*}/glossaryEntries\x12\xec\x01\n\x13\x43reateGlossaryEntry\x12\x37.google.cloud.translation.v3.CreateGlossaryEntryRequest\x1a*.google.cloud.translation.v3.GlossaryEntry\"p\xda\x41\x15parent,glossary_entry\x82\xd3\xe4\x93\x02R\"@/v3/{parent=projects/*/locations/*/glossaries/*}/glossaryEntries:\x0eglossary_entry\x12\xf4\x01\n\x13UpdateGlossaryEntry\x12\x37.google.cloud.translation.v3.UpdateGlossaryEntryRequest\x1a*.google.cloud.translation.v3.GlossaryEntry\"x\xda\x41\x0eglossary_entry\x82\xd3\xe4\x93\x02\x61\x32O/v3/{glossary_entry.name=projects/*/locations/*/glossaries/*/glossaryEntries/*}:\x0eglossary_entry\x12\xb7\x01\n\x13\x44\x65leteGlossaryEntry\x12\x37.google.cloud.translation.v3.DeleteGlossaryEntryRequest\x1a\x16.google.protobuf.Empty\"O\xda\x41\x04name\x82\xd3\xe4\x93\x02\x42*@/v3/{name=projects/*/locations/*/glossaries/*/glossaryEntries/*}\x12\xd4\x01\n\rCreateDataset\x12\x31.google.cloud.translation.v3.CreateDatasetRequest\x1a\x1d.google.longrunning.Operation\"q\xca\x41 \n\x07\x44\x61taset\x12\x15\x43reateDatasetMetadata\xda\x41\x0eparent,dataset\x82\xd3\xe4\x93\x02\x37\",/v3/{parent=projects/*/locations/*}/datasets:\x07\x64\x61taset\x12\x9f\x01\n\nGetDataset\x12..google.cloud.translation.v3.GetDatasetRequest\x1a$.google.cloud.translation.v3.Dataset\";\xda\x41\x04name\x82\xd3\xe4\x93\x02.\x12,/v3/{name=projects/*/locations/*/datasets/*}\x12\xb2\x01\n\x0cListDatasets\x12\x30.google.cloud.translation.v3.ListDatasetsRequest\x1a\x31.google.cloud.translation.v3.ListDatasetsResponse\"=\xda\x41\x06parent\x82\xd3\xe4\x93\x02.\x12,/v3/{parent=projects/*/locations/*}/datasets\x12\xcf\x01\n\rDeleteDataset\x12\x31.google.cloud.translation.v3.DeleteDatasetRequest\x1a\x1d.google.longrunning.Operation\"l\xca\x41.\n\x15google.protobuf.Empty\x12\x15\x44\x65leteDatasetMetadata\xda\x41\x04name\x82\xd3\xe4\x93\x02.*,/v3/{name=projects/*/locations/*/datasets/*}\x12\xf8\x01\n\x17\x43reateAdaptiveMtDataset\x12;.google.cloud.translation.v3.CreateAdaptiveMtDatasetRequest\x1a..google.cloud.translation.v3.AdaptiveMtDataset\"p\xda\x41\x1aparent,adaptive_mt_dataset\x82\xd3\xe4\x93\x02M\"6/v3/{parent=projects/*/locations/*}/adaptiveMtDatasets:\x13\x61\x64\x61ptive_mt_dataset\x12\xb5\x01\n\x17\x44\x65leteAdaptiveMtDataset\x12;.google.cloud.translation.v3.DeleteAdaptiveMtDatasetRequest\x1a\x16.google.protobuf.Empty\"E\xda\x41\x04name\x82\xd3\xe4\x93\x02\x38*6/v3/{name=projects/*/locations/*/adaptiveMtDatasets/*}\x12\xc7\x01\n\x14GetAdaptiveMtDataset\x12\x38.google.cloud.translation.v3.GetAdaptiveMtDatasetRequest\x1a..google.cloud.translation.v3.AdaptiveMtDataset\"E\xda\x41\x04name\x82\xd3\xe4\x93\x02\x38\x12\x36/v3/{name=projects/*/locations/*/adaptiveMtDatasets/*}\x12\xda\x01\n\x16ListAdaptiveMtDatasets\x12:.google.cloud.translation.v3.ListAdaptiveMtDatasetsRequest\x1a;.google.cloud.translation.v3.ListAdaptiveMtDatasetsResponse\"G\xda\x41\x06parent\x82\xd3\xe4\x93\x02\x38\x12\x36/v3/{parent=projects/*/locations/*}/adaptiveMtDatasets\x12\xdd\x01\n\x13\x41\x64\x61ptiveMtTranslate\x12\x37.google.cloud.translation.v3.AdaptiveMtTranslateRequest\x1a\x38.google.cloud.translation.v3.AdaptiveMtTranslateResponse\"S\xda\x41\x0eparent,content\x82\xd3\xe4\x93\x02<\"7/v3/{parent=projects/*/locations/*}:adaptiveMtTranslate:\x01*\x12\xd0\x01\n\x11GetAdaptiveMtFile\x12\x35.google.cloud.translation.v3.GetAdaptiveMtFileRequest\x1a+.google.cloud.translation.v3.AdaptiveMtFile\"W\xda\x41\x04name\x82\xd3\xe4\x93\x02J\x12H/v3/{name=projects/*/locations/*/adaptiveMtDatasets/*/adaptiveMtFiles/*}\x12\xc1\x01\n\x14\x44\x65leteAdaptiveMtFile\x12\x38.google.cloud.translation.v3.DeleteAdaptiveMtFileRequest\x1a\x16.google.protobuf.Empty\"W\xda\x41\x04name\x82\xd3\xe4\x93\x02J*H/v3/{name=projects/*/locations/*/adaptiveMtDatasets/*/adaptiveMtFiles/*}\x12\xee\x01\n\x14ImportAdaptiveMtFile\x12\x38.google.cloud.translation.v3.ImportAdaptiveMtFileRequest\x1a\x39.google.cloud.translation.v3.ImportAdaptiveMtFileResponse\"a\xda\x41\x06parent\x82\xd3\xe4\x93\x02R\"M/v3/{parent=projects/*/locations/*/adaptiveMtDatasets/*}:importAdaptiveMtFile:\x01*\x12\xe3\x01\n\x13ListAdaptiveMtFiles\x12\x37.google.cloud.translation.v3.ListAdaptiveMtFilesRequest\x1a\x38.google.cloud.translation.v3.ListAdaptiveMtFilesResponse\"Y\xda\x41\x06parent\x82\xd3\xe4\x93\x02J\x12H/v3/{parent=projects/*/locations/*/adaptiveMtDatasets/*}/adaptiveMtFiles\x12\xd7\x02\n\x17ListAdaptiveMtSentences\x12;.google.cloud.translation.v3.ListAdaptiveMtSentencesRequest\x1a<.google.cloud.translation.v3.ListAdaptiveMtSentencesResponse\"\xc0\x01\xda\x41\x06parent\x82\xd3\xe4\x93\x02\xb0\x01\x12^/v3/{parent=projects/*/locations/*/adaptiveMtDatasets/*/adaptiveMtFiles/*}/adaptiveMtSentencesZN\x12L/v3/{parent=projects/*/locations/*/adaptiveMtDatasets/*}/adaptiveMtSentences\x12\xe8\x01\n\nImportData\x12..google.cloud.translation.v3.ImportDataRequest\x1a\x1d.google.longrunning.Operation\"\x8a\x01\xca\x41+\n\x15google.protobuf.Empty\x12\x12ImportDataMetadata\xda\x41\x14\x64\x61taset,input_config\x82\xd3\xe4\x93\x02?\":/v3/{dataset=projects/*/locations/*/datasets/*}:importData:\x01*\x12\xe9\x01\n\nExportData\x12..google.cloud.translation.v3.ExportDataRequest\x1a\x1d.google.longrunning.Operation\"\x8b\x01\xca\x41+\n\x15google.protobuf.Empty\x12\x12\x45xportDataMetadata\xda\x41\x15\x64\x61taset,output_config\x82\xd3\xe4\x93\x02?\":/v3/{dataset=projects/*/locations/*/datasets/*}:exportData:\x01*\x12\xbd\x01\n\x0cListExamples\x12\x30.google.cloud.translation.v3.ListExamplesRequest\x1a\x31.google.cloud.translation.v3.ListExamplesResponse\"H\xda\x41\x06parent\x82\xd3\xe4\x93\x02\x39\x12\x37/v3/{parent=projects/*/locations/*/datasets/*}/examples\x12\xc6\x01\n\x0b\x43reateModel\x12/.google.cloud.translation.v3.CreateModelRequest\x1a\x1d.google.longrunning.Operation\"g\xca\x41\x1c\n\x05Model\x12\x13\x43reateModelMetadata\xda\x41\x0cparent,model\x82\xd3\xe4\x93\x02\x33\"*/v3/{parent=projects/*/locations/*}/models:\x05model\x12\xaa\x01\n\nListModels\x12..google.cloud.translation.v3.ListModelsRequest\x1a/.google.cloud.translation.v3.ListModelsResponse\";\xda\x41\x06parent\x82\xd3\xe4\x93\x02,\x12*/v3/{parent=projects/*/locations/*}/models\x12\x97\x01\n\x08GetModel\x12,.google.cloud.translation.v3.GetModelRequest\x1a\".google.cloud.translation.v3.Model\"9\xda\x41\x04name\x82\xd3\xe4\x93\x02,\x12*/v3/{name=projects/*/locations/*/models/*}\x12\xc7\x01\n\x0b\x44\x65leteModel\x12/.google.cloud.translation.v3.DeleteModelRequest\x1a\x1d.google.longrunning.Operation\"h\xca\x41,\n\x15google.protobuf.Empty\x12\x13\x44\x65leteModelMetadata\xda\x41\x04name\x82\xd3\xe4\x93\x02,**/v3/{name=projects/*/locations/*/models/*}\x1a~\xca\x41\x18translate.googleapis.com\xd2\x41`https://www.googleapis.com/auth/cloud-platform,https://www.googleapis.com/auth/cloud-translationB\xd9\x01\n\x1d\x63om.google.cloud.translate.v3B\x17TranslationServiceProtoP\x01Z;cloud.google.com/go/translate/apiv3/translatepb;translatepb\xf8\x01\x01\xa2\x02\x05\x43TRL3\xaa\x02\x19Google.Cloud.Translate.V3\xca\x02\x19Google\\Cloud\\Translate\\V3\xea\x02\x1cGoogle::Cloud::Translate::V3P\x00P\x01P\x02\x62\x06proto3"

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
    ["google.protobuf.FieldMask", "google/protobuf/field_mask.proto"],
    ["google.cloud.translation.v3.GlossaryEntry", "google/cloud/translate/v3/common.proto"],
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
    module Translate
      module V3
        TransliterationConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.translation.v3.TransliterationConfig").msgclass
        TranslateTextRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.translation.v3.TranslateTextRequest").msgclass
        TranslateTextResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.translation.v3.TranslateTextResponse").msgclass
        Translation = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.translation.v3.Translation").msgclass
        RomanizeTextRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.translation.v3.RomanizeTextRequest").msgclass
        Romanization = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.translation.v3.Romanization").msgclass
        RomanizeTextResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.translation.v3.RomanizeTextResponse").msgclass
        DetectLanguageRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.translation.v3.DetectLanguageRequest").msgclass
        DetectedLanguage = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.translation.v3.DetectedLanguage").msgclass
        DetectLanguageResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.translation.v3.DetectLanguageResponse").msgclass
        GetSupportedLanguagesRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.translation.v3.GetSupportedLanguagesRequest").msgclass
        SupportedLanguages = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.translation.v3.SupportedLanguages").msgclass
        SupportedLanguage = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.translation.v3.SupportedLanguage").msgclass
        GcsSource = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.translation.v3.GcsSource").msgclass
        InputConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.translation.v3.InputConfig").msgclass
        GcsDestination = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.translation.v3.GcsDestination").msgclass
        OutputConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.translation.v3.OutputConfig").msgclass
        DocumentInputConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.translation.v3.DocumentInputConfig").msgclass
        DocumentOutputConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.translation.v3.DocumentOutputConfig").msgclass
        TranslateDocumentRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.translation.v3.TranslateDocumentRequest").msgclass
        DocumentTranslation = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.translation.v3.DocumentTranslation").msgclass
        TranslateDocumentResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.translation.v3.TranslateDocumentResponse").msgclass
        BatchTranslateTextRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.translation.v3.BatchTranslateTextRequest").msgclass
        BatchTranslateMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.translation.v3.BatchTranslateMetadata").msgclass
        BatchTranslateMetadata::State = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.translation.v3.BatchTranslateMetadata.State").enummodule
        BatchTranslateResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.translation.v3.BatchTranslateResponse").msgclass
        GlossaryInputConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.translation.v3.GlossaryInputConfig").msgclass
        Glossary = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.translation.v3.Glossary").msgclass
        Glossary::LanguageCodePair = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.translation.v3.Glossary.LanguageCodePair").msgclass
        Glossary::LanguageCodesSet = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.translation.v3.Glossary.LanguageCodesSet").msgclass
        CreateGlossaryRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.translation.v3.CreateGlossaryRequest").msgclass
        UpdateGlossaryRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.translation.v3.UpdateGlossaryRequest").msgclass
        GetGlossaryRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.translation.v3.GetGlossaryRequest").msgclass
        DeleteGlossaryRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.translation.v3.DeleteGlossaryRequest").msgclass
        ListGlossariesRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.translation.v3.ListGlossariesRequest").msgclass
        ListGlossariesResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.translation.v3.ListGlossariesResponse").msgclass
        GetGlossaryEntryRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.translation.v3.GetGlossaryEntryRequest").msgclass
        DeleteGlossaryEntryRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.translation.v3.DeleteGlossaryEntryRequest").msgclass
        ListGlossaryEntriesRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.translation.v3.ListGlossaryEntriesRequest").msgclass
        ListGlossaryEntriesResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.translation.v3.ListGlossaryEntriesResponse").msgclass
        CreateGlossaryEntryRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.translation.v3.CreateGlossaryEntryRequest").msgclass
        UpdateGlossaryEntryRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.translation.v3.UpdateGlossaryEntryRequest").msgclass
        CreateGlossaryMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.translation.v3.CreateGlossaryMetadata").msgclass
        CreateGlossaryMetadata::State = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.translation.v3.CreateGlossaryMetadata.State").enummodule
        UpdateGlossaryMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.translation.v3.UpdateGlossaryMetadata").msgclass
        UpdateGlossaryMetadata::State = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.translation.v3.UpdateGlossaryMetadata.State").enummodule
        DeleteGlossaryMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.translation.v3.DeleteGlossaryMetadata").msgclass
        DeleteGlossaryMetadata::State = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.translation.v3.DeleteGlossaryMetadata.State").enummodule
        DeleteGlossaryResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.translation.v3.DeleteGlossaryResponse").msgclass
        BatchTranslateDocumentRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.translation.v3.BatchTranslateDocumentRequest").msgclass
        BatchDocumentInputConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.translation.v3.BatchDocumentInputConfig").msgclass
        BatchDocumentOutputConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.translation.v3.BatchDocumentOutputConfig").msgclass
        BatchTranslateDocumentResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.translation.v3.BatchTranslateDocumentResponse").msgclass
        BatchTranslateDocumentMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.translation.v3.BatchTranslateDocumentMetadata").msgclass
        BatchTranslateDocumentMetadata::State = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.translation.v3.BatchTranslateDocumentMetadata.State").enummodule
        TranslateTextGlossaryConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.translation.v3.TranslateTextGlossaryConfig").msgclass
      end
    end
  end
end
