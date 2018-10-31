# SwaggerClient::DetectAddressApi

All URIs are relative to *https://rest.clicksend.com/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**detect_address_post**](DetectAddressApi.md#detect_address_post) | **POST** /post/letters/detect-address | Detects address in uploaded file.


# **detect_address_post**
> String detect_address_post(content)

Detects address in uploaded file.

Detects address in uploaded file.

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

api_instance = SwaggerClient::DetectAddressApi.new

content = 'content_example' # String | Base64-encoded file contents


begin
  #Detects address in uploaded file.
  result = api_instance.detect_address_post(content)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling DetectAddressApi->detect_address_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **content** | **String**| Base64-encoded file contents | 

### Return type

**String**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



