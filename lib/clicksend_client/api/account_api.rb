=begin
#ClickSend v3 API

# This is an official SDK for [ClickSend](https://clicksend.com)  Below you will find a current list of the available methods for clicksend.  *NOTE: You will need to create a free account to use the API. You can register [here](https://dashboard.clicksend.com/#/signup/step1/)..* 

OpenAPI spec version: 3.1
Contact: support@clicksend.com
Generated by: https://github.com/clicksend-api/clicksend-codegen.git
ClickSend Codegen version: 2.4.5-SNAPSHOT

=end

require 'uri'

module ClickSendClient
  class AccountApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get account information
    # Get account details
    # @param [Hash] opts the optional parameters
    # @return [String]
    def account_get(opts = {})
      data, _status_code, _headers = account_get_with_http_info(opts)
      data
    end

    # Get account information
    # Get account details
    # @param [Hash] opts the optional parameters
    # @return [Array<(String, Fixnum, Hash)>] String data, response status code and response headers
    def account_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AccountApi.account_get ...'
      end
      # resource path
      local_var_path = '/account'

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
        @api_client.config.logger.debug "API called: AccountApi#account_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Create a new account
    # Create An Account
    # @param account Account model
    # @param [Hash] opts the optional parameters
    # @return [String]
    def account_post(account, opts = {})
      data, _status_code, _headers = account_post_with_http_info(account, opts)
      data
    end

    # Create a new account
    # Create An Account
    # @param account Account model
    # @param [Hash] opts the optional parameters
    # @return [Array<(String, Fixnum, Hash)>] String data, response status code and response headers
    def account_post_with_http_info(account, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AccountApi.account_post ...'
      end
      # verify the required parameter 'account' is set
      if @api_client.config.client_side_validation && account.nil?
        fail ArgumentError, "Missing the required parameter 'account' when calling AccountApi.account_post"
      end
      # resource path
      local_var_path = '/account'

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
      post_body = @api_client.object_to_http_body(account)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'String')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AccountApi#account_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get account useage by subaccount
    # Get account useage by subaccount
    # @param year Year to filter by (yyyy)
    # @param month Month to filter by (mm)
    # @param [Hash] opts the optional parameters
    # @return [String]
    def account_useage_by_subaccount_get(year, month, opts = {})
      data, _status_code, _headers = account_useage_by_subaccount_get_with_http_info(year, month, opts)
      data
    end

    # Get account useage by subaccount
    # Get account useage by subaccount
    # @param year Year to filter by (yyyy)
    # @param month Month to filter by (mm)
    # @param [Hash] opts the optional parameters
    # @return [Array<(String, Fixnum, Hash)>] String data, response status code and response headers
    def account_useage_by_subaccount_get_with_http_info(year, month, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AccountApi.account_useage_by_subaccount_get ...'
      end
      # verify the required parameter 'year' is set
      if @api_client.config.client_side_validation && year.nil?
        fail ArgumentError, "Missing the required parameter 'year' when calling AccountApi.account_useage_by_subaccount_get"
      end
      # verify the required parameter 'month' is set
      if @api_client.config.client_side_validation && month.nil?
        fail ArgumentError, "Missing the required parameter 'month' when calling AccountApi.account_useage_by_subaccount_get"
      end
      # resource path
      local_var_path = '/account/usage/{year}/{month}/subaccount'.sub('{' + 'year' + '}', year.to_s).sub('{' + 'month' + '}', month.to_s)

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
        @api_client.config.logger.debug "API called: AccountApi#account_useage_by_subaccount_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Send account activation token
    # Send account activation token
    # @param account_verify Account details
    # @param [Hash] opts the optional parameters
    # @return [String]
    def account_verify_send_put(account_verify, opts = {})
      data, _status_code, _headers = account_verify_send_put_with_http_info(account_verify, opts)
      data
    end

    # Send account activation token
    # Send account activation token
    # @param account_verify Account details
    # @param [Hash] opts the optional parameters
    # @return [Array<(String, Fixnum, Hash)>] String data, response status code and response headers
    def account_verify_send_put_with_http_info(account_verify, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AccountApi.account_verify_send_put ...'
      end
      # verify the required parameter 'account_verify' is set
      if @api_client.config.client_side_validation && account_verify.nil?
        fail ArgumentError, "Missing the required parameter 'account_verify' when calling AccountApi.account_verify_send_put"
      end
      # resource path
      local_var_path = '/account-verify/send'

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
      post_body = @api_client.object_to_http_body(account_verify)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'String')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AccountApi#account_verify_send_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Verify new account
    # Verify new account
    # @param activation_token 
    # @param [Hash] opts the optional parameters
    # @return [String]
    def account_verify_verify_by_activation_token_put(activation_token, opts = {})
      data, _status_code, _headers = account_verify_verify_by_activation_token_put_with_http_info(activation_token, opts)
      data
    end

    # Verify new account
    # Verify new account
    # @param activation_token 
    # @param [Hash] opts the optional parameters
    # @return [Array<(String, Fixnum, Hash)>] String data, response status code and response headers
    def account_verify_verify_by_activation_token_put_with_http_info(activation_token, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AccountApi.account_verify_verify_by_activation_token_put ...'
      end
      # verify the required parameter 'activation_token' is set
      if @api_client.config.client_side_validation && activation_token.nil?
        fail ArgumentError, "Missing the required parameter 'activation_token' when calling AccountApi.account_verify_verify_by_activation_token_put"
      end
      # resource path
      local_var_path = '/account-verify/verify/{activation_token}'.sub('{' + 'activation_token' + '}', activation_token.to_s)

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
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'String')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AccountApi#account_verify_verify_by_activation_token_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Forgot password
    # Forgot password
    # @param [Hash] opts the optional parameters
    # @option opts [ForgotPassword] :forgot_password 
    # @return [String]
    def forgot_password_put(opts = {})
      data, _status_code, _headers = forgot_password_put_with_http_info(opts)
      data
    end

    # Forgot password
    # Forgot password
    # @param [Hash] opts the optional parameters
    # @option opts [ForgotPassword] :forgot_password 
    # @return [Array<(String, Fixnum, Hash)>] String data, response status code and response headers
    def forgot_password_put_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AccountApi.forgot_password_put ...'
      end
      # resource path
      local_var_path = '/forgot-password'

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
      post_body = @api_client.object_to_http_body(opts[:'forgot_password'])
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'String')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AccountApi#forgot_password_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Verify forgot password
    # Verify forgot password
    # @param verify_password verifyPassword data
    # @param [Hash] opts the optional parameters
    # @return [String]
    def forgot_password_verify_put(verify_password, opts = {})
      data, _status_code, _headers = forgot_password_verify_put_with_http_info(verify_password, opts)
      data
    end

    # Verify forgot password
    # Verify forgot password
    # @param verify_password verifyPassword data
    # @param [Hash] opts the optional parameters
    # @return [Array<(String, Fixnum, Hash)>] String data, response status code and response headers
    def forgot_password_verify_put_with_http_info(verify_password, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AccountApi.forgot_password_verify_put ...'
      end
      # verify the required parameter 'verify_password' is set
      if @api_client.config.client_side_validation && verify_password.nil?
        fail ArgumentError, "Missing the required parameter 'verify_password' when calling AccountApi.forgot_password_verify_put"
      end
      # resource path
      local_var_path = '/forgot-password/verify'

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
      post_body = @api_client.object_to_http_body(verify_password)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'String')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AccountApi#forgot_password_verify_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Forgot username
    # Forgot username
    # @param [Hash] opts the optional parameters
    # @option opts [ForgotUsername] :forgot_username 
    # @return [String]
    def forgot_username_put(opts = {})
      data, _status_code, _headers = forgot_username_put_with_http_info(opts)
      data
    end

    # Forgot username
    # Forgot username
    # @param [Hash] opts the optional parameters
    # @option opts [ForgotUsername] :forgot_username 
    # @return [Array<(String, Fixnum, Hash)>] String data, response status code and response headers
    def forgot_username_put_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AccountApi.forgot_username_put ...'
      end
      # resource path
      local_var_path = '/forgot-username'

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
      post_body = @api_client.object_to_http_body(opts[:'forgot_username'])
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'String')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AccountApi#forgot_username_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
