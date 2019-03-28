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
  class TransferCreditApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Transfer Credit
    # Transfer Credit
    # @param reseller_account_transfer_credit ResellerAccountTransferCredit model
    # @param [Hash] opts the optional parameters
    # @return [String]
    def reseller_transfer_credit_put(reseller_account_transfer_credit, opts = {})
      data, _status_code, _headers = reseller_transfer_credit_put_with_http_info(reseller_account_transfer_credit, opts)
      data
    end

    # Transfer Credit
    # Transfer Credit
    # @param reseller_account_transfer_credit ResellerAccountTransferCredit model
    # @param [Hash] opts the optional parameters
    # @return [Array<(String, Fixnum, Hash)>] String data, response status code and response headers
    def reseller_transfer_credit_put_with_http_info(reseller_account_transfer_credit, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TransferCreditApi.reseller_transfer_credit_put ...'
      end
      # verify the required parameter 'reseller_account_transfer_credit' is set
      if @api_client.config.client_side_validation && reseller_account_transfer_credit.nil?
        fail ArgumentError, "Missing the required parameter 'reseller_account_transfer_credit' when calling TransferCreditApi.reseller_transfer_credit_put"
      end
      # resource path
      local_var_path = '/reseller/transfer-credit'

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
      post_body = @api_client.object_to_http_body(reseller_account_transfer_credit)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'String')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TransferCreditApi#reseller_transfer_credit_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
