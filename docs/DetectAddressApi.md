# ClickSendClient::DetectAddressApi

All URIs are relative to *https://rest.clicksend.com/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**detect_address_post**](DetectAddressApi.md#detect_address_post) | **POST** /post/letters/detect-address | Detects address in uploaded file.


# **detect_address_post**
> String detect_address_post(upload_file)

Detects address in uploaded file.

Detects address in uploaded file.

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

api_instance = ClickSendClient::DetectAddressApi.new

upload_file = ClickSendClient::UploadFile.new # UploadFile | Your file to be uploaded


begin
  #Detects address in uploaded file.
  result = api_instance.detect_address_post(upload_file)
  p result
rescue ClickSendClient::ApiError => e
  puts "Exception when calling DetectAddressApi->detect_address_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **upload_file** | [**UploadFile**](UploadFile.md)| Your file to be uploaded | 

### Return type

**String**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



