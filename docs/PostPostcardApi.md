# SwaggerClient::PostPostcardApi

All URIs are relative to *https://rest.clicksend.com/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**post_postcards_history_export_get**](PostPostcardApi.md#post_postcards_history_export_get) | **GET** /post/postcards/history/export | Export postcard history to a CSV file
[**post_postcards_history_get**](PostPostcardApi.md#post_postcards_history_get) | **GET** /post/postcards/history | Retrieve the history of postcards sent or scheduled
[**post_postcards_price_post**](PostPostcardApi.md#post_postcards_price_post) | **POST** /post/postcards/price | Calculate price for sending one or more postcards
[**post_postcards_send_post**](PostPostcardApi.md#post_postcards_send_post) | **POST** /post/postcards/send | Send one or more postcards


# **post_postcards_history_export_get**
> File post_postcards_history_export_get(filename)

Export postcard history to a CSV file

Export postcard history to a CSV file

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

api_instance = SwaggerClient::PostPostcardApi.new

filename = 'filename_example' # String | Filename to export to


begin
  #Export postcard history to a CSV file
  result = api_instance.post_postcards_history_export_get(filename)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling PostPostcardApi->post_postcards_history_export_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filename** | **String**| Filename to export to | 

### Return type

**File**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/csv



# **post_postcards_history_get**
> String post_postcards_history_get(opts)

Retrieve the history of postcards sent or scheduled

Retrieve the history of postcards sent or scheduled

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

api_instance = SwaggerClient::PostPostcardApi.new

opts = { 
  page: 1, # Integer | Page number
  limit: 10 # Integer | Number of records per page
}

begin
  #Retrieve the history of postcards sent or scheduled
  result = api_instance.post_postcards_history_get(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling PostPostcardApi->post_postcards_history_get: #{e}"
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



# **post_postcards_price_post**
> String post_postcards_price_post(post_postcards)

Calculate price for sending one or more postcards

Calculate price for sending one or more postcards

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

api_instance = SwaggerClient::PostPostcardApi.new

post_postcards = SwaggerClient::PostPostcard.new # PostPostcard | PostPostcard model


begin
  #Calculate price for sending one or more postcards
  result = api_instance.post_postcards_price_post(post_postcards)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling PostPostcardApi->post_postcards_price_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **post_postcards** | [**PostPostcard**](PostPostcard.md)| PostPostcard model | 

### Return type

**String**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **post_postcards_send_post**
> String post_postcards_send_post(post_postcards)

Send one or more postcards

Send one or more postcards

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

api_instance = SwaggerClient::PostPostcardApi.new

post_postcards = SwaggerClient::PostPostcard.new # PostPostcard | PostPostcard model


begin
  #Send one or more postcards
  result = api_instance.post_postcards_send_post(post_postcards)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling PostPostcardApi->post_postcards_send_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **post_postcards** | [**PostPostcard**](PostPostcard.md)| PostPostcard model | 

### Return type

**String**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



