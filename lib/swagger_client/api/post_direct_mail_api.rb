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
  class PostDirectMailApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get direct mail campaigns
    # Get direct mail campaigns
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page number (default to 1)
    # @option opts [Integer] :limit Number of records per page (default to 10)
    # @return [String]
    def post_direct_mail_campaigns_get(opts = {})
      data, _status_code, _headers = post_direct_mail_campaigns_get_with_http_info(opts)
      data
    end

    # Get direct mail campaigns
    # Get direct mail campaigns
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page number
    # @option opts [Integer] :limit Number of records per page
    # @return [Array<(String, Fixnum, Hash)>] String data, response status code and response headers
    def post_direct_mail_campaigns_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PostDirectMailApi.post_direct_mail_campaigns_get ...'
      end
      if @api_client.config.client_side_validation && !opts[:'page'].nil? && opts[:'page'] < 1
        fail ArgumentError, 'invalid value for "opts[:"page"]" when calling PostDirectMailApi.post_direct_mail_campaigns_get, must be greater than or equal to 1.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] < 1
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling PostDirectMailApi.post_direct_mail_campaigns_get, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/post/direct-mail/campaigns'

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
        @api_client.config.logger.debug "API called: PostDirectMailApi#post_direct_mail_campaigns_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Calculate direct mail campaign price
    # Calculate direct mail campaign price
    # @param post_direct_mail PostDirectMail model
    # @param [Hash] opts the optional parameters
    # @return [String]
    def post_direct_mail_campaigns_price_post(post_direct_mail, opts = {})
      data, _status_code, _headers = post_direct_mail_campaigns_price_post_with_http_info(post_direct_mail, opts)
      data
    end

    # Calculate direct mail campaign price
    # Calculate direct mail campaign price
    # @param post_direct_mail PostDirectMail model
    # @param [Hash] opts the optional parameters
    # @return [Array<(String, Fixnum, Hash)>] String data, response status code and response headers
    def post_direct_mail_campaigns_price_post_with_http_info(post_direct_mail, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PostDirectMailApi.post_direct_mail_campaigns_price_post ...'
      end
      # verify the required parameter 'post_direct_mail' is set
      if @api_client.config.client_side_validation && post_direct_mail.nil?
        fail ArgumentError, "Missing the required parameter 'post_direct_mail' when calling PostDirectMailApi.post_direct_mail_campaigns_price_post"
      end
      # resource path
      local_var_path = '/post/direct-mail/campaigns/price'

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
      post_body = @api_client.object_to_http_body(post_direct_mail)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'String')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PostDirectMailApi#post_direct_mail_campaigns_price_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Send direct mail campaign
    # Send direct mail campaign
    # @param post_direct_mail PostDirectMail model
    # @param [Hash] opts the optional parameters
    # @return [String]
    def post_direct_mail_campaigns_send_post(post_direct_mail, opts = {})
      data, _status_code, _headers = post_direct_mail_campaigns_send_post_with_http_info(post_direct_mail, opts)
      data
    end

    # Send direct mail campaign
    # Send direct mail campaign
    # @param post_direct_mail PostDirectMail model
    # @param [Hash] opts the optional parameters
    # @return [Array<(String, Fixnum, Hash)>] String data, response status code and response headers
    def post_direct_mail_campaigns_send_post_with_http_info(post_direct_mail, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PostDirectMailApi.post_direct_mail_campaigns_send_post ...'
      end
      # verify the required parameter 'post_direct_mail' is set
      if @api_client.config.client_side_validation && post_direct_mail.nil?
        fail ArgumentError, "Missing the required parameter 'post_direct_mail' when calling PostDirectMailApi.post_direct_mail_campaigns_send_post"
      end
      # resource path
      local_var_path = '/post/direct-mail/campaigns/send'

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
      post_body = @api_client.object_to_http_body(post_direct_mail)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'String')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PostDirectMailApi#post_direct_mail_campaigns_send_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Search for a location
    # Search for a location
    # @param country Country Code to search
    # @param q Search term (e.g. post code, city name)
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page number (default to 1)
    # @option opts [Integer] :limit Number of records per page (default to 10)
    # @return [String]
    def post_direct_mail_locations_search_by_country_get(country, q, opts = {})
      data, _status_code, _headers = post_direct_mail_locations_search_by_country_get_with_http_info(country, q, opts)
      data
    end

    # Search for a location
    # Search for a location
    # @param country Country Code to search
    # @param q Search term (e.g. post code, city name)
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page number
    # @option opts [Integer] :limit Number of records per page
    # @return [Array<(String, Fixnum, Hash)>] String data, response status code and response headers
    def post_direct_mail_locations_search_by_country_get_with_http_info(country, q, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PostDirectMailApi.post_direct_mail_locations_search_by_country_get ...'
      end
      # verify the required parameter 'country' is set
      if @api_client.config.client_side_validation && country.nil?
        fail ArgumentError, "Missing the required parameter 'country' when calling PostDirectMailApi.post_direct_mail_locations_search_by_country_get"
      end
      # verify the required parameter 'q' is set
      if @api_client.config.client_side_validation && q.nil?
        fail ArgumentError, "Missing the required parameter 'q' when calling PostDirectMailApi.post_direct_mail_locations_search_by_country_get"
      end
      if @api_client.config.client_side_validation && !opts[:'page'].nil? && opts[:'page'] < 1
        fail ArgumentError, 'invalid value for "opts[:"page"]" when calling PostDirectMailApi.post_direct_mail_locations_search_by_country_get, must be greater than or equal to 1.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] < 1
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling PostDirectMailApi.post_direct_mail_locations_search_by_country_get, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/post/direct-mail/locations/search/{country}'.sub('{' + 'country' + '}', country.to_s)

      # query parameters
      query_params = {}
      query_params[:'q'] = q
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
        @api_client.config.logger.debug "API called: PostDirectMailApi#post_direct_mail_locations_search_by_country_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
