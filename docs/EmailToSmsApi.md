# SwaggerClient::EmailToSmsApi

All URIs are relative to *https://rest.clicksend.com/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**sms_email_sms_get**](EmailToSmsApi.md#sms_email_sms_get) | **GET** /sms/email-sms | Get list of email to sms allowed addresses
[**sms_email_sms_post**](EmailToSmsApi.md#sms_email_sms_post) | **POST** /sms/email-sms | Create email to sms allowed address
[**sms_email_sms_stripped_string_delete**](EmailToSmsApi.md#sms_email_sms_stripped_string_delete) | **DELETE** /sms/email-sms-stripped-strings/{rule_id} | Delete email to sms stripped string rule
[**sms_email_sms_stripped_string_get**](EmailToSmsApi.md#sms_email_sms_stripped_string_get) | **GET** /sms/email-sms-stripped-strings/{rule_id} | Get email to sms stripped string rule
[**sms_email_sms_stripped_string_post**](EmailToSmsApi.md#sms_email_sms_stripped_string_post) | **POST** /sms/email-sms-stripped-strings | Create email to sms stripped string rule
[**sms_email_sms_stripped_string_put**](EmailToSmsApi.md#sms_email_sms_stripped_string_put) | **PUT** /sms/email-sms-stripped-strings/{rule_id} | Update email to sms stripped string rule
[**sms_email_sms_stripped_strings_get**](EmailToSmsApi.md#sms_email_sms_stripped_strings_get) | **GET** /sms/email-sms-stripped-strings | Get list of email to sms stripped string rules


# **sms_email_sms_get**
> String sms_email_sms_get(opts)

Get list of email to sms allowed addresses

Get list of email to sms allowed addresses

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

api_instance = SwaggerClient::EmailToSmsApi.new

opts = { 
  page: 1, # Integer | Page number
  limit: 10 # Integer | Number of records per page
}

begin
  #Get list of email to sms allowed addresses
  result = api_instance.sms_email_sms_get(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling EmailToSmsApi->sms_email_sms_get: #{e}"
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



# **sms_email_sms_post**
> String sms_email_sms_post(email_sms_address)

Create email to sms allowed address

Create email to sms allowed address

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

api_instance = SwaggerClient::EmailToSmsApi.new

email_sms_address = SwaggerClient::EmailSMSAddress.new # EmailSMSAddress | EmailSMSAddress model


begin
  #Create email to sms allowed address
  result = api_instance.sms_email_sms_post(email_sms_address)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling EmailToSmsApi->sms_email_sms_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email_sms_address** | [**EmailSMSAddress**](EmailSMSAddress.md)| EmailSMSAddress model | 

### Return type

**String**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **sms_email_sms_stripped_string_delete**
> String sms_email_sms_stripped_string_delete(rule_id)

Delete email to sms stripped string rule

Delete email to sms stripped string rule

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

api_instance = SwaggerClient::EmailToSmsApi.new

rule_id = 56 # Integer | Your rule id


begin
  #Delete email to sms stripped string rule
  result = api_instance.sms_email_sms_stripped_string_delete(rule_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling EmailToSmsApi->sms_email_sms_stripped_string_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **rule_id** | **Integer**| Your rule id | 

### Return type

**String**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **sms_email_sms_stripped_string_get**
> String sms_email_sms_stripped_string_get(rule_id)

Get email to sms stripped string rule

Get email to sms stripped string rule

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

api_instance = SwaggerClient::EmailToSmsApi.new

rule_id = 56 # Integer | Your rule id


begin
  #Get email to sms stripped string rule
  result = api_instance.sms_email_sms_stripped_string_get(rule_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling EmailToSmsApi->sms_email_sms_stripped_string_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **rule_id** | **Integer**| Your rule id | 

### Return type

**String**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **sms_email_sms_stripped_string_post**
> String sms_email_sms_stripped_string_post(stripped_string)

Create email to sms stripped string rule

Create email to sms stripped string rules

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

api_instance = SwaggerClient::EmailToSmsApi.new

stripped_string = 'stripped_string_example' # String | String to be stripped.


begin
  #Create email to sms stripped string rule
  result = api_instance.sms_email_sms_stripped_string_post(stripped_string)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling EmailToSmsApi->sms_email_sms_stripped_string_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **stripped_string** | **String**| String to be stripped. | 

### Return type

**String**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **sms_email_sms_stripped_string_put**
> String sms_email_sms_stripped_string_put(rule_id, stripped_string)

Update email to sms stripped string rule

Update email to sms stripped string rule

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

api_instance = SwaggerClient::EmailToSmsApi.new

rule_id = 56 # Integer | Your rule id

stripped_string = 'stripped_string_example' # String | String to be stripped.


begin
  #Update email to sms stripped string rule
  result = api_instance.sms_email_sms_stripped_string_put(rule_id, stripped_string)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling EmailToSmsApi->sms_email_sms_stripped_string_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **rule_id** | **Integer**| Your rule id | 
 **stripped_string** | **String**| String to be stripped. | 

### Return type

**String**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **sms_email_sms_stripped_strings_get**
> String sms_email_sms_stripped_strings_get(opts)

Get list of email to sms stripped string rules

Get list of email to sms stripped string rules

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

api_instance = SwaggerClient::EmailToSmsApi.new

opts = { 
  page: 1, # Integer | Page number
  limit: 10 # Integer | Number of records per page
}

begin
  #Get list of email to sms stripped string rules
  result = api_instance.sms_email_sms_stripped_strings_get(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling EmailToSmsApi->sms_email_sms_stripped_strings_get: #{e}"
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



