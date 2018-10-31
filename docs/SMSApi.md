# SwaggerClient::SMSApi

All URIs are relative to *https://rest.clicksend.com/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**sms_cancel_all_put**](SMSApi.md#sms_cancel_all_put) | **PUT** /sms/cancel-all | Update all scheduled message as cancelled
[**sms_cancel_by_message_id_put**](SMSApi.md#sms_cancel_by_message_id_put) | **PUT** /sms/{message_id}/cancel | Update scheduled message as cancelled
[**sms_history_export_get**](SMSApi.md#sms_history_export_get) | **GET** /sms/history/export | Export all sms history
[**sms_history_get**](SMSApi.md#sms_history_get) | **GET** /sms/history | Get all sms history
[**sms_inbound_get**](SMSApi.md#sms_inbound_get) | **GET** /sms/inbound | Get all inbound sms
[**sms_inbound_post**](SMSApi.md#sms_inbound_post) | **POST** /sms/inbound | Create inbound sms
[**sms_inbound_read_put**](SMSApi.md#sms_inbound_read_put) | **PUT** /sms/inbound-read | Mark inbound SMS as read
[**sms_price_post**](SMSApi.md#sms_price_post) | **POST** /sms/price | Calculate sms price
[**sms_receipts_by_message_id_get**](SMSApi.md#sms_receipts_by_message_id_get) | **GET** /sms/receipts/{message_id} | Get a Specific Delivery Receipt
[**sms_receipts_get**](SMSApi.md#sms_receipts_get) | **GET** /sms/receipts | Get all delivery receipts
[**sms_receipts_post**](SMSApi.md#sms_receipts_post) | **POST** /sms/receipts | Add a delivery receipt
[**sms_receipts_read_put**](SMSApi.md#sms_receipts_read_put) | **PUT** /sms/receipts-read | Mark delivery receipts as read
[**sms_send_post**](SMSApi.md#sms_send_post) | **POST** /sms/send | Send sms message(s)
[**sms_templates_by_template_id_delete**](SMSApi.md#sms_templates_by_template_id_delete) | **DELETE** /sms/templates/{template_id} | Delete sms template
[**sms_templates_by_template_id_put**](SMSApi.md#sms_templates_by_template_id_put) | **PUT** /sms/templates/{template_id} | Update sms template
[**sms_templates_get**](SMSApi.md#sms_templates_get) | **GET** /sms/templates | Get lists of all sms templates
[**sms_templates_post**](SMSApi.md#sms_templates_post) | **POST** /sms/templates | Create sms template


# **sms_cancel_all_put**
> String sms_cancel_all_put

Update all scheduled message as cancelled

Update all scheduled message as cancelled

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

api_instance = SwaggerClient::SMSApi.new

begin
  #Update all scheduled message as cancelled
  result = api_instance.sms_cancel_all_put
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling SMSApi->sms_cancel_all_put: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

**String**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **sms_cancel_by_message_id_put**
> String sms_cancel_by_message_id_put(message_id)

Update scheduled message as cancelled

Update scheduled message as cancelled

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

api_instance = SwaggerClient::SMSApi.new

message_id = 'message_id_example' # String | The message ID you want to cancel


begin
  #Update scheduled message as cancelled
  result = api_instance.sms_cancel_by_message_id_put(message_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling SMSApi->sms_cancel_by_message_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **message_id** | **String**| The message ID you want to cancel | 

### Return type

**String**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **sms_history_export_get**
> File sms_history_export_get(filename)

Export all sms history

Export all sms history

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

api_instance = SwaggerClient::SMSApi.new

filename = 'filename_example' # String | Filename to download history as


begin
  #Export all sms history
  result = api_instance.sms_history_export_get(filename)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling SMSApi->sms_history_export_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filename** | **String**| Filename to download history as | 

### Return type

**File**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/csv



# **sms_history_get**
> String sms_history_get(opts)

Get all sms history

Get all sms history

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

api_instance = SwaggerClient::SMSApi.new

opts = { 
  date_from: 56, # Integer | Start date
  date_to: 56, # Integer | End date
  page: 1, # Integer | Page number
  limit: 10 # Integer | Number of records per page
}

begin
  #Get all sms history
  result = api_instance.sms_history_get(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling SMSApi->sms_history_get: #{e}"
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



# **sms_inbound_get**
> String sms_inbound_get(opts)

Get all inbound sms

Get all inbound sms

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

api_instance = SwaggerClient::SMSApi.new

opts = { 
  page: 1, # Integer | Page number
  limit: 10 # Integer | Number of records per page
}

begin
  #Get all inbound sms
  result = api_instance.sms_inbound_get(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling SMSApi->sms_inbound_get: #{e}"
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



# **sms_inbound_post**
> String sms_inbound_post(url)

Create inbound sms

Create inbound sms

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

api_instance = SwaggerClient::SMSApi.new

url = 'url_example' # String | Your url


begin
  #Create inbound sms
  result = api_instance.sms_inbound_post(url)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling SMSApi->sms_inbound_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **url** | **String**| Your url | 

### Return type

**String**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **sms_inbound_read_put**
> String sms_inbound_read_put(opts)

Mark inbound SMS as read

Mark all inbound SMS as read optionally before a certain date

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

api_instance = SwaggerClient::SMSApi.new

opts = { 
  date_before: 'date_before_example' # String | An optional timestamp - mark all as read before this timestamp. If not given, all messages will be marked as read.
}

begin
  #Mark inbound SMS as read
  result = api_instance.sms_inbound_read_put(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling SMSApi->sms_inbound_read_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **date_before** | **String**| An optional timestamp - mark all as read before this timestamp. If not given, all messages will be marked as read. | [optional] 

### Return type

**String**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **sms_price_post**
> String sms_price_post(sms_messages)

Calculate sms price

Calculate sms price

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

api_instance = SwaggerClient::SMSApi.new

sms_messages = SwaggerClient::SmsMessageCollection.new # SmsMessageCollection | SmsMessageCollection model


begin
  #Calculate sms price
  result = api_instance.sms_price_post(sms_messages)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling SMSApi->sms_price_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sms_messages** | [**SmsMessageCollection**](SmsMessageCollection.md)| SmsMessageCollection model | 

### Return type

**String**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **sms_receipts_by_message_id_get**
> String sms_receipts_by_message_id_get(message_id)

Get a Specific Delivery Receipt

Get a Specific Delivery Receipt

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

api_instance = SwaggerClient::SMSApi.new

message_id = 'message_id_example' # String | Message ID


begin
  #Get a Specific Delivery Receipt
  result = api_instance.sms_receipts_by_message_id_get(message_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling SMSApi->sms_receipts_by_message_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **message_id** | **String**| Message ID | 

### Return type

**String**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **sms_receipts_get**
> String sms_receipts_get(opts)

Get all delivery receipts

Get all delivery receipts

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

api_instance = SwaggerClient::SMSApi.new

opts = { 
  page: 1, # Integer | Page number
  limit: 10 # Integer | Number of records per page
}

begin
  #Get all delivery receipts
  result = api_instance.sms_receipts_get(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling SMSApi->sms_receipts_get: #{e}"
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



# **sms_receipts_post**
> String sms_receipts_post(url)

Add a delivery receipt

Add a delivery receipt

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

api_instance = SwaggerClient::SMSApi.new

url = 'url_example' # String | Your url


begin
  #Add a delivery receipt
  result = api_instance.sms_receipts_post(url)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling SMSApi->sms_receipts_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **url** | **String**| Your url | 

### Return type

**String**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **sms_receipts_read_put**
> String sms_receipts_read_put(opts)

Mark delivery receipts as read

Mark delivery receipts as read

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

api_instance = SwaggerClient::SMSApi.new

opts = { 
  date_before: 'date_before_example' # String | Mark all as read before this timestamp
}

begin
  #Mark delivery receipts as read
  result = api_instance.sms_receipts_read_put(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling SMSApi->sms_receipts_read_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **date_before** | **String**| Mark all as read before this timestamp | [optional] 

### Return type

**String**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **sms_send_post**
> String sms_send_post(sms_messages)

Send sms message(s)

 # Send one or more SMS messages  You can post up to 1000 messages with each API call. You can send to a mix of contacts and contact lists, as long as the total number of recipients is up to 1000.  The response contains status and details for each recipient.  *Refer to [Application Status Codes](https://dashboard.clicksend.com/#/signup/step1/) for the possible response message status strings.* 

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

api_instance = SwaggerClient::SMSApi.new

sms_messages = SwaggerClient::SmsMessageCollection.new # SmsMessageCollection | SmsMessageCollection model


begin
  #Send sms message(s)
  result = api_instance.sms_send_post(sms_messages)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling SMSApi->sms_send_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sms_messages** | [**SmsMessageCollection**](SmsMessageCollection.md)| SmsMessageCollection model | 

### Return type

**String**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **sms_templates_by_template_id_delete**
> String sms_templates_by_template_id_delete(template_id)

Delete sms template

Delete sms template

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

api_instance = SwaggerClient::SMSApi.new

template_id = 56 # Integer | Template id


begin
  #Delete sms template
  result = api_instance.sms_templates_by_template_id_delete(template_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling SMSApi->sms_templates_by_template_id_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **template_id** | **Integer**| Template id | 

### Return type

**String**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **sms_templates_by_template_id_put**
> String sms_templates_by_template_id_put(template_id, sms_template)

Update sms template

Update sms template

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

api_instance = SwaggerClient::SMSApi.new

template_id = 56 # Integer | Template id

sms_template = SwaggerClient::SmsTemplate.new # SmsTemplate | Template item


begin
  #Update sms template
  result = api_instance.sms_templates_by_template_id_put(template_id, sms_template)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling SMSApi->sms_templates_by_template_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **template_id** | **Integer**| Template id | 
 **sms_template** | [**SmsTemplate**](SmsTemplate.md)| Template item | 

### Return type

**String**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **sms_templates_get**
> String sms_templates_get(opts)

Get lists of all sms templates

Get lists of all sms templates

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

api_instance = SwaggerClient::SMSApi.new

opts = { 
  page: 1, # Integer | Page number
  limit: 10 # Integer | Number of records per page
}

begin
  #Get lists of all sms templates
  result = api_instance.sms_templates_get(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling SMSApi->sms_templates_get: #{e}"
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



# **sms_templates_post**
> String sms_templates_post(sms_template)

Create sms template

Create sms template

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

api_instance = SwaggerClient::SMSApi.new

sms_template = SwaggerClient::SmsTemplate.new # SmsTemplate | SmsTemplate model


begin
  #Create sms template
  result = api_instance.sms_templates_post(sms_template)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling SMSApi->sms_templates_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sms_template** | [**SmsTemplate**](SmsTemplate.md)| SmsTemplate model | 

### Return type

**String**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



