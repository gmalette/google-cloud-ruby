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

require "helper"
require "gapic/rest"
require "google/api/serviceusage/v1/serviceusage_pb"
require "google/cloud/service_usage/v1/service_usage/rest"


class ::Google::Cloud::ServiceUsage::V1::ServiceUsage::Rest::ClientTest < Minitest::Test
  class ClientStub
    attr_accessor :call_count, :requests

    def initialize response, &block
      @response = response
      @block = block
      @call_count = 0
      @requests = []
    end

    def make_get_request uri:, params: {}, options: {}, method_name: nil
      make_http_request :get, uri: uri, body: nil, params: params, options: options, method_name: method_name
    end

    def make_delete_request uri:, params: {}, options: {}, method_name: nil
      make_http_request :delete, uri: uri, body: nil, params: params, options: options, method_name: method_name
    end

    def make_post_request uri:, body: nil, params: {}, options: {}, method_name: nil
      make_http_request :post, uri: uri, body: body, params: params, options: options, method_name: method_name
    end

    def make_patch_request uri:, body:, params: {}, options: {}, method_name: nil
      make_http_request :patch, uri: uri, body: body, params: params, options: options, method_name: method_name
    end

    def make_put_request uri:, body:, params: {}, options: {}, method_name: nil
      make_http_request :put, uri: uri, body: body, params: params, options: options, method_name: method_name
    end

    def make_http_request *args, **kwargs
      @call_count += 1

      @requests << @block&.call(*args, **kwargs)

      @response
    end

    def endpoint
      "endpoint.example.com"
    end

    def universe_domain
      "example.com"
    end

    def stub_logger
      nil
    end

    def logger
      nil
    end
  end

  def test_enable_service
    # Create test objects.
    client_result = ::Google::Longrunning::Operation.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    enable_service_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::ServiceUsage::V1::ServiceUsage::Rest::ServiceStub.stub :transcode_enable_service_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, enable_service_client_stub do
        # Create client
        client = ::Google::Cloud::ServiceUsage::V1::ServiceUsage::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.enable_service({ name: name }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.enable_service name: name do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.enable_service ::Google::Cloud::ServiceUsage::V1::EnableServiceRequest.new(name: name) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.enable_service({ name: name }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.enable_service(::Google::Cloud::ServiceUsage::V1::EnableServiceRequest.new(name: name), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, enable_service_client_stub.call_count
      end
    end
  end

  def test_disable_service
    # Create test objects.
    client_result = ::Google::Longrunning::Operation.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    name = "hello world"
    disable_dependent_services = true
    check_if_service_has_usage = :CHECK_IF_SERVICE_HAS_USAGE_UNSPECIFIED

    disable_service_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::ServiceUsage::V1::ServiceUsage::Rest::ServiceStub.stub :transcode_disable_service_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, disable_service_client_stub do
        # Create client
        client = ::Google::Cloud::ServiceUsage::V1::ServiceUsage::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.disable_service({ name: name, disable_dependent_services: disable_dependent_services, check_if_service_has_usage: check_if_service_has_usage }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.disable_service name: name, disable_dependent_services: disable_dependent_services, check_if_service_has_usage: check_if_service_has_usage do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.disable_service ::Google::Cloud::ServiceUsage::V1::DisableServiceRequest.new(name: name, disable_dependent_services: disable_dependent_services, check_if_service_has_usage: check_if_service_has_usage) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.disable_service({ name: name, disable_dependent_services: disable_dependent_services, check_if_service_has_usage: check_if_service_has_usage }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.disable_service(::Google::Cloud::ServiceUsage::V1::DisableServiceRequest.new(name: name, disable_dependent_services: disable_dependent_services, check_if_service_has_usage: check_if_service_has_usage), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, disable_service_client_stub.call_count
      end
    end
  end

  def test_get_service
    # Create test objects.
    client_result = ::Google::Cloud::ServiceUsage::V1::Service.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    get_service_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::ServiceUsage::V1::ServiceUsage::Rest::ServiceStub.stub :transcode_get_service_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, get_service_client_stub do
        # Create client
        client = ::Google::Cloud::ServiceUsage::V1::ServiceUsage::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.get_service({ name: name }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.get_service name: name do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.get_service ::Google::Cloud::ServiceUsage::V1::GetServiceRequest.new(name: name) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.get_service({ name: name }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.get_service(::Google::Cloud::ServiceUsage::V1::GetServiceRequest.new(name: name), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, get_service_client_stub.call_count
      end
    end
  end

  def test_list_services
    # Create test objects.
    client_result = ::Google::Cloud::ServiceUsage::V1::ListServicesResponse.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    page_size = 42
    page_token = "hello world"
    filter = "hello world"

    list_services_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::ServiceUsage::V1::ServiceUsage::Rest::ServiceStub.stub :transcode_list_services_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, list_services_client_stub do
        # Create client
        client = ::Google::Cloud::ServiceUsage::V1::ServiceUsage::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.list_services({ parent: parent, page_size: page_size, page_token: page_token, filter: filter }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.list_services parent: parent, page_size: page_size, page_token: page_token, filter: filter do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.list_services ::Google::Cloud::ServiceUsage::V1::ListServicesRequest.new(parent: parent, page_size: page_size, page_token: page_token, filter: filter) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.list_services({ parent: parent, page_size: page_size, page_token: page_token, filter: filter }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.list_services(::Google::Cloud::ServiceUsage::V1::ListServicesRequest.new(parent: parent, page_size: page_size, page_token: page_token, filter: filter), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, list_services_client_stub.call_count
      end
    end
  end

  def test_batch_enable_services
    # Create test objects.
    client_result = ::Google::Longrunning::Operation.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    service_ids = ["hello world"]

    batch_enable_services_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::ServiceUsage::V1::ServiceUsage::Rest::ServiceStub.stub :transcode_batch_enable_services_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, batch_enable_services_client_stub do
        # Create client
        client = ::Google::Cloud::ServiceUsage::V1::ServiceUsage::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.batch_enable_services({ parent: parent, service_ids: service_ids }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.batch_enable_services parent: parent, service_ids: service_ids do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.batch_enable_services ::Google::Cloud::ServiceUsage::V1::BatchEnableServicesRequest.new(parent: parent, service_ids: service_ids) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.batch_enable_services({ parent: parent, service_ids: service_ids }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.batch_enable_services(::Google::Cloud::ServiceUsage::V1::BatchEnableServicesRequest.new(parent: parent, service_ids: service_ids), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, batch_enable_services_client_stub.call_count
      end
    end
  end

  def test_batch_get_services
    # Create test objects.
    client_result = ::Google::Cloud::ServiceUsage::V1::BatchGetServicesResponse.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    names = ["hello world"]

    batch_get_services_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::ServiceUsage::V1::ServiceUsage::Rest::ServiceStub.stub :transcode_batch_get_services_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, batch_get_services_client_stub do
        # Create client
        client = ::Google::Cloud::ServiceUsage::V1::ServiceUsage::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.batch_get_services({ parent: parent, names: names }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.batch_get_services parent: parent, names: names do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.batch_get_services ::Google::Cloud::ServiceUsage::V1::BatchGetServicesRequest.new(parent: parent, names: names) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.batch_get_services({ parent: parent, names: names }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.batch_get_services(::Google::Cloud::ServiceUsage::V1::BatchGetServicesRequest.new(parent: parent, names: names), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, batch_get_services_client_stub.call_count
      end
    end
  end

  def test_configure
    credentials_token = :dummy_value

    client = block_config = config = nil
    dummy_stub = ClientStub.new nil
    Gapic::Rest::ClientStub.stub :new, dummy_stub do
      client = ::Google::Cloud::ServiceUsage::V1::ServiceUsage::Rest::Client.new do |config|
        config.credentials = credentials_token
      end
    end

    config = client.configure do |c|
      block_config = c
    end

    assert_same block_config, config
    assert_kind_of ::Google::Cloud::ServiceUsage::V1::ServiceUsage::Rest::Client::Configuration, config
  end
end
