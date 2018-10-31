# SwaggerClient::ResellerAccountApi

All URIs are relative to *https://rest.clicksend.com/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**reseller_accounts_by_client_user_id_get**](ResellerAccountApi.md#reseller_accounts_by_client_user_id_get) | **GET** /reseller/accounts/{client_user_id} | Get Reseller clients Account
[**reseller_accounts_by_client_user_id_put**](ResellerAccountApi.md#reseller_accounts_by_client_user_id_put) | **PUT** /reseller/accounts/{client_user_id} | Update Reseller clients Account
[**reseller_accounts_get**](ResellerAccountApi.md#reseller_accounts_get) | **GET** /reseller/accounts | Get list of reseller accounts
[**reseller_accounts_post**](ResellerAccountApi.md#reseller_accounts_post) | **POST** /reseller/accounts | Create reseller account


# **reseller_accounts_by_client_user_id_get**
> String reseller_accounts_by_client_user_id_get(client_user_id)

Get Reseller clients Account

Get Reseller clients Account

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

api_instance = SwaggerClient::ResellerAccountApi.new

client_user_id = 56 # Integer | User ID of client


begin
  #Get Reseller clients Account
  result = api_instance.reseller_accounts_by_client_user_id_get(client_user_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ResellerAccountApi->reseller_accounts_by_client_user_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **client_user_id** | **Integer**| User ID of client | 

### Return type

**String**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **reseller_accounts_by_client_user_id_put**
> String reseller_accounts_by_client_user_id_put(client_user_id, reseller_account)

Update Reseller clients Account

Update Reseller clients Account

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

api_instance = SwaggerClient::ResellerAccountApi.new

client_user_id = 56 # Integer | User ID of client

reseller_account = SwaggerClient::ResellerAccount.new # ResellerAccount | ResellerAccount model


begin
  #Update Reseller clients Account
  result = api_instance.reseller_accounts_by_client_user_id_put(client_user_id, reseller_account)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ResellerAccountApi->reseller_accounts_by_client_user_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **client_user_id** | **Integer**| User ID of client | 
 **reseller_account** | [**ResellerAccount**](ResellerAccount.md)| ResellerAccount model | 

### Return type

**String**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **reseller_accounts_get**
> String reseller_accounts_get(opts)

Get list of reseller accounts

Get list of reseller accounts

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

api_instance = SwaggerClient::ResellerAccountApi.new

opts = { 
  page: 1, # Integer | Page number
  limit: 10 # Integer | Number of records per page
}

begin
  #Get list of reseller accounts
  result = api_instance.reseller_accounts_get(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ResellerAccountApi->reseller_accounts_get: #{e}"
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



# **reseller_accounts_post**
> String reseller_accounts_post(reseller_account)

Create reseller account

Create reseller account

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

api_instance = SwaggerClient::ResellerAccountApi.new

reseller_account = SwaggerClient::ResellerAccount.new # ResellerAccount | ResellerAccount model


begin
  #Create reseller account
  result = api_instance.reseller_accounts_post(reseller_account)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ResellerAccountApi->reseller_accounts_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **reseller_account** | [**ResellerAccount**](ResellerAccount.md)| ResellerAccount model | 

### Return type

**String**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



