# ClickSendClient::MMSApi

All URIs are relative to *https://rest.clicksend.com/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**mms_price_post**](MMSApi.md#mms_price_post) | **POST** /mms/price | Get Price for MMS sent
[**mms_receipts_get**](MMSApi.md#mms_receipts_get) | **GET** /mms/receipts | Get all delivery receipts
[**mms_receipts_read_put**](MMSApi.md#mms_receipts_read_put) | **PUT** /mms/receipts-read | Mark delivery receipts as read
[**mms_send_post**](MMSApi.md#mms_send_post) | **POST** /mms/send | Send MMS


# **mms_price_post**
> String mms_price_post(mms_messages)

Get Price for MMS sent

Get Price for MMS sent

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

api_instance = ClickSendClient::MMSApi.new

mms_messages = ClickSendClient::MmsMessageCollection.new # MmsMessageCollection | MmsMessageCollection model


begin
  #Get Price for MMS sent
  result = api_instance.mms_price_post(mms_messages)
  p result
rescue ClickSendClient::ApiError => e
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



# **mms_receipts_get**
> String mms_receipts_get(opts)

Get all delivery receipts

Get all delivery receipts

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

api_instance = ClickSendClient::MMSApi.new

opts = { 
  page: 1, # Integer | Page number
  limit: 10 # Integer | Number of records per page
}

begin
  #Get all delivery receipts
  result = api_instance.mms_receipts_get(opts)
  p result
rescue ClickSendClient::ApiError => e
  puts "Exception when calling MMSApi->mms_receipts_get: #{e}"
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



# **mms_receipts_read_put**
> String mms_receipts_read_put(opts)

Mark delivery receipts as read

Mark delivery receipts as read

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

api_instance = ClickSendClient::MMSApi.new

opts = { 
  date_before: ClickSendClient::DateBefore.new # DateBefore | DateBefore model
}

begin
  #Mark delivery receipts as read
  result = api_instance.mms_receipts_read_put(opts)
  p result
rescue ClickSendClient::ApiError => e
  puts "Exception when calling MMSApi->mms_receipts_read_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **date_before** | [**DateBefore**](DateBefore.md)| DateBefore model | [optional] 

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
require 'clicksend_client'
# setup authorization
ClickSendClient.configure do |config|
  # Configure HTTP basic authorization: BasicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = ClickSendClient::MMSApi.new

mms_messages = ClickSendClient::MmsMessageCollection.new # MmsMessageCollection | MmsMessageCollection model


begin
  #Send MMS
  result = api_instance.mms_send_post(mms_messages)
  p result
rescue ClickSendClient::ApiError => e
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



