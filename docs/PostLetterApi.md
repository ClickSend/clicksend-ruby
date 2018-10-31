# SwaggerClient::PostLetterApi

All URIs are relative to *https://rest.clicksend.com/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**post_letters_export_get**](PostLetterApi.md#post_letters_export_get) | **GET** /post/letters/export | export post letter history
[**post_letters_history_get**](PostLetterApi.md#post_letters_history_get) | **GET** /post/letters/history | Get all post letter history
[**post_letters_price_post**](PostLetterApi.md#post_letters_price_post) | **POST** /post/letters/price | Calculate post letter price
[**post_letters_send_post**](PostLetterApi.md#post_letters_send_post) | **POST** /post/letters/send | Send post letter


# **post_letters_export_get**
> File post_letters_export_get(filename)

export post letter history

export post letter history

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

api_instance = SwaggerClient::PostLetterApi.new

filename = 'filename_example' # String | Filename to export to


begin
  #export post letter history
  result = api_instance.post_letters_export_get(filename)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling PostLetterApi->post_letters_export_get: #{e}"
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



# **post_letters_history_get**
> String post_letters_history_get(opts)

Get all post letter history

Get all post letter history

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

api_instance = SwaggerClient::PostLetterApi.new

opts = { 
  page: 1, # Integer | Page number
  limit: 10 # Integer | Number of records per page
}

begin
  #Get all post letter history
  result = api_instance.post_letters_history_get(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling PostLetterApi->post_letters_history_get: #{e}"
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



# **post_letters_price_post**
> String post_letters_price_post(post_letter)

Calculate post letter price

Calculate post letter price

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

api_instance = SwaggerClient::PostLetterApi.new

post_letter = SwaggerClient::PostLetter.new # PostLetter | PostLetter model


begin
  #Calculate post letter price
  result = api_instance.post_letters_price_post(post_letter)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling PostLetterApi->post_letters_price_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **post_letter** | [**PostLetter**](PostLetter.md)| PostLetter model | 

### Return type

**String**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **post_letters_send_post**
> String post_letters_send_post(post_letter)

Send post letter

Send post letter

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

api_instance = SwaggerClient::PostLetterApi.new

post_letter = SwaggerClient::PostLetter.new # PostLetter | PostLetter model


begin
  #Send post letter
  result = api_instance.post_letters_send_post(post_letter)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling PostLetterApi->post_letters_send_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **post_letter** | [**PostLetter**](PostLetter.md)| PostLetter model | 

### Return type

**String**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



