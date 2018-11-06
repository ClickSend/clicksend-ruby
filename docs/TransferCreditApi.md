# ClickSendClient::TransferCreditApi

All URIs are relative to *https://rest.clicksend.com/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**reseller_transfer_credit_put**](TransferCreditApi.md#reseller_transfer_credit_put) | **PUT** /reseller/transfer-credit | Transfer Credit


# **reseller_transfer_credit_put**
> String reseller_transfer_credit_put(reseller_account_transfer_credit)

Transfer Credit

Transfer Credit

### Example
```ruby
# load the gem
require 'clicksend_client'
# setup authorization
ClickSendClient.configure do |config|
  # Configure HTTP basic authorization: BasicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = ClickSendClient::TransferCreditApi.new

reseller_account_transfer_credit = ClickSendClient::ResellerAccountTransferCredit.new # ResellerAccountTransferCredit | ResellerAccountTransferCredit model


begin
  #Transfer Credit
  result = api_instance.reseller_transfer_credit_put(reseller_account_transfer_credit)
  p result
rescue ClickSendClient::ApiError => e
  puts "Exception when calling TransferCreditApi->reseller_transfer_credit_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **reseller_account_transfer_credit** | [**ResellerAccountTransferCredit**](ResellerAccountTransferCredit.md)| ResellerAccountTransferCredit model | 

### Return type

**String**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



