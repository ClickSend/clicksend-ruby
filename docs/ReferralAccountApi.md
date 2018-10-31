# SwaggerClient::ReferralAccountApi

All URIs are relative to *https://rest.clicksend.com/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**referral_accounts_get**](ReferralAccountApi.md#referral_accounts_get) | **GET** /referral/accounts | Get all referral accounts


# **referral_accounts_get**
> String referral_accounts_get(opts)

Get all referral accounts

Get all referral accounts

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure HTTP basic authorization: BasicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = SwaggerClient::ReferralAccountApi.new

opts = { 
  page: 1, # Integer | Page number
  limit: 10 # Integer | Number of records per page
}

begin
  #Get all referral accounts
  result = api_instance.referral_accounts_get(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ReferralAccountApi->referral_accounts_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **Integer**| Page number | [optional] [default to 1]
 **limit** | **Integer**| Number of records per page | [optional] [default to 10]

### Return type

**String**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



