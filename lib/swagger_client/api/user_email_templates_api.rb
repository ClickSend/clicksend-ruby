=begin
#ClickSend v3 REST API

# This is the official [ClickSend](https://clicksend.com) SDK.  *You'll need to create a free account to use the API. You can register [here](https://www.clicksend.com/signup).*  You can use our API documentation along with the SDK. Our API docs can be found [here](https://developers.clicksend.com). 

OpenAPI spec version: 3.1.0
Contact: support@clicksend.com
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.0-SNAPSHOT

=end

require 'uri'

module SwaggerClient
  class UserEmailTemplatesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Delete user email template
    # Delete user email template
    # @param template_id Email template id
    # @param [Hash] opts the optional parameters
    # @return [String]
    def email_template_delete(template_id, opts = {})
      data, _status_code, _headers = email_template_delete_with_http_info(template_id, opts)
      data
    end

    # Delete user email template
    # Delete user email template
    # @param template_id Email template id
    # @param [Hash] opts the optional parameters
    # @return [Array<(String, Fixnum, Hash)>] String data, response status code and response headers
    def email_template_delete_with_http_info(template_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UserEmailTemplatesApi.email_template_delete ...'
      end
      # verify the required parameter 'template_id' is set
      if @api_client.config.client_side_validation && template_id.nil?
        fail ArgumentError, "Missing the required parameter 'template_id' when calling UserEmailTemplatesApi.email_template_delete"
      end
      # resource path
      local_var_path = '/email/templates/{template_id}'.sub('{' + 'template_id' + '}', template_id.to_s)

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
        @api_client.config.logger.debug "API called: UserEmailTemplatesApi#email_template_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get specific user email template
    # Get specific user email templates
    # @param template_id Email template id
    # @param [Hash] opts the optional parameters
    # @return [String]
    def email_template_get(template_id, opts = {})
      data, _status_code, _headers = email_template_get_with_http_info(template_id, opts)
      data
    end

    # Get specific user email template
    # Get specific user email templates
    # @param template_id Email template id
    # @param [Hash] opts the optional parameters
    # @return [Array<(String, Fixnum, Hash)>] String data, response status code and response headers
    def email_template_get_with_http_info(template_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UserEmailTemplatesApi.email_template_get ...'
      end
      # verify the required parameter 'template_id' is set
      if @api_client.config.client_side_validation && template_id.nil?
        fail ArgumentError, "Missing the required parameter 'template_id' when calling UserEmailTemplatesApi.email_template_get"
      end
      # resource path
      local_var_path = '/email/templates/{template_id}'.sub('{' + 'template_id' + '}', template_id.to_s)

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
        @api_client.config.logger.debug "API called: UserEmailTemplatesApi#email_template_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Create email template
    # Create email template
    # @param email_template Email template model
    # @param [Hash] opts the optional parameters
    # @return [String]
    def email_template_post(email_template, opts = {})
      data, _status_code, _headers = email_template_post_with_http_info(email_template, opts)
      data
    end

    # Create email template
    # Create email template
    # @param email_template Email template model
    # @param [Hash] opts the optional parameters
    # @return [Array<(String, Fixnum, Hash)>] String data, response status code and response headers
    def email_template_post_with_http_info(email_template, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UserEmailTemplatesApi.email_template_post ...'
      end
      # verify the required parameter 'email_template' is set
      if @api_client.config.client_side_validation && email_template.nil?
        fail ArgumentError, "Missing the required parameter 'email_template' when calling UserEmailTemplatesApi.email_template_post"
      end
      # resource path
      local_var_path = '/email/templates'

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
      post_body = @api_client.object_to_http_body(email_template)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'String')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UserEmailTemplatesApi#email_template_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Update email template
    # Update email template
    # @param template_id Email template id
    # @param email_template Email template model
    # @param [Hash] opts the optional parameters
    # @return [String]
    def email_template_put(template_id, email_template, opts = {})
      data, _status_code, _headers = email_template_put_with_http_info(template_id, email_template, opts)
      data
    end

    # Update email template
    # Update email template
    # @param template_id Email template id
    # @param email_template Email template model
    # @param [Hash] opts the optional parameters
    # @return [Array<(String, Fixnum, Hash)>] String data, response status code and response headers
    def email_template_put_with_http_info(template_id, email_template, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UserEmailTemplatesApi.email_template_put ...'
      end
      # verify the required parameter 'template_id' is set
      if @api_client.config.client_side_validation && template_id.nil?
        fail ArgumentError, "Missing the required parameter 'template_id' when calling UserEmailTemplatesApi.email_template_put"
      end
      # verify the required parameter 'email_template' is set
      if @api_client.config.client_side_validation && email_template.nil?
        fail ArgumentError, "Missing the required parameter 'email_template' when calling UserEmailTemplatesApi.email_template_put"
      end
      # resource path
      local_var_path = '/email/templates/{template_id}'.sub('{' + 'template_id' + '}', template_id.to_s)

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
      post_body = @api_client.object_to_http_body(email_template)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'String')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UserEmailTemplatesApi#email_template_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get all user email templates
    # Get all user email templates
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page number (default to 1)
    # @option opts [Integer] :limit Number of records per page (default to 10)
    # @return [String]
    def email_templates_get(opts = {})
      data, _status_code, _headers = email_templates_get_with_http_info(opts)
      data
    end

    # Get all user email templates
    # Get all user email templates
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page number
    # @option opts [Integer] :limit Number of records per page
    # @return [Array<(String, Fixnum, Hash)>] String data, response status code and response headers
    def email_templates_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UserEmailTemplatesApi.email_templates_get ...'
      end
      if @api_client.config.client_side_validation && !opts[:'page'].nil? && opts[:'page'] < 1
        fail ArgumentError, 'invalid value for "opts[:"page"]" when calling UserEmailTemplatesApi.email_templates_get, must be greater than or equal to 1.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] < 1
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling UserEmailTemplatesApi.email_templates_get, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/email/templates'

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
        @api_client.config.logger.debug "API called: UserEmailTemplatesApi#email_templates_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
