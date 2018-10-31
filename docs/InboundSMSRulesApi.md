# SwaggerClient::InboundSMSRulesApi

All URIs are relative to *https://rest.clicksend.com/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**sms_inbound_automation_delete**](InboundSMSRulesApi.md#sms_inbound_automation_delete) | **DELETE** /automations/sms/inbound/{inbound_rule_id} | Delete inbound sms automation
[**sms_inbound_automation_get**](InboundSMSRulesApi.md#sms_inbound_automation_get) | **GET** /automations/sms/inbound/{inbound_rule_id} | Get specific inbound sms automation
[**sms_inbound_automation_post**](InboundSMSRulesApi.md#sms_inbound_automation_post) | **POST** /automations/sms/inbound | Create new inbound sms automation
[**sms_inbound_automation_put**](InboundSMSRulesApi.md#sms_inbound_automation_put) | **PUT** /automations/sms/inbound/{inbound_rule_id} | Update inbound sms automation
[**sms_inbound_automations_get**](InboundSMSRulesApi.md#sms_inbound_automations_get) | **GET** /automations/sms/inbound | Get all inbound sms automations


# **sms_inbound_automation_delete**
> String sms_inbound_automation_delete(inbound_rule_id)

Delete inbound sms automation

Delete inbound sms automation

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

api_instance = SwaggerClient::InboundSMSRulesApi.new

inbound_rule_id = 56 # Integer | Inbound rule id


begin
  #Delete inbound sms automation
  result = api_instance.sms_inbound_automation_delete(inbound_rule_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling InboundSMSRulesApi->sms_inbound_automation_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inbound_rule_id** | **Integer**| Inbound rule id | 

### Return type

**String**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **sms_inbound_automation_get**
> String sms_inbound_automation_get(inbound_rule_id)

Get specific inbound sms automation

Get specific inbound sms automation

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

api_instance = SwaggerClient::InboundSMSRulesApi.new

inbound_rule_id = 56 # Integer | Inbound rule id


begin
  #Get specific inbound sms automation
  result = api_instance.sms_inbound_automation_get(inbound_rule_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling InboundSMSRulesApi->sms_inbound_automation_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inbound_rule_id** | **Integer**| Inbound rule id | 

### Return type

**String**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **sms_inbound_automation_post**
> String sms_inbound_automation_post(inbound_sms_rule)

Create new inbound sms automation

Create new inbound sms automation

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

api_instance = SwaggerClient::InboundSMSRulesApi.new

inbound_sms_rule = SwaggerClient::InboundSMSRule.new # InboundSMSRule | Inbound sms rule model


begin
  #Create new inbound sms automation
  result = api_instance.sms_inbound_automation_post(inbound_sms_rule)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling InboundSMSRulesApi->sms_inbound_automation_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inbound_sms_rule** | [**InboundSMSRule**](InboundSMSRule.md)| Inbound sms rule model | 

### Return type

**String**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **sms_inbound_automation_put**
> String sms_inbound_automation_put(inbound_rule_id, inbound_sms_rule)

Update inbound sms automation

Update inbound sms automation

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

api_instance = SwaggerClient::InboundSMSRulesApi.new

inbound_rule_id = 56 # Integer | Inbound rule id

inbound_sms_rule = SwaggerClient::InboundSMSRule.new # InboundSMSRule | Inbound sms rule model


begin
  #Update inbound sms automation
  result = api_instance.sms_inbound_automation_put(inbound_rule_id, inbound_sms_rule)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling InboundSMSRulesApi->sms_inbound_automation_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inbound_rule_id** | **Integer**| Inbound rule id | 
 **inbound_sms_rule** | [**InboundSMSRule**](InboundSMSRule.md)| Inbound sms rule model | 

### Return type

**String**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **sms_inbound_automations_get**
> String sms_inbound_automations_get(opts)

Get all inbound sms automations

Get all inbound sms automations

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

api_instance = SwaggerClient::InboundSMSRulesApi.new

opts = { 
  page: 1, # Integer | Page number
  limit: 10 # Integer | Number of records per page
}

begin
  #Get all inbound sms automations
  result = api_instance.sms_inbound_automations_get(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling InboundSMSRulesApi->sms_inbound_automations_get: #{e}"
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



