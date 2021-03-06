# ClickSendClient::FAXApi

All URIs are relative to *https://rest.clicksend.com/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**fax_history_get**](FAXApi.md#fax_history_get) | **GET** /fax/history | Get a list of Fax History.
[**fax_price_post**](FAXApi.md#fax_price_post) | **POST** /fax/price | Calculate Total Price for Fax Messages sent
[**fax_receipts_by_message_id_get**](FAXApi.md#fax_receipts_by_message_id_get) | **GET** /fax/receipts/{message_id} | Get a single fax receipt based on message id.
[**fax_receipts_get**](FAXApi.md#fax_receipts_get) | **GET** /fax/receipts | Get all delivery receipts
[**fax_receipts_post**](FAXApi.md#fax_receipts_post) | **POST** /fax/receipts | Add a delivery receipt
[**fax_receipts_read_put**](FAXApi.md#fax_receipts_read_put) | **PUT** /fax/receipts-read | Mark delivery receipts as read
[**fax_send_post**](FAXApi.md#fax_send_post) | **POST** /fax/send | Send a fax using supplied supported file-types.


# **fax_history_get**
> String fax_history_get(opts)

Get a list of Fax History.

Get a list of Fax History.

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

api_instance = ClickSendClient::FAXApi.new

opts = { 
  date_from: 56, # Integer | Customize result by setting from date (timestsamp) Example: 1457572619.
  date_to: 56, # Integer | Customize result by setting to date (timestamp) Example: 1457573000.
  q: 'q_example', # String | Custom query Example: status:Sent,status_code:201.
  order: 'order_example', # String | Order result by Example: date_added:desc,list_id:desc.
  page: 1, # Integer | Page number
  limit: 10 # Integer | Number of records per page
}

begin
  #Get a list of Fax History.
  result = api_instance.fax_history_get(opts)
  p result
rescue ClickSendClient::ApiError => e
  puts "Exception when calling FAXApi->fax_history_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **date_from** | **Integer**| Customize result by setting from date (timestsamp) Example: 1457572619. | [optional] 
 **date_to** | **Integer**| Customize result by setting to date (timestamp) Example: 1457573000. | [optional] 
 **q** | **String**| Custom query Example: status:Sent,status_code:201. | [optional] 
 **order** | **String**| Order result by Example: date_added:desc,list_id:desc. | [optional] 
 **page** | **Integer**| Page number | [optional] [default to 1]
 **limit** | **Integer**| Number of records per page | [optional] [default to 10]

### Return type

**String**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **fax_price_post**
> String fax_price_post(fax_message)

Calculate Total Price for Fax Messages sent

Calculate Total Price for Fax Messages sent

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

api_instance = ClickSendClient::FAXApi.new

fax_message = ClickSendClient::FaxMessageCollection.new # FaxMessageCollection | FaxMessageCollection model


begin
  #Calculate Total Price for Fax Messages sent
  result = api_instance.fax_price_post(fax_message)
  p result
rescue ClickSendClient::ApiError => e
  puts "Exception when calling FAXApi->fax_price_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fax_message** | [**FaxMessageCollection**](FaxMessageCollection.md)| FaxMessageCollection model | 

### Return type

**String**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **fax_receipts_by_message_id_get**
> String fax_receipts_by_message_id_get(message_id)

Get a single fax receipt based on message id.

Get a single fax receipt based on message id.

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

api_instance = ClickSendClient::FAXApi.new

message_id = 'message_id_example' # String | ID of the message receipt to retrieve


begin
  #Get a single fax receipt based on message id.
  result = api_instance.fax_receipts_by_message_id_get(message_id)
  p result
rescue ClickSendClient::ApiError => e
  puts "Exception when calling FAXApi->fax_receipts_by_message_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **message_id** | **String**| ID of the message receipt to retrieve | 

### Return type

**String**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **fax_receipts_get**
> String fax_receipts_get(opts)

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

api_instance = ClickSendClient::FAXApi.new

opts = { 
  page: 1, # Integer | Page number
  limit: 10 # Integer | Number of records per page
}

begin
  #Get all delivery receipts
  result = api_instance.fax_receipts_get(opts)
  p result
rescue ClickSendClient::ApiError => e
  puts "Exception when calling FAXApi->fax_receipts_get: #{e}"
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



# **fax_receipts_post**
> String fax_receipts_post(url)

Add a delivery receipt

Add a delivery receipt

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

api_instance = ClickSendClient::FAXApi.new

url = ClickSendClient::Url.new # Url | Url model


begin
  #Add a delivery receipt
  result = api_instance.fax_receipts_post(url)
  p result
rescue ClickSendClient::ApiError => e
  puts "Exception when calling FAXApi->fax_receipts_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **url** | [**Url**](Url.md)| Url model | 

### Return type

**String**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **fax_receipts_read_put**
> String fax_receipts_read_put(opts)

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

api_instance = ClickSendClient::FAXApi.new

opts = { 
  date_before: ClickSendClient::DateBefore.new # DateBefore | DateBefore model
}

begin
  #Mark delivery receipts as read
  result = api_instance.fax_receipts_read_put(opts)
  p result
rescue ClickSendClient::ApiError => e
  puts "Exception when calling FAXApi->fax_receipts_read_put: #{e}"
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



# **fax_send_post**
> String fax_send_post(fax_message)

Send a fax using supplied supported file-types.

Send a fax using supplied supported file-types.

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

api_instance = ClickSendClient::FAXApi.new

fax_message = ClickSendClient::FaxMessageCollection.new # FaxMessageCollection | FaxMessageCollection model


begin
  #Send a fax using supplied supported file-types.
  result = api_instance.fax_send_post(fax_message)
  p result
rescue ClickSendClient::ApiError => e
  puts "Exception when calling FAXApi->fax_send_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fax_message** | [**FaxMessageCollection**](FaxMessageCollection.md)| FaxMessageCollection model | 

### Return type

**String**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



