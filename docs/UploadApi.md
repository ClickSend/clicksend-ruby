# ClickSendClient::UploadApi

All URIs are relative to *https://rest.clicksend.com/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**uploads_post**](UploadApi.md#uploads_post) | **POST** /uploads | Upload File


# **uploads_post**
> String uploads_post(upload_file, convert)

Upload File

Upload File

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

api_instance = ClickSendClient::UploadApi.new

upload_file = ClickSendClient::UploadFile.new # UploadFile | Your file to be uploaded

convert = 'convert_example' # String | 


begin
  #Upload File
  result = api_instance.uploads_post(upload_file, convert)
  p result
rescue ClickSendClient::ApiError => e
  puts "Exception when calling UploadApi->uploads_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **upload_file** | [**UploadFile**](UploadFile.md)| Your file to be uploaded | 
 **convert** | **String**|  | 

### Return type

**String**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



