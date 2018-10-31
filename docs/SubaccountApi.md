# SwaggerClient::SubaccountApi

All URIs are relative to *https://rest.clicksend.com/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**subaccounts_by_subaccount_id_delete**](SubaccountApi.md#subaccounts_by_subaccount_id_delete) | **DELETE** /subaccounts/{subaccount_id} | Delete a subaccount
[**subaccounts_by_subaccount_id_get**](SubaccountApi.md#subaccounts_by_subaccount_id_get) | **GET** /subaccounts/{subaccount_id} | Get specific subaccount
[**subaccounts_by_subaccount_id_put**](SubaccountApi.md#subaccounts_by_subaccount_id_put) | **PUT** /subaccounts/{subaccount_id} | Update subaccount
[**subaccounts_get**](SubaccountApi.md#subaccounts_get) | **GET** /subaccounts | Get all subaccounts
[**subaccounts_post**](SubaccountApi.md#subaccounts_post) | **POST** /subaccounts | Create new subaccount
[**subaccounts_regen_api_key_by_subaccount_id_put**](SubaccountApi.md#subaccounts_regen_api_key_by_subaccount_id_put) | **PUT** /subaccounts/{subaccount_id}/regen-api-key | Regenerate an API Key


# **subaccounts_by_subaccount_id_delete**
> String subaccounts_by_subaccount_id_delete(subaccount_id)

Delete a subaccount

Delete a subaccount

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

api_instance = SwaggerClient::SubaccountApi.new

subaccount_id = 56 # Integer | ID of subaccount to delete


begin
  #Delete a subaccount
  result = api_instance.subaccounts_by_subaccount_id_delete(subaccount_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling SubaccountApi->subaccounts_by_subaccount_id_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **subaccount_id** | **Integer**| ID of subaccount to delete | 

### Return type

**String**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **subaccounts_by_subaccount_id_get**
> String subaccounts_by_subaccount_id_get(subaccount_id)

Get specific subaccount

Get specific subaccount

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

api_instance = SwaggerClient::SubaccountApi.new

subaccount_id = 56 # Integer | ID of subaccount to get


begin
  #Get specific subaccount
  result = api_instance.subaccounts_by_subaccount_id_get(subaccount_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling SubaccountApi->subaccounts_by_subaccount_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **subaccount_id** | **Integer**| ID of subaccount to get | 

### Return type

**String**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **subaccounts_by_subaccount_id_put**
> String subaccounts_by_subaccount_id_put(subaccount_id, subaccount)

Update subaccount

Update subaccount

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

api_instance = SwaggerClient::SubaccountApi.new

subaccount_id = 56 # Integer | ID of subaccount to update

subaccount = SwaggerClient::Subaccount.new # Subaccount | Subaccount model


begin
  #Update subaccount
  result = api_instance.subaccounts_by_subaccount_id_put(subaccount_id, subaccount)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling SubaccountApi->subaccounts_by_subaccount_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **subaccount_id** | **Integer**| ID of subaccount to update | 
 **subaccount** | [**Subaccount**](Subaccount.md)| Subaccount model | 

### Return type

**String**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **subaccounts_get**
> String subaccounts_get(opts)

Get all subaccounts

Get all subaccounts

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

api_instance = SwaggerClient::SubaccountApi.new

opts = { 
  page: 1, # Integer | Page number
  limit: 10 # Integer | Number of records per page
}

begin
  #Get all subaccounts
  result = api_instance.subaccounts_get(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling SubaccountApi->subaccounts_get: #{e}"
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



# **subaccounts_post**
> String subaccounts_post(subaccount)

Create new subaccount

Create new subaccount

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

api_instance = SwaggerClient::SubaccountApi.new

subaccount = SwaggerClient::Subaccount.new # Subaccount | Subaccount model


begin
  #Create new subaccount
  result = api_instance.subaccounts_post(subaccount)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling SubaccountApi->subaccounts_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **subaccount** | [**Subaccount**](Subaccount.md)| Subaccount model | 

### Return type

**String**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **subaccounts_regen_api_key_by_subaccount_id_put**
> String subaccounts_regen_api_key_by_subaccount_id_put(subaccount_id)

Regenerate an API Key

Regenerate an API Key

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

api_instance = SwaggerClient::SubaccountApi.new

subaccount_id = 56 # Integer | ID of subaccount to regenerate API key for


begin
  #Regenerate an API Key
  result = api_instance.subaccounts_regen_api_key_by_subaccount_id_put(subaccount_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling SubaccountApi->subaccounts_regen_api_key_by_subaccount_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **subaccount_id** | **Integer**| ID of subaccount to regenerate API key for | 

### Return type

**String**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



