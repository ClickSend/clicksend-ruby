=begin
#ClickSend v3 API

# This is an official SDK for [ClickSend](https://clicksend.com)  Below you will find a current list of the available methods for clicksend.  *NOTE: You will need to create a free account to use the API. You can register [here](https://dashboard.clicksend.com/#/signup/step1/)..* 

OpenAPI spec version: 3.1
Contact: support@clicksend.com
Generated by: https://github.com/clicksend-api/clicksend-codegen.git
ClickSend Codegen version: 2.4.19-SNAPSHOT

=end

require 'uri'

module ClickSendClient
  class ResellerAccountApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get Reseller clients Account
    # Get Reseller clients Account
    # @param client_user_id User ID of client
    # @param [Hash] opts the optional parameters
    # @return [String]
    def reseller_accounts_by_client_user_id_get(client_user_id, opts = {})
      data, _status_code, _headers = reseller_accounts_by_client_user_id_get_with_http_info(client_user_id, opts)
      data
    end

    # Get Reseller clients Account
    # Get Reseller clients Account
    # @param client_user_id User ID of client
    # @param [Hash] opts the optional parameters
    # @return [Array<(String, Fixnum, Hash)>] String data, response status code and response headers
    def reseller_accounts_by_client_user_id_get_with_http_info(client_user_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ResellerAccountApi.reseller_accounts_by_client_user_id_get ...'
      end
      # verify the required parameter 'client_user_id' is set
      if @api_client.config.client_side_validation && client_user_id.nil?
        fail ArgumentError, "Missing the required parameter 'client_user_id' when calling ResellerAccountApi.reseller_accounts_by_client_user_id_get"
      end
      # resource path
      local_var_path = '/reseller/accounts/{client_user_id}'.sub('{' + 'client_user_id' + '}', client_user_id.to_s)

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
        @api_client.config.logger.debug "API called: ResellerAccountApi#reseller_accounts_by_client_user_id_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Update Reseller clients Account
    # Update Reseller clients Account
    # @param client_user_id User ID of client
    # @param reseller_account ResellerAccount model
    # @param [Hash] opts the optional parameters
    # @return [String]
    def reseller_accounts_by_client_user_id_put(client_user_id, reseller_account, opts = {})
      data, _status_code, _headers = reseller_accounts_by_client_user_id_put_with_http_info(client_user_id, reseller_account, opts)
      data
    end

    # Update Reseller clients Account
    # Update Reseller clients Account
    # @param client_user_id User ID of client
    # @param reseller_account ResellerAccount model
    # @param [Hash] opts the optional parameters
    # @return [Array<(String, Fixnum, Hash)>] String data, response status code and response headers
    def reseller_accounts_by_client_user_id_put_with_http_info(client_user_id, reseller_account, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ResellerAccountApi.reseller_accounts_by_client_user_id_put ...'
      end
      # verify the required parameter 'client_user_id' is set
      if @api_client.config.client_side_validation && client_user_id.nil?
        fail ArgumentError, "Missing the required parameter 'client_user_id' when calling ResellerAccountApi.reseller_accounts_by_client_user_id_put"
      end
      # verify the required parameter 'reseller_account' is set
      if @api_client.config.client_side_validation && reseller_account.nil?
        fail ArgumentError, "Missing the required parameter 'reseller_account' when calling ResellerAccountApi.reseller_accounts_by_client_user_id_put"
      end
      # resource path
      local_var_path = '/reseller/accounts/{client_user_id}'.sub('{' + 'client_user_id' + '}', client_user_id.to_s)

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
      post_body = @api_client.object_to_http_body(reseller_account)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'String')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ResellerAccountApi#reseller_accounts_by_client_user_id_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get list of reseller accounts
    # Get list of reseller accounts
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page number (default to 1)
    # @option opts [Integer] :limit Number of records per page (default to 10)
    # @return [String]
    def reseller_accounts_get(opts = {})
      data, _status_code, _headers = reseller_accounts_get_with_http_info(opts)
      data
    end

    # Get list of reseller accounts
    # Get list of reseller accounts
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page number
    # @option opts [Integer] :limit Number of records per page
    # @return [Array<(String, Fixnum, Hash)>] String data, response status code and response headers
    def reseller_accounts_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ResellerAccountApi.reseller_accounts_get ...'
      end
      if @api_client.config.client_side_validation && !opts[:'page'].nil? && opts[:'page'] < 1
        fail ArgumentError, 'invalid value for "opts[:"page"]" when calling ResellerAccountApi.reseller_accounts_get, must be greater than or equal to 1.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] < 1
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling ResellerAccountApi.reseller_accounts_get, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/reseller/accounts'

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
        @api_client.config.logger.debug "API called: ResellerAccountApi#reseller_accounts_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Create reseller account
    # Create reseller account
    # @param reseller_account ResellerAccount model
    # @param [Hash] opts the optional parameters
    # @return [String]
    def reseller_accounts_post(reseller_account, opts = {})
      data, _status_code, _headers = reseller_accounts_post_with_http_info(reseller_account, opts)
      data
    end

    # Create reseller account
    # Create reseller account
    # @param reseller_account ResellerAccount model
    # @param [Hash] opts the optional parameters
    # @return [Array<(String, Fixnum, Hash)>] String data, response status code and response headers
    def reseller_accounts_post_with_http_info(reseller_account, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ResellerAccountApi.reseller_accounts_post ...'
      end
      # verify the required parameter 'reseller_account' is set
      if @api_client.config.client_side_validation && reseller_account.nil?
        fail ArgumentError, "Missing the required parameter 'reseller_account' when calling ResellerAccountApi.reseller_accounts_post"
      end
      # resource path
      local_var_path = '/reseller/accounts'

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
      post_body = @api_client.object_to_http_body(reseller_account)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'String')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ResellerAccountApi#reseller_accounts_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
