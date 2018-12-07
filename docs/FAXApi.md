# ClickSendClient::FAXApi

All URIs are relative to *https://rest.clicksend.com/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**fax_receipts_get**](FAXApi.md#fax_receipts_get) | **GET** /fax/receipts | Get all delivery receipts
[**fax_receipts_post**](FAXApi.md#fax_receipts_post) | **POST** /fax/receipts | Add a delivery receipt
[**fax_receipts_read_put**](FAXApi.md#fax_receipts_read_put) | **PUT** /fax/receipts-read | Mark delivery receipts as read


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



