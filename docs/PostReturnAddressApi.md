# ClickSendClient::PostReturnAddressApi

All URIs are relative to *https://rest.clicksend.com/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**post_return_addresses_by_return_address_id_delete**](PostReturnAddressApi.md#post_return_addresses_by_return_address_id_delete) | **DELETE** /post/return-addresses/{return_address_id} | Delete specific post return address
[**post_return_addresses_by_return_address_id_get**](PostReturnAddressApi.md#post_return_addresses_by_return_address_id_get) | **GET** /post/return-addresses/{return_address_id} | Get specific post return address
[**post_return_addresses_by_return_address_id_put**](PostReturnAddressApi.md#post_return_addresses_by_return_address_id_put) | **PUT** /post/return-addresses/{return_address_id} | Update post return address
[**post_return_addresses_get**](PostReturnAddressApi.md#post_return_addresses_get) | **GET** /post/return-addresses | Get list of post return addresses
[**post_return_addresses_post**](PostReturnAddressApi.md#post_return_addresses_post) | **POST** /post/return-addresses | Create post return address


# **post_return_addresses_by_return_address_id_delete**
> String post_return_addresses_by_return_address_id_delete(return_address_id)

Delete specific post return address

Delete specific post return address

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

api_instance = ClickSendClient::PostReturnAddressApi.new

return_address_id = 56 # Integer | Return address ID


begin
  #Delete specific post return address
  result = api_instance.post_return_addresses_by_return_address_id_delete(return_address_id)
  p result
rescue ClickSendClient::ApiError => e
  puts "Exception when calling PostReturnAddressApi->post_return_addresses_by_return_address_id_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **return_address_id** | **Integer**| Return address ID | 

### Return type

**String**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **post_return_addresses_by_return_address_id_get**
> String post_return_addresses_by_return_address_id_get(return_address_id)

Get specific post return address

Get specific post return address

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

api_instance = ClickSendClient::PostReturnAddressApi.new

return_address_id = 56 # Integer | Return address ID


begin
  #Get specific post return address
  result = api_instance.post_return_addresses_by_return_address_id_get(return_address_id)
  p result
rescue ClickSendClient::ApiError => e
  puts "Exception when calling PostReturnAddressApi->post_return_addresses_by_return_address_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **return_address_id** | **Integer**| Return address ID | 

### Return type

**String**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **post_return_addresses_by_return_address_id_put**
> String post_return_addresses_by_return_address_id_put(return_address_id, return_address)

Update post return address

Update post return address

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

api_instance = ClickSendClient::PostReturnAddressApi.new

return_address_id = 56 # Integer | Return address ID

return_address = ClickSendClient::Address.new # Address | Address model


begin
  #Update post return address
  result = api_instance.post_return_addresses_by_return_address_id_put(return_address_id, return_address)
  p result
rescue ClickSendClient::ApiError => e
  puts "Exception when calling PostReturnAddressApi->post_return_addresses_by_return_address_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **return_address_id** | **Integer**| Return address ID | 
 **return_address** | [**Address**](Address.md)| Address model | 

### Return type

**String**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **post_return_addresses_get**
> String post_return_addresses_get(opts)

Get list of post return addresses

Get list of post return addresses

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

api_instance = ClickSendClient::PostReturnAddressApi.new

opts = { 
  page: 1, # Integer | Page number
  limit: 10 # Integer | Number of records per page
}

begin
  #Get list of post return addresses
  result = api_instance.post_return_addresses_get(opts)
  p result
rescue ClickSendClient::ApiError => e
  puts "Exception when calling PostReturnAddressApi->post_return_addresses_get: #{e}"
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



# **post_return_addresses_post**
> String post_return_addresses_post(return_address)

Create post return address

Create post return address

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

api_instance = ClickSendClient::PostReturnAddressApi.new

return_address = ClickSendClient::Address.new # Address | Address model


begin
  #Create post return address
  result = api_instance.post_return_addresses_post(return_address)
  p result
rescue ClickSendClient::ApiError => e
  puts "Exception when calling PostReturnAddressApi->post_return_addresses_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **return_address** | [**Address**](Address.md)| Address model | 

### Return type

**String**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



