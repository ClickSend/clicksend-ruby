=begin
#ClickSend v3 API

# This is an official SDK for [ClickSend](https://clicksend.com)  Below you will find a current list of the available methods for clicksend.  *NOTE: You will need to create a free account to use the API. You can register [here](https://dashboard.clicksend.com/#/signup/step1/)..* 

OpenAPI spec version: 3.1
Contact: support@clicksend.com
Generated by: https://github.com/clicksend-api/clicksend-codegen.git
ClickSend Codegen version: 2.4.36

=end

require 'uri'

module ClickSendClient
  class EmailToSmsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get list of email to sms allowed addresses
    # Get list of email to sms allowed addresses
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page number (default to 1)
    # @option opts [Integer] :limit Number of records per page (default to 10)
    # @return [String]
    def sms_email_sms_get(opts = {})
      data, _status_code, _headers = sms_email_sms_get_with_http_info(opts)
      data
    end

    # Get list of email to sms allowed addresses
    # Get list of email to sms allowed addresses
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page number
    # @option opts [Integer] :limit Number of records per page
    # @return [Array<(String, Fixnum, Hash)>] String data, response status code and response headers
    def sms_email_sms_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: EmailToSmsApi.sms_email_sms_get ...'
      end
      if @api_client.config.client_side_validation && !opts[:'page'].nil? && opts[:'page'] < 1
        fail ArgumentError, 'invalid value for "opts[:"page"]" when calling EmailToSmsApi.sms_email_sms_get, must be greater than or equal to 1.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] < 1
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling EmailToSmsApi.sms_email_sms_get, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/sms/email-sms'

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
        @api_client.config.logger.debug "API called: EmailToSmsApi#sms_email_sms_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Create email to sms allowed address
    # Create email to sms allowed address
    # @param email_sms_address EmailSMSAddress model
    # @param [Hash] opts the optional parameters
    # @return [String]
    def sms_email_sms_post(email_sms_address, opts = {})
      data, _status_code, _headers = sms_email_sms_post_with_http_info(email_sms_address, opts)
      data
    end

    # Create email to sms allowed address
    # Create email to sms allowed address
    # @param email_sms_address EmailSMSAddress model
    # @param [Hash] opts the optional parameters
    # @return [Array<(String, Fixnum, Hash)>] String data, response status code and response headers
    def sms_email_sms_post_with_http_info(email_sms_address, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: EmailToSmsApi.sms_email_sms_post ...'
      end
      # verify the required parameter 'email_sms_address' is set
      if @api_client.config.client_side_validation && email_sms_address.nil?
        fail ArgumentError, "Missing the required parameter 'email_sms_address' when calling EmailToSmsApi.sms_email_sms_post"
      end
      # resource path
      local_var_path = '/sms/email-sms'

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
      post_body = @api_client.object_to_http_body(email_sms_address)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'String')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: EmailToSmsApi#sms_email_sms_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Delete email to sms stripped string rule
    # Delete email to sms stripped string rule
    # @param rule_id Your rule id
    # @param [Hash] opts the optional parameters
    # @return [String]
    def sms_email_sms_stripped_string_delete(rule_id, opts = {})
      data, _status_code, _headers = sms_email_sms_stripped_string_delete_with_http_info(rule_id, opts)
      data
    end

    # Delete email to sms stripped string rule
    # Delete email to sms stripped string rule
    # @param rule_id Your rule id
    # @param [Hash] opts the optional parameters
    # @return [Array<(String, Fixnum, Hash)>] String data, response status code and response headers
    def sms_email_sms_stripped_string_delete_with_http_info(rule_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: EmailToSmsApi.sms_email_sms_stripped_string_delete ...'
      end
      # verify the required parameter 'rule_id' is set
      if @api_client.config.client_side_validation && rule_id.nil?
        fail ArgumentError, "Missing the required parameter 'rule_id' when calling EmailToSmsApi.sms_email_sms_stripped_string_delete"
      end
      # resource path
      local_var_path = '/sms/email-sms-stripped-strings/{rule_id}'.sub('{' + 'rule_id' + '}', rule_id.to_s)

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
        @api_client.config.logger.debug "API called: EmailToSmsApi#sms_email_sms_stripped_string_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get email to sms stripped string rule
    # Get email to sms stripped string rule
    # @param rule_id Your rule id
    # @param [Hash] opts the optional parameters
    # @return [String]
    def sms_email_sms_stripped_string_get(rule_id, opts = {})
      data, _status_code, _headers = sms_email_sms_stripped_string_get_with_http_info(rule_id, opts)
      data
    end

    # Get email to sms stripped string rule
    # Get email to sms stripped string rule
    # @param rule_id Your rule id
    # @param [Hash] opts the optional parameters
    # @return [Array<(String, Fixnum, Hash)>] String data, response status code and response headers
    def sms_email_sms_stripped_string_get_with_http_info(rule_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: EmailToSmsApi.sms_email_sms_stripped_string_get ...'
      end
      # verify the required parameter 'rule_id' is set
      if @api_client.config.client_side_validation && rule_id.nil?
        fail ArgumentError, "Missing the required parameter 'rule_id' when calling EmailToSmsApi.sms_email_sms_stripped_string_get"
      end
      # resource path
      local_var_path = '/sms/email-sms-stripped-strings/{rule_id}'.sub('{' + 'rule_id' + '}', rule_id.to_s)

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
        @api_client.config.logger.debug "API called: EmailToSmsApi#sms_email_sms_stripped_string_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Create email to sms stripped string rule
    # Create email to sms stripped string rules
    # @param stripped_string StrippedString model
    # @param [Hash] opts the optional parameters
    # @return [String]
    def sms_email_sms_stripped_string_post(stripped_string, opts = {})
      data, _status_code, _headers = sms_email_sms_stripped_string_post_with_http_info(stripped_string, opts)
      data
    end

    # Create email to sms stripped string rule
    # Create email to sms stripped string rules
    # @param stripped_string StrippedString model
    # @param [Hash] opts the optional parameters
    # @return [Array<(String, Fixnum, Hash)>] String data, response status code and response headers
    def sms_email_sms_stripped_string_post_with_http_info(stripped_string, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: EmailToSmsApi.sms_email_sms_stripped_string_post ...'
      end
      # verify the required parameter 'stripped_string' is set
      if @api_client.config.client_side_validation && stripped_string.nil?
        fail ArgumentError, "Missing the required parameter 'stripped_string' when calling EmailToSmsApi.sms_email_sms_stripped_string_post"
      end
      # resource path
      local_var_path = '/sms/email-sms-stripped-strings'

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
      post_body = @api_client.object_to_http_body(stripped_string)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'String')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: EmailToSmsApi#sms_email_sms_stripped_string_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Update email to sms stripped string rule
    # Update email to sms stripped string rule
    # @param stripped_string StrippedString model
    # @param rule_id Your rule id
    # @param [Hash] opts the optional parameters
    # @return [String]
    def sms_email_sms_stripped_string_put(stripped_string, rule_id, opts = {})
      data, _status_code, _headers = sms_email_sms_stripped_string_put_with_http_info(stripped_string, rule_id, opts)
      data
    end

    # Update email to sms stripped string rule
    # Update email to sms stripped string rule
    # @param stripped_string StrippedString model
    # @param rule_id Your rule id
    # @param [Hash] opts the optional parameters
    # @return [Array<(String, Fixnum, Hash)>] String data, response status code and response headers
    def sms_email_sms_stripped_string_put_with_http_info(stripped_string, rule_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: EmailToSmsApi.sms_email_sms_stripped_string_put ...'
      end
      # verify the required parameter 'stripped_string' is set
      if @api_client.config.client_side_validation && stripped_string.nil?
        fail ArgumentError, "Missing the required parameter 'stripped_string' when calling EmailToSmsApi.sms_email_sms_stripped_string_put"
      end
      # verify the required parameter 'rule_id' is set
      if @api_client.config.client_side_validation && rule_id.nil?
        fail ArgumentError, "Missing the required parameter 'rule_id' when calling EmailToSmsApi.sms_email_sms_stripped_string_put"
      end
      # resource path
      local_var_path = '/sms/email-sms-stripped-strings/{rule_id}'.sub('{' + 'rule_id' + '}', rule_id.to_s)

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
      post_body = @api_client.object_to_http_body(stripped_string)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'String')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: EmailToSmsApi#sms_email_sms_stripped_string_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get list of email to sms stripped string rules
    # Get list of email to sms stripped string rules
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page number (default to 1)
    # @option opts [Integer] :limit Number of records per page (default to 10)
    # @return [String]
    def sms_email_sms_stripped_strings_get(opts = {})
      data, _status_code, _headers = sms_email_sms_stripped_strings_get_with_http_info(opts)
      data
    end

    # Get list of email to sms stripped string rules
    # Get list of email to sms stripped string rules
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page number
    # @option opts [Integer] :limit Number of records per page
    # @return [Array<(String, Fixnum, Hash)>] String data, response status code and response headers
    def sms_email_sms_stripped_strings_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: EmailToSmsApi.sms_email_sms_stripped_strings_get ...'
      end
      if @api_client.config.client_side_validation && !opts[:'page'].nil? && opts[:'page'] < 1
        fail ArgumentError, 'invalid value for "opts[:"page"]" when calling EmailToSmsApi.sms_email_sms_stripped_strings_get, must be greater than or equal to 1.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] < 1
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling EmailToSmsApi.sms_email_sms_stripped_strings_get, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/sms/email-sms-stripped-strings'

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
        @api_client.config.logger.debug "API called: EmailToSmsApi#sms_email_sms_stripped_strings_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
