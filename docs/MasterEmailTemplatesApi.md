# ClickSendClient::MasterEmailTemplatesApi

All URIs are relative to *https://rest.clicksend.com/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**master_email_template_categories_get**](MasterEmailTemplatesApi.md#master_email_template_categories_get) | **GET** /email/master-templates-categories | Get all master email template categories
[**master_email_template_category_get**](MasterEmailTemplatesApi.md#master_email_template_category_get) | **GET** /email/master-templates-categories/{category_id} | Get specific master email template category
[**master_email_template_get**](MasterEmailTemplatesApi.md#master_email_template_get) | **GET** /email/master-templates/{template_id} | Get specific master email template
[**master_email_templates_get**](MasterEmailTemplatesApi.md#master_email_templates_get) | **GET** /email/master-templates | Get all master email templates
[**master_email_templates_in_category_get**](MasterEmailTemplatesApi.md#master_email_templates_in_category_get) | **GET** /email/master-templates-categories/{category_id}/master-templates | Get all master email templates in a category


# **master_email_template_categories_get**
> String master_email_template_categories_get(opts)

Get all master email template categories

Get all master email template categories

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

api_instance = ClickSendClient::MasterEmailTemplatesApi.new

opts = { 
  page: 1, # Integer | Page number
  limit: 10 # Integer | Number of records per page
}

begin
  #Get all master email template categories
  result = api_instance.master_email_template_categories_get(opts)
  p result
rescue ClickSendClient::ApiError => e
  puts "Exception when calling MasterEmailTemplatesApi->master_email_template_categories_get: #{e}"
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



# **master_email_template_category_get**
> String master_email_template_category_get(category_id)

Get specific master email template category

Get specific master email template category

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

api_instance = ClickSendClient::MasterEmailTemplatesApi.new

category_id = 56 # Integer | Email category id


begin
  #Get specific master email template category
  result = api_instance.master_email_template_category_get(category_id)
  p result
rescue ClickSendClient::ApiError => e
  puts "Exception when calling MasterEmailTemplatesApi->master_email_template_category_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **category_id** | **Integer**| Email category id | 

### Return type

**String**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **master_email_template_get**
> String master_email_template_get(template_id)

Get specific master email template

Get specific master email template

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

api_instance = ClickSendClient::MasterEmailTemplatesApi.new

template_id = 56 # Integer | Email template id


begin
  #Get specific master email template
  result = api_instance.master_email_template_get(template_id)
  p result
rescue ClickSendClient::ApiError => e
  puts "Exception when calling MasterEmailTemplatesApi->master_email_template_get: #{e}"
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



# **master_email_templates_get**
> String master_email_templates_get(opts)

Get all master email templates

Get all master email templates

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

api_instance = ClickSendClient::MasterEmailTemplatesApi.new

opts = { 
  page: 1, # Integer | Page number
  limit: 10 # Integer | Number of records per page
}

begin
  #Get all master email templates
  result = api_instance.master_email_templates_get(opts)
  p result
rescue ClickSendClient::ApiError => e
  puts "Exception when calling MasterEmailTemplatesApi->master_email_templates_get: #{e}"
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



# **master_email_templates_in_category_get**
> String master_email_templates_in_category_get(category_id, opts)

Get all master email templates in a category

Get all master email templates in a category

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

api_instance = ClickSendClient::MasterEmailTemplatesApi.new

category_id = 56 # Integer | Email category id

opts = { 
  page: 1, # Integer | Page number
  limit: 10 # Integer | Number of records per page
}

begin
  #Get all master email templates in a category
  result = api_instance.master_email_templates_in_category_get(category_id, opts)
  p result
rescue ClickSendClient::ApiError => e
  puts "Exception when calling MasterEmailTemplatesApi->master_email_templates_in_category_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **category_id** | **Integer**| Email category id | 
 **page** | **Integer**| Page number | [optional] [default to 1]
 **limit** | **Integer**| Number of records per page | [optional] [default to 10]

### Return type

**String**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



