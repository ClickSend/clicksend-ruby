# SwaggerClient::TransactionalEmailApi

All URIs are relative to *https://rest.clicksend.com/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**email_history_export_get**](TransactionalEmailApi.md#email_history_export_get) | **GET** /email/history/export | Export all Transactional Email history
[**email_history_get**](TransactionalEmailApi.md#email_history_get) | **GET** /email/history | Get all transactional email history
[**email_price_post**](TransactionalEmailApi.md#email_price_post) | **POST** /email/price | Get transactional email price
[**email_send_post**](TransactionalEmailApi.md#email_send_post) | **POST** /email/send | Send transactional email


# **email_history_export_get**
> File email_history_export_get(filename, opts)

Export all Transactional Email history

Export all Transactional Email history

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

api_instance = SwaggerClient::TransactionalEmailApi.new

filename = 'filename_example' # String | Filename to download history as

opts = { 
  date_from: 56, # Integer | Start date
  date_to: 56 # Integer | End date
}

begin
  #Export all Transactional Email history
  result = api_instance.email_history_export_get(filename, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling TransactionalEmailApi->email_history_export_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filename** | **String**| Filename to download history as | 
 **date_from** | **Integer**| Start date | [optional] 
 **date_to** | **Integer**| End date | [optional] 

### Return type

**File**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/csv



# **email_history_get**
> String email_history_get(opts)

Get all transactional email history

Get all transactional email history

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

api_instance = SwaggerClient::TransactionalEmailApi.new

opts = { 
  date_from: 56, # Integer | Start date
  date_to: 56, # Integer | End date
  page: 1, # Integer | Page number
  limit: 10 # Integer | Number of records per page
}

begin
  #Get all transactional email history
  result = api_instance.email_history_get(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling TransactionalEmailApi->email_history_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **date_from** | **Integer**| Start date | [optional] 
 **date_to** | **Integer**| End date | [optional] 
 **page** | **Integer**| Page number | [optional] [default to 1]
 **limit** | **Integer**| Number of records per page | [optional] [default to 10]

### Return type

**String**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **email_price_post**
> String email_price_post(email)

Get transactional email price

Get transactional email price

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

api_instance = SwaggerClient::TransactionalEmailApi.new

email = SwaggerClient::Email.new # Email | Email model


begin
  #Get transactional email price
  result = api_instance.email_price_post(email)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling TransactionalEmailApi->email_price_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email** | [**Email**](Email.md)| Email model | 

### Return type

**String**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **email_send_post**
> String email_send_post(email)

Send transactional email

Send transactional email

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

api_instance = SwaggerClient::TransactionalEmailApi.new

email = SwaggerClient::Email.new # Email | Email model


begin
  #Send transactional email
  result = api_instance.email_send_post(email)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling TransactionalEmailApi->email_send_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email** | [**Email**](Email.md)| Email model | 

### Return type

**String**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



