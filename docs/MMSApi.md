# SwaggerClient::MMSApi

All URIs are relative to *https://rest.clicksend.com/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**mms_price_post**](MMSApi.md#mms_price_post) | **POST** /mms/price | Get Price for MMS sent
[**mms_send_post**](MMSApi.md#mms_send_post) | **POST** /mms/send | Send MMS


# **mms_price_post**
> String mms_price_post(mms_messages)

Get Price for MMS sent

Get Price for MMS sent

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

api_instance = SwaggerClient::MMSApi.new

mms_messages = SwaggerClient::MmsMessageCollection.new # MmsMessageCollection | MmsMessageCollection model


begin
  #Get Price for MMS sent
  result = api_instance.mms_price_post(mms_messages)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MMSApi->mms_price_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mms_messages** | [**MmsMessageCollection**](MmsMessageCollection.md)| MmsMessageCollection model | 

### Return type

**String**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **mms_send_post**
> String mms_send_post(mms_messages)

Send MMS

Send MMS

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

api_instance = SwaggerClient::MMSApi.new

mms_messages = SwaggerClient::MmsMessageCollection.new # MmsMessageCollection | MmsMessageCollection model


begin
  #Send MMS
  result = api_instance.mms_send_post(mms_messages)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MMSApi->mms_send_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mms_messages** | [**MmsMessageCollection**](MmsMessageCollection.md)| MmsMessageCollection model | 

### Return type

**String**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



