=begin
#ClickSend v3 API

# This is an official SDK for [ClickSend](https://clicksend.com)  Below you will find a current list of the available methods for clicksend.  *NOTE: You will need to create a free account to use the API. You can register [here](https://dashboard.clicksend.com/#/signup/step1/)..* 

OpenAPI spec version: 3.1
Contact: support@clicksend.com
Generated by: https://github.com/clicksend-api/clicksend-codegen.git
ClickSend Codegen version: 2.4.13-SNAPSHOT

=end

require 'uri'

module ClickSendClient
  class DetectAddressApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Detects address in uploaded file.
    # Detects address in uploaded file.
    # @param upload_file Your file to be uploaded
    # @param [Hash] opts the optional parameters
    # @return [String]
    def detect_address_post(upload_file, opts = {})
      data, _status_code, _headers = detect_address_post_with_http_info(upload_file, opts)
      data
    end

    # Detects address in uploaded file.
    # Detects address in uploaded file.
    # @param upload_file Your file to be uploaded
    # @param [Hash] opts the optional parameters
    # @return [Array<(String, Fixnum, Hash)>] String data, response status code and response headers
    def detect_address_post_with_http_info(upload_file, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DetectAddressApi.detect_address_post ...'
      end
      # verify the required parameter 'upload_file' is set
      if @api_client.config.client_side_validation && upload_file.nil?
        fail ArgumentError, "Missing the required parameter 'upload_file' when calling DetectAddressApi.detect_address_post"
      end
      # resource path
      local_var_path = '/post/letters/detect-address'

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(upload_file)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'String')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DetectAddressApi#detect_address_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
