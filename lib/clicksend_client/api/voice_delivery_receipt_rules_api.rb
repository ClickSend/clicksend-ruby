=begin
#ClickSend v3 API

# This is an official SDK for [ClickSend](https://clicksend.com)  Below you will find a current list of the available methods for clicksend.  *NOTE: You will need to create a free account to use the API. You can register [here](https://dashboard.clicksend.com/#/signup/step1/)..* 

OpenAPI spec version: 3.1
Contact: support@clicksend.com
Generated by: https://github.com/clicksend-api/clicksend-codegen.git
ClickSend Codegen version: 2.4.10-SNAPSHOT

=end

require 'uri'

module ClickSendClient
  class VoiceDeliveryReceiptRulesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Delete voice delivery receipt automation
    # Delete voice delivery receipt automation
    # @param receipt_rule_id Receipt rule id
    # @param [Hash] opts the optional parameters
    # @return [String]
    def voice_delivery_receipt_automation_delete(receipt_rule_id, opts = {})
      data, _status_code, _headers = voice_delivery_receipt_automation_delete_with_http_info(receipt_rule_id, opts)
      data
    end

    # Delete voice delivery receipt automation
    # Delete voice delivery receipt automation
    # @param receipt_rule_id Receipt rule id
    # @param [Hash] opts the optional parameters
    # @return [Array<(String, Fixnum, Hash)>] String data, response status code and response headers
    def voice_delivery_receipt_automation_delete_with_http_info(receipt_rule_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VoiceDeliveryReceiptRulesApi.voice_delivery_receipt_automation_delete ...'
      end
      # verify the required parameter 'receipt_rule_id' is set
      if @api_client.config.client_side_validation && receipt_rule_id.nil?
        fail ArgumentError, "Missing the required parameter 'receipt_rule_id' when calling VoiceDeliveryReceiptRulesApi.voice_delivery_receipt_automation_delete"
      end
      # resource path
      local_var_path = '/automations/voice/receipts/{receipt_rule_id}'.sub('{' + 'receipt_rule_id' + '}', receipt_rule_id.to_s)

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
      post_body = nil
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'String')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: VoiceDeliveryReceiptRulesApi#voice_delivery_receipt_automation_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get specific voice delivery receipt automation
    # Get specific voice delivery receipt automation
    # @param receipt_rule_id Receipt rule id
    # @param [Hash] opts the optional parameters
    # @return [String]
    def voice_delivery_receipt_automation_get(receipt_rule_id, opts = {})
      data, _status_code, _headers = voice_delivery_receipt_automation_get_with_http_info(receipt_rule_id, opts)
      data
    end

    # Get specific voice delivery receipt automation
    # Get specific voice delivery receipt automation
    # @param receipt_rule_id Receipt rule id
    # @param [Hash] opts the optional parameters
    # @return [Array<(String, Fixnum, Hash)>] String data, response status code and response headers
    def voice_delivery_receipt_automation_get_with_http_info(receipt_rule_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VoiceDeliveryReceiptRulesApi.voice_delivery_receipt_automation_get ...'
      end
      # verify the required parameter 'receipt_rule_id' is set
      if @api_client.config.client_side_validation && receipt_rule_id.nil?
        fail ArgumentError, "Missing the required parameter 'receipt_rule_id' when calling VoiceDeliveryReceiptRulesApi.voice_delivery_receipt_automation_get"
      end
      # resource path
      local_var_path = '/automations/voice/receipts/{receipt_rule_id}'.sub('{' + 'receipt_rule_id' + '}', receipt_rule_id.to_s)

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
      post_body = nil
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'String')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: VoiceDeliveryReceiptRulesApi#voice_delivery_receipt_automation_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Create voice delivery receipt automations
    # Create voice delivery receipt automations
    # @param delivery_receipt_rule voice delivery receipt rule model
    # @param [Hash] opts the optional parameters
    # @return [String]
    def voice_delivery_receipt_automation_post(delivery_receipt_rule, opts = {})
      data, _status_code, _headers = voice_delivery_receipt_automation_post_with_http_info(delivery_receipt_rule, opts)
      data
    end

    # Create voice delivery receipt automations
    # Create voice delivery receipt automations
    # @param delivery_receipt_rule voice delivery receipt rule model
    # @param [Hash] opts the optional parameters
    # @return [Array<(String, Fixnum, Hash)>] String data, response status code and response headers
    def voice_delivery_receipt_automation_post_with_http_info(delivery_receipt_rule, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VoiceDeliveryReceiptRulesApi.voice_delivery_receipt_automation_post ...'
      end
      # verify the required parameter 'delivery_receipt_rule' is set
      if @api_client.config.client_side_validation && delivery_receipt_rule.nil?
        fail ArgumentError, "Missing the required parameter 'delivery_receipt_rule' when calling VoiceDeliveryReceiptRulesApi.voice_delivery_receipt_automation_post"
      end
      # resource path
      local_var_path = '/automations/voice/receipts'

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
      post_body = @api_client.object_to_http_body(delivery_receipt_rule)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'String')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: VoiceDeliveryReceiptRulesApi#voice_delivery_receipt_automation_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Update voice delivery receipt automation
    # Update voice delivery receipt automation
    # @param receipt_rule_id Receipt rule id
    # @param delivery_receipt_rule Delivery receipt rule model
    # @param [Hash] opts the optional parameters
    # @return [String]
    def voice_delivery_receipt_automation_put(receipt_rule_id, delivery_receipt_rule, opts = {})
      data, _status_code, _headers = voice_delivery_receipt_automation_put_with_http_info(receipt_rule_id, delivery_receipt_rule, opts)
      data
    end

    # Update voice delivery receipt automation
    # Update voice delivery receipt automation
    # @param receipt_rule_id Receipt rule id
    # @param delivery_receipt_rule Delivery receipt rule model
    # @param [Hash] opts the optional parameters
    # @return [Array<(String, Fixnum, Hash)>] String data, response status code and response headers
    def voice_delivery_receipt_automation_put_with_http_info(receipt_rule_id, delivery_receipt_rule, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VoiceDeliveryReceiptRulesApi.voice_delivery_receipt_automation_put ...'
      end
      # verify the required parameter 'receipt_rule_id' is set
      if @api_client.config.client_side_validation && receipt_rule_id.nil?
        fail ArgumentError, "Missing the required parameter 'receipt_rule_id' when calling VoiceDeliveryReceiptRulesApi.voice_delivery_receipt_automation_put"
      end
      # verify the required parameter 'delivery_receipt_rule' is set
      if @api_client.config.client_side_validation && delivery_receipt_rule.nil?
        fail ArgumentError, "Missing the required parameter 'delivery_receipt_rule' when calling VoiceDeliveryReceiptRulesApi.voice_delivery_receipt_automation_put"
      end
      # resource path
      local_var_path = '/automations/voice/receipts/{receipt_rule_id}'.sub('{' + 'receipt_rule_id' + '}', receipt_rule_id.to_s)

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
      post_body = @api_client.object_to_http_body(delivery_receipt_rule)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'String')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: VoiceDeliveryReceiptRulesApi#voice_delivery_receipt_automation_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get all voice delivery receipt automations
    # Get all voice delivery receipt automations
    # @param [Hash] opts the optional parameters
    # @option opts [String] :q Your keyword or query.
    # @option opts [Integer] :page Page number (default to 1)
    # @option opts [Integer] :limit Number of records per page (default to 10)
    # @return [String]
    def voice_delivery_receipt_automations_get(opts = {})
      data, _status_code, _headers = voice_delivery_receipt_automations_get_with_http_info(opts)
      data
    end

    # Get all voice delivery receipt automations
    # Get all voice delivery receipt automations
    # @param [Hash] opts the optional parameters
    # @option opts [String] :q Your keyword or query.
    # @option opts [Integer] :page Page number
    # @option opts [Integer] :limit Number of records per page
    # @return [Array<(String, Fixnum, Hash)>] String data, response status code and response headers
    def voice_delivery_receipt_automations_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VoiceDeliveryReceiptRulesApi.voice_delivery_receipt_automations_get ...'
      end
      if @api_client.config.client_side_validation && !opts[:'page'].nil? && opts[:'page'] < 1
        fail ArgumentError, 'invalid value for "opts[:"page"]" when calling VoiceDeliveryReceiptRulesApi.voice_delivery_receipt_automations_get, must be greater than or equal to 1.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] < 1
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling VoiceDeliveryReceiptRulesApi.voice_delivery_receipt_automations_get, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/automations/voice/receipts'

      # query parameters
      query_params = {}
      query_params[:'q'] = opts[:'q'] if !opts[:'q'].nil?
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'String')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: VoiceDeliveryReceiptRulesApi#voice_delivery_receipt_automations_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
