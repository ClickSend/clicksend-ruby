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
  class MasterEmailTemplatesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get all master email template categories
    # Get all master email template categories
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page number (default to 1)
    # @option opts [Integer] :limit Number of records per page (default to 10)
    # @return [String]
    def master_email_template_categories_get(opts = {})
      data, _status_code, _headers = master_email_template_categories_get_with_http_info(opts)
      data
    end

    # Get all master email template categories
    # Get all master email template categories
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page number
    # @option opts [Integer] :limit Number of records per page
    # @return [Array<(String, Fixnum, Hash)>] String data, response status code and response headers
    def master_email_template_categories_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MasterEmailTemplatesApi.master_email_template_categories_get ...'
      end
      if @api_client.config.client_side_validation && !opts[:'page'].nil? && opts[:'page'] < 1
        fail ArgumentError, 'invalid value for "opts[:"page"]" when calling MasterEmailTemplatesApi.master_email_template_categories_get, must be greater than or equal to 1.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] < 1
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling MasterEmailTemplatesApi.master_email_template_categories_get, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/email/master-templates-categories'

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
        @api_client.config.logger.debug "API called: MasterEmailTemplatesApi#master_email_template_categories_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get specific master email template category
    # Get specific master email template category
    # @param category_id Email category id
    # @param [Hash] opts the optional parameters
    # @return [String]
    def master_email_template_category_get(category_id, opts = {})
      data, _status_code, _headers = master_email_template_category_get_with_http_info(category_id, opts)
      data
    end

    # Get specific master email template category
    # Get specific master email template category
    # @param category_id Email category id
    # @param [Hash] opts the optional parameters
    # @return [Array<(String, Fixnum, Hash)>] String data, response status code and response headers
    def master_email_template_category_get_with_http_info(category_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MasterEmailTemplatesApi.master_email_template_category_get ...'
      end
      # verify the required parameter 'category_id' is set
      if @api_client.config.client_side_validation && category_id.nil?
        fail ArgumentError, "Missing the required parameter 'category_id' when calling MasterEmailTemplatesApi.master_email_template_category_get"
      end
      # resource path
      local_var_path = '/email/master-templates-categories/{category_id}'.sub('{' + 'category_id' + '}', category_id.to_s)

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
        @api_client.config.logger.debug "API called: MasterEmailTemplatesApi#master_email_template_category_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get specific master email template
    # Get specific master email template
    # @param template_id Email template id
    # @param [Hash] opts the optional parameters
    # @return [String]
    def master_email_template_get(template_id, opts = {})
      data, _status_code, _headers = master_email_template_get_with_http_info(template_id, opts)
      data
    end

    # Get specific master email template
    # Get specific master email template
    # @param template_id Email template id
    # @param [Hash] opts the optional parameters
    # @return [Array<(String, Fixnum, Hash)>] String data, response status code and response headers
    def master_email_template_get_with_http_info(template_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MasterEmailTemplatesApi.master_email_template_get ...'
      end
      # verify the required parameter 'template_id' is set
      if @api_client.config.client_side_validation && template_id.nil?
        fail ArgumentError, "Missing the required parameter 'template_id' when calling MasterEmailTemplatesApi.master_email_template_get"
      end
      # resource path
      local_var_path = '/email/master-templates/{template_id}'.sub('{' + 'template_id' + '}', template_id.to_s)

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
        @api_client.config.logger.debug "API called: MasterEmailTemplatesApi#master_email_template_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get all master email templates
    # Get all master email templates
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page number (default to 1)
    # @option opts [Integer] :limit Number of records per page (default to 10)
    # @return [String]
    def master_email_templates_get(opts = {})
      data, _status_code, _headers = master_email_templates_get_with_http_info(opts)
      data
    end

    # Get all master email templates
    # Get all master email templates
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page number
    # @option opts [Integer] :limit Number of records per page
    # @return [Array<(String, Fixnum, Hash)>] String data, response status code and response headers
    def master_email_templates_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MasterEmailTemplatesApi.master_email_templates_get ...'
      end
      if @api_client.config.client_side_validation && !opts[:'page'].nil? && opts[:'page'] < 1
        fail ArgumentError, 'invalid value for "opts[:"page"]" when calling MasterEmailTemplatesApi.master_email_templates_get, must be greater than or equal to 1.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] < 1
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling MasterEmailTemplatesApi.master_email_templates_get, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/email/master-templates'

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
        @api_client.config.logger.debug "API called: MasterEmailTemplatesApi#master_email_templates_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get all master email templates in a category
    # Get all master email templates in a category
    # @param category_id Email category id
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page number (default to 1)
    # @option opts [Integer] :limit Number of records per page (default to 10)
    # @return [String]
    def master_email_templates_in_category_get(category_id, opts = {})
      data, _status_code, _headers = master_email_templates_in_category_get_with_http_info(category_id, opts)
      data
    end

    # Get all master email templates in a category
    # Get all master email templates in a category
    # @param category_id Email category id
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page number
    # @option opts [Integer] :limit Number of records per page
    # @return [Array<(String, Fixnum, Hash)>] String data, response status code and response headers
    def master_email_templates_in_category_get_with_http_info(category_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MasterEmailTemplatesApi.master_email_templates_in_category_get ...'
      end
      # verify the required parameter 'category_id' is set
      if @api_client.config.client_side_validation && category_id.nil?
        fail ArgumentError, "Missing the required parameter 'category_id' when calling MasterEmailTemplatesApi.master_email_templates_in_category_get"
      end
      if @api_client.config.client_side_validation && !opts[:'page'].nil? && opts[:'page'] < 1
        fail ArgumentError, 'invalid value for "opts[:"page"]" when calling MasterEmailTemplatesApi.master_email_templates_in_category_get, must be greater than or equal to 1.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] < 1
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling MasterEmailTemplatesApi.master_email_templates_in_category_get, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/email/master-templates-categories/{category_id}/master-templates'.sub('{' + 'category_id' + '}', category_id.to_s)

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
        @api_client.config.logger.debug "API called: MasterEmailTemplatesApi#master_email_templates_in_category_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
