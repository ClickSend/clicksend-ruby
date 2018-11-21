# ClickSendClient::UploadApi

All URIs are relative to *https://rest.clicksend.com/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**uploads_post**](UploadApi.md#uploads_post) | **POST** /uploads | Upload File


# **uploads_post**
> String uploads_post(convert, opts)

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

convert = 'convert_example' # String | 

opts = { 
  upload_file: ClickSendClient::UploadFile.new # UploadFile | 
}

begin
  #Upload File
  result = api_instance.uploads_post(convert, opts)
  p result
rescue ClickSendClient::ApiError => e
  puts "Exception when calling UploadApi->uploads_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **convert** | **String**|  | 
 **upload_file** | [**UploadFile**](UploadFile.md)|  | [optional] 

### Return type

**String**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



