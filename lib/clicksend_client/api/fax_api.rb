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
  class FAXApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get a list of Fax History.
    # Get a list of Fax History.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :date_from Customize result by setting from date (timestsamp) Example: 1457572619.
    # @option opts [Integer] :date_to Customize result by setting to date (timestamp) Example: 1457573000.
    # @option opts [String] :q Custom query Example: status:Sent,status_code:201.
    # @option opts [String] :order Order result by Example: date_added:desc,list_id:desc.
    # @option opts [Integer] :page Page number (default to 1)
    # @option opts [Integer] :limit Number of records per page (default to 10)
    # @return [String]
    def fax_history_get(opts = {})
      data, _status_code, _headers = fax_history_get_with_http_info(opts)
      data
    end

    # Get a list of Fax History.
    # Get a list of Fax History.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :date_from Customize result by setting from date (timestsamp) Example: 1457572619.
    # @option opts [Integer] :date_to Customize result by setting to date (timestamp) Example: 1457573000.
    # @option opts [String] :q Custom query Example: status:Sent,status_code:201.
    # @option opts [String] :order Order result by Example: date_added:desc,list_id:desc.
    # @option opts [Integer] :page Page number
    # @option opts [Integer] :limit Number of records per page
    # @return [Array<(String, Fixnum, Hash)>] String data, response status code and response headers
    def fax_history_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FAXApi.fax_history_get ...'
      end
      if @api_client.config.client_side_validation && !opts[:'page'].nil? && opts[:'page'] < 1
        fail ArgumentError, 'invalid value for "opts[:"page"]" when calling FAXApi.fax_history_get, must be greater than or equal to 1.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] < 1
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling FAXApi.fax_history_get, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/fax/history'

      # query parameters
      query_params = {}
      query_params[:'date_from'] = opts[:'date_from'] if !opts[:'date_from'].nil?
      query_params[:'date_to'] = opts[:'date_to'] if !opts[:'date_to'].nil?
      query_params[:'q'] = opts[:'q'] if !opts[:'q'].nil?
      query_params[:'order'] = opts[:'order'] if !opts[:'order'].nil?
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
        @api_client.config.logger.debug "API called: FAXApi#fax_history_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Calculate Total Price for Fax Messages sent
    # Calculate Total Price for Fax Messages sent
    # @param fax_message FaxMessageCollection model
    # @param [Hash] opts the optional parameters
    # @return [String]
    def fax_price_post(fax_message, opts = {})
      data, _status_code, _headers = fax_price_post_with_http_info(fax_message, opts)
      data
    end

    # Calculate Total Price for Fax Messages sent
    # Calculate Total Price for Fax Messages sent
    # @param fax_message FaxMessageCollection model
    # @param [Hash] opts the optional parameters
    # @return [Array<(String, Fixnum, Hash)>] String data, response status code and response headers
    def fax_price_post_with_http_info(fax_message, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FAXApi.fax_price_post ...'
      end
      # verify the required parameter 'fax_message' is set
      if @api_client.config.client_side_validation && fax_message.nil?
        fail ArgumentError, "Missing the required parameter 'fax_message' when calling FAXApi.fax_price_post"
      end
      # resource path
      local_var_path = '/fax/price'

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
      post_body = @api_client.object_to_http_body(fax_message)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'String')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FAXApi#fax_price_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get a single fax receipt based on message id.
    # Get a single fax receipt based on message id.
    # @param message_id ID of the message receipt to retrieve
    # @param [Hash] opts the optional parameters
    # @return [String]
    def fax_receipts_by_message_id_get(message_id, opts = {})
      data, _status_code, _headers = fax_receipts_by_message_id_get_with_http_info(message_id, opts)
      data
    end

    # Get a single fax receipt based on message id.
    # Get a single fax receipt based on message id.
    # @param message_id ID of the message receipt to retrieve
    # @param [Hash] opts the optional parameters
    # @return [Array<(String, Fixnum, Hash)>] String data, response status code and response headers
    def fax_receipts_by_message_id_get_with_http_info(message_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FAXApi.fax_receipts_by_message_id_get ...'
      end
      # verify the required parameter 'message_id' is set
      if @api_client.config.client_side_validation && message_id.nil?
        fail ArgumentError, "Missing the required parameter 'message_id' when calling FAXApi.fax_receipts_by_message_id_get"
      end
      # resource path
      local_var_path = '/fax/receipts/{message_id}'.sub('{' + 'message_id' + '}', message_id.to_s)

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
        @api_client.config.logger.debug "API called: FAXApi#fax_receipts_by_message_id_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get all delivery receipts
    # Get all delivery receipts
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page number (default to 1)
    # @option opts [Integer] :limit Number of records per page (default to 10)
    # @return [String]
    def fax_receipts_get(opts = {})
      data, _status_code, _headers = fax_receipts_get_with_http_info(opts)
      data
    end

    # Get all delivery receipts
    # Get all delivery receipts
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page number
    # @option opts [Integer] :limit Number of records per page
    # @return [Array<(String, Fixnum, Hash)>] String data, response status code and response headers
    def fax_receipts_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FAXApi.fax_receipts_get ...'
      end
      if @api_client.config.client_side_validation && !opts[:'page'].nil? && opts[:'page'] < 1
        fail ArgumentError, 'invalid value for "opts[:"page"]" when calling FAXApi.fax_receipts_get, must be greater than or equal to 1.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] < 1
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling FAXApi.fax_receipts_get, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/fax/receipts'

      # query parameters
      query_params = {}
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
        @api_client.config.logger.debug "API called: FAXApi#fax_receipts_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Add a delivery receipt
    # Add a delivery receipt
    # @param url Url model
    # @param [Hash] opts the optional parameters
    # @return [String]
    def fax_receipts_post(url, opts = {})
      data, _status_code, _headers = fax_receipts_post_with_http_info(url, opts)
      data
    end

    # Add a delivery receipt
    # Add a delivery receipt
    # @param url Url model
    # @param [Hash] opts the optional parameters
    # @return [Array<(String, Fixnum, Hash)>] String data, response status code and response headers
    def fax_receipts_post_with_http_info(url, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FAXApi.fax_receipts_post ...'
      end
      # verify the required parameter 'url' is set
      if @api_client.config.client_side_validation && url.nil?
        fail ArgumentError, "Missing the required parameter 'url' when calling FAXApi.fax_receipts_post"
      end
      # resource path
      local_var_path = '/fax/receipts'

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
      post_body = @api_client.object_to_http_body(url)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'String')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FAXApi#fax_receipts_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Mark delivery receipts as read
    # Mark delivery receipts as read
    # @param [Hash] opts the optional parameters
    # @option opts [DateBefore] :date_before DateBefore model
    # @return [String]
    def fax_receipts_read_put(opts = {})
      data, _status_code, _headers = fax_receipts_read_put_with_http_info(opts)
      data
    end

    # Mark delivery receipts as read
    # Mark delivery receipts as read
    # @param [Hash] opts the optional parameters
    # @option opts [DateBefore] :date_before DateBefore model
    # @return [Array<(String, Fixnum, Hash)>] String data, response status code and response headers
    def fax_receipts_read_put_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FAXApi.fax_receipts_read_put ...'
      end
      # resource path
      local_var_path = '/fax/receipts-read'

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
      post_body = @api_client.object_to_http_body(opts[:'date_before'])
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'String')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FAXApi#fax_receipts_read_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Send a fax using supplied supported file-types.
    # Send a fax using supplied supported file-types.
    # @param fax_message FaxMessageCollection model
    # @param [Hash] opts the optional parameters
    # @return [String]
    def fax_send_post(fax_message, opts = {})
      data, _status_code, _headers = fax_send_post_with_http_info(fax_message, opts)
      data
    end

    # Send a fax using supplied supported file-types.
    # Send a fax using supplied supported file-types.
    # @param fax_message FaxMessageCollection model
    # @param [Hash] opts the optional parameters
    # @return [Array<(String, Fixnum, Hash)>] String data, response status code and response headers
    def fax_send_post_with_http_info(fax_message, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FAXApi.fax_send_post ...'
      end
      # verify the required parameter 'fax_message' is set
      if @api_client.config.client_side_validation && fax_message.nil?
        fail ArgumentError, "Missing the required parameter 'fax_message' when calling FAXApi.fax_send_post"
      end
      # resource path
      local_var_path = '/fax/send'

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
      post_body = @api_client.object_to_http_body(fax_message)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'String')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FAXApi#fax_send_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
