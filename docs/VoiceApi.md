# ClickSendClient::VoiceApi

All URIs are relative to *https://rest.clicksend.com/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**voice_cancel_all_put**](VoiceApi.md#voice_cancel_all_put) | **PUT** /voice/cancel-all | Update all voice messages as cancelled
[**voice_cancel_by_message_id_put**](VoiceApi.md#voice_cancel_by_message_id_put) | **PUT** /voice/{message_id}/cancel | Update voice message status as cancelled
[**voice_history_export_get**](VoiceApi.md#voice_history_export_get) | **GET** /voice/history/export | Export voice history
[**voice_history_get**](VoiceApi.md#voice_history_get) | **GET** /voice/history | Get all voice history
[**voice_lang_get**](VoiceApi.md#voice_lang_get) | **GET** /voice/lang | Get all voice languages
[**voice_price_post**](VoiceApi.md#voice_price_post) | **POST** /voice/price | Calculate voice price
[**voice_receipts_get**](VoiceApi.md#voice_receipts_get) | **GET** /voice/receipts | Get all voice receipts
[**voice_send_post**](VoiceApi.md#voice_send_post) | **POST** /voice/send | Send voice message(s)


# **voice_cancel_all_put**
> String voice_cancel_all_put

Update all voice messages as cancelled

Update all voice messages as cancelled

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

api_instance = ClickSendClient::VoiceApi.new

begin
  #Update all voice messages as cancelled
  result = api_instance.voice_cancel_all_put
  p result
rescue ClickSendClient::ApiError => e
  puts "Exception when calling VoiceApi->voice_cancel_all_put: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

**String**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **voice_cancel_by_message_id_put**
> String voice_cancel_by_message_id_put(message_id)

Update voice message status as cancelled

Update voice message status as cancelled

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

api_instance = ClickSendClient::VoiceApi.new

message_id = 'message_id_example' # String | Your voice message id


begin
  #Update voice message status as cancelled
  result = api_instance.voice_cancel_by_message_id_put(message_id)
  p result
rescue ClickSendClient::ApiError => e
  puts "Exception when calling VoiceApi->voice_cancel_by_message_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **message_id** | **String**| Your voice message id | 

### Return type

**String**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **voice_history_export_get**
> String voice_history_export_get(filename)

Export voice history

Export voice history

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

api_instance = ClickSendClient::VoiceApi.new

filename = 'filename_example' # String | Filename to export to


begin
  #Export voice history
  result = api_instance.voice_history_export_get(filename)
  p result
rescue ClickSendClient::ApiError => e
  puts "Exception when calling VoiceApi->voice_history_export_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filename** | **String**| Filename to export to | 

### Return type

**String**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **voice_history_get**
> String voice_history_get(opts)

Get all voice history

Get all voice history

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

api_instance = ClickSendClient::VoiceApi.new

opts = { 
  date_from: 56, # Integer | Timestamp (from) used to show records by date.
  date_to: 56, # Integer | Timestamp (to) used to show records by date
  page: 1, # Integer | Page number
  limit: 10 # Integer | Number of records per page
}

begin
  #Get all voice history
  result = api_instance.voice_history_get(opts)
  p result
rescue ClickSendClient::ApiError => e
  puts "Exception when calling VoiceApi->voice_history_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **date_from** | **Integer**| Timestamp (from) used to show records by date. | [optional] 
 **date_to** | **Integer**| Timestamp (to) used to show records by date | [optional] 
 **page** | **Integer**| Page number | [optional] [default to 1]
 **limit** | **Integer**| Number of records per page | [optional] [default to 10]

### Return type

**String**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **voice_lang_get**
> String voice_lang_get

Get all voice languages

Get all voice languages

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

api_instance = ClickSendClient::VoiceApi.new

begin
  #Get all voice languages
  result = api_instance.voice_lang_get
  p result
rescue ClickSendClient::ApiError => e
  puts "Exception when calling VoiceApi->voice_lang_get: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

**String**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **voice_price_post**
> String voice_price_post(voice_messages)

Calculate voice price

Calculate voice price

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

api_instance = ClickSendClient::VoiceApi.new

voice_messages = ClickSendClient::VoiceMessageCollection.new # VoiceMessageCollection | VoiceMessageCollection model


begin
  #Calculate voice price
  result = api_instance.voice_price_post(voice_messages)
  p result
rescue ClickSendClient::ApiError => e
  puts "Exception when calling VoiceApi->voice_price_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **voice_messages** | [**VoiceMessageCollection**](VoiceMessageCollection.md)| VoiceMessageCollection model | 

### Return type

**String**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **voice_receipts_get**
> String voice_receipts_get(q, opts)

Get all voice receipts

Get all voice receipts

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

api_instance = ClickSendClient::VoiceApi.new

q = 'q_example' # String | Your keyword or query.

opts = { 
  page: 1, # Integer | Page number
  limit: 10 # Integer | Number of records per page
}

begin
  #Get all voice receipts
  result = api_instance.voice_receipts_get(q, opts)
  p result
rescue ClickSendClient::ApiError => e
  puts "Exception when calling VoiceApi->voice_receipts_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **q** | **String**| Your keyword or query. | 
 **page** | **Integer**| Page number | [optional] [default to 1]
 **limit** | **Integer**| Number of records per page | [optional] [default to 10]

### Return type

**String**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **voice_send_post**
> String voice_send_post(voice_messages)

Send voice message(s)

Send a voice call

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

api_instance = ClickSendClient::VoiceApi.new

voice_messages = ClickSendClient::VoiceMessageCollection.new # VoiceMessageCollection | VoiceMessageCollection model


begin
  #Send voice message(s)
  result = api_instance.voice_send_post(voice_messages)
  p result
rescue ClickSendClient::ApiError => e
  puts "Exception when calling VoiceApi->voice_send_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **voice_messages** | [**VoiceMessageCollection**](VoiceMessageCollection.md)| VoiceMessageCollection model | 

### Return type

**String**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



