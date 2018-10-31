# SwaggerClient::UserEmailTemplatesApi

All URIs are relative to *https://rest.clicksend.com/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**email_template_delete**](UserEmailTemplatesApi.md#email_template_delete) | **DELETE** /email/templates/{template_id} | Delete user email template
[**email_template_get**](UserEmailTemplatesApi.md#email_template_get) | **GET** /email/templates/{template_id} | Get specific user email template
[**email_template_post**](UserEmailTemplatesApi.md#email_template_post) | **POST** /email/templates | Create email template
[**email_template_put**](UserEmailTemplatesApi.md#email_template_put) | **POST** /email/templates/{template_id} | Update email template
[**email_templates_get**](UserEmailTemplatesApi.md#email_templates_get) | **GET** /email/templates | Get all user email templates


# **email_template_delete**
> String email_template_delete(template_id)

Delete user email template

Delete user email template

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

api_instance = SwaggerClient::UserEmailTemplatesApi.new

template_id = 56 # Integer | Email template id


begin
  #Delete user email template
  result = api_instance.email_template_delete(template_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling UserEmailTemplatesApi->email_template_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **template_id** | **Integer**| Email template id | 

### Return type

**String**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **email_template_get**
> String email_template_get(template_id)

Get specific user email template

Get specific user email templates

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

api_instance = SwaggerClient::UserEmailTemplatesApi.new

template_id = 56 # Integer | Email template id


begin
  #Get specific user email template
  result = api_instance.email_template_get(template_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling UserEmailTemplatesApi->email_template_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **template_id** | **Integer**| Email template id | 

### Return type

**String**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **email_template_post**
> String email_template_post(email_template)

Create email template

Create email template

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

api_instance = SwaggerClient::UserEmailTemplatesApi.new

email_template = SwaggerClient::EmailTemplateNew.new # EmailTemplateNew | Email template model


begin
  #Create email template
  result = api_instance.email_template_post(email_template)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling UserEmailTemplatesApi->email_template_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email_template** | [**EmailTemplateNew**](EmailTemplateNew.md)| Email template model | 

### Return type

**String**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **email_template_put**
> String email_template_put(template_id, email_template)

Update email template

Update email template

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

api_instance = SwaggerClient::UserEmailTemplatesApi.new

template_id = 56 # Integer | Email template id

email_template = SwaggerClient::EmailTemplateUpdate.new # EmailTemplateUpdate | Email template model


begin
  #Update email template
  result = api_instance.email_template_put(template_id, email_template)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling UserEmailTemplatesApi->email_template_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **template_id** | **Integer**| Email template id | 
 **email_template** | [**EmailTemplateUpdate**](EmailTemplateUpdate.md)| Email template model | 

### Return type

**String**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **email_templates_get**
> String email_templates_get(opts)

Get all user email templates

Get all user email templates

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

api_instance = SwaggerClient::UserEmailTemplatesApi.new

opts = { 
  page: 1, # Integer | Page number
  limit: 10 # Integer | Number of records per page
}

begin
  #Get all user email templates
  result = api_instance.email_templates_get(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling UserEmailTemplatesApi->email_templates_get: #{e}"
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



