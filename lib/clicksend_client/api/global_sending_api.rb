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
  class GlobalSendingApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # List of countries
    # List of countries with IDs that can be used in selecting countries for Global sending.
    # @param [Hash] opts the optional parameters
    # @return [String]
    def list_countries_get(opts = {})
      data, _status_code, _headers = list_countries_get_with_http_info(opts)
      data
    end

    # List of countries
    # List of countries with IDs that can be used in selecting countries for Global sending.
    # @param [Hash] opts the optional parameters
    # @return [Array<(String, Fixnum, Hash)>] String data, response status code and response headers
    def list_countries_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: GlobalSendingApi.list_countries_get ...'
      end
      # resource path
      local_var_path = '/country-list'

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
        @api_client.config.logger.debug "API called: GlobalSendingApi#list_countries_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Agree to rules and regulation
    # To agree on rules and regulations of selected countries and confirm selection.
    # @param [Hash] opts the optional parameters
    # @return [String]
    def user_countries_agree_post(opts = {})
      data, _status_code, _headers = user_countries_agree_post_with_http_info(opts)
      data
    end

    # Agree to rules and regulation
    # To agree on rules and regulations of selected countries and confirm selection.
    # @param [Hash] opts the optional parameters
    # @return [Array<(String, Fixnum, Hash)>] String data, response status code and response headers
    def user_countries_agree_post_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: GlobalSendingApi.user_countries_agree_post ...'
      end
      # resource path
      local_var_path = '/user-countries/agree'

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
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'String')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: GlobalSendingApi#user_countries_agree_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get Countries for Global Sending
    # Get the list of selected countries.
    # @param [Hash] opts the optional parameters
    # @return [String]
    def user_countries_get(opts = {})
      data, _status_code, _headers = user_countries_get_with_http_info(opts)
      data
    end

    # Get Countries for Global Sending
    # Get the list of selected countries.
    # @param [Hash] opts the optional parameters
    # @return [Array<(String, Fixnum, Hash)>] String data, response status code and response headers
    def user_countries_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: GlobalSendingApi.user_countries_get ...'
      end
      # resource path
      local_var_path = '/user-countries'

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
        @api_client.config.logger.debug "API called: GlobalSendingApi#user_countries_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Select Countries for Global Sending
    # Use this endpoint to select countries that you intend to send sms / mms to. To remove / unselect a country, just remove the country id from the array in the payload.
    # @param country_list_ids Id of countr(ies) you want to select, you can get them from GET /country-list response
    # @param [Hash] opts the optional parameters
    # @return [String]
    def user_countries_post(country_list_ids, opts = {})
      data, _status_code, _headers = user_countries_post_with_http_info(country_list_ids, opts)
      data
    end

    # Select Countries for Global Sending
    # Use this endpoint to select countries that you intend to send sms / mms to. To remove / unselect a country, just remove the country id from the array in the payload.
    # @param country_list_ids Id of countr(ies) you want to select, you can get them from GET /country-list response
    # @param [Hash] opts the optional parameters
    # @return [Array<(String, Fixnum, Hash)>] String data, response status code and response headers
    def user_countries_post_with_http_info(country_list_ids, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: GlobalSendingApi.user_countries_post ...'
      end
      # verify the required parameter 'country_list_ids' is set
      if @api_client.config.client_side_validation && country_list_ids.nil?
        fail ArgumentError, "Missing the required parameter 'country_list_ids' when calling GlobalSendingApi.user_countries_post"
      end
      # resource path
      local_var_path = '/user-countries'

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
      post_body = @api_client.object_to_http_body(country_list_ids)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'String')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: GlobalSendingApi#user_countries_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end