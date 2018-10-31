# SwaggerClient::VoiceDeliveryReceiptRulesApi

All URIs are relative to *https://rest.clicksend.com/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**voice_delivery_receipt_automation_delete**](VoiceDeliveryReceiptRulesApi.md#voice_delivery_receipt_automation_delete) | **DELETE** /automations/voice/receipts/{receipt_rule_id} | Delete voice delivery receipt automation
[**voice_delivery_receipt_automation_get**](VoiceDeliveryReceiptRulesApi.md#voice_delivery_receipt_automation_get) | **GET** /automations/voice/receipts/{receipt_rule_id} | Get specific voice delivery receipt automation
[**voice_delivery_receipt_automation_post**](VoiceDeliveryReceiptRulesApi.md#voice_delivery_receipt_automation_post) | **POST** /automations/voice/receipts | Create voice delivery receipt automations
[**voice_delivery_receipt_automation_put**](VoiceDeliveryReceiptRulesApi.md#voice_delivery_receipt_automation_put) | **PUT** /automations/voice/receipts/{receipt_rule_id} | Update voice delivery receipt automation
[**voice_delivery_receipt_automations_get**](VoiceDeliveryReceiptRulesApi.md#voice_delivery_receipt_automations_get) | **GET** /automations/voice/receipts | Get all voice delivery receipt automations


# **voice_delivery_receipt_automation_delete**
> String voice_delivery_receipt_automation_delete(receipt_rule_id)

Delete voice delivery receipt automation

Delete voice delivery receipt automation

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

api_instance = SwaggerClient::VoiceDeliveryReceiptRulesApi.new

receipt_rule_id = 56 # Integer | Receipt rule id


begin
  #Delete voice delivery receipt automation
  result = api_instance.voice_delivery_receipt_automation_delete(receipt_rule_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling VoiceDeliveryReceiptRulesApi->voice_delivery_receipt_automation_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **receipt_rule_id** | **Integer**| Receipt rule id | 

### Return type

**String**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **voice_delivery_receipt_automation_get**
> String voice_delivery_receipt_automation_get(receipt_rule_id)

Get specific voice delivery receipt automation

Get specific voice delivery receipt automation

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

api_instance = SwaggerClient::VoiceDeliveryReceiptRulesApi.new

receipt_rule_id = 56 # Integer | Receipt rule id


begin
  #Get specific voice delivery receipt automation
  result = api_instance.voice_delivery_receipt_automation_get(receipt_rule_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling VoiceDeliveryReceiptRulesApi->voice_delivery_receipt_automation_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **receipt_rule_id** | **Integer**| Receipt rule id | 

### Return type

**String**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **voice_delivery_receipt_automation_post**
> String voice_delivery_receipt_automation_post(delivery_receipt_rule)

Create voice delivery receipt automations

Create voice delivery receipt automations

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

api_instance = SwaggerClient::VoiceDeliveryReceiptRulesApi.new

delivery_receipt_rule = SwaggerClient::DeliveryReceiptRule.new # DeliveryReceiptRule | voice delivery receipt rule model


begin
  #Create voice delivery receipt automations
  result = api_instance.voice_delivery_receipt_automation_post(delivery_receipt_rule)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling VoiceDeliveryReceiptRulesApi->voice_delivery_receipt_automation_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **delivery_receipt_rule** | [**DeliveryReceiptRule**](DeliveryReceiptRule.md)| voice delivery receipt rule model | 

### Return type

**String**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **voice_delivery_receipt_automation_put**
> String voice_delivery_receipt_automation_put(receipt_rule_id, delivery_receipt_rule)

Update voice delivery receipt automation

Update voice delivery receipt automation

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

api_instance = SwaggerClient::VoiceDeliveryReceiptRulesApi.new

receipt_rule_id = 56 # Integer | Receipt rule id

delivery_receipt_rule = SwaggerClient::DeliveryReceiptRule.new # DeliveryReceiptRule | Delivery receipt rule model


begin
  #Update voice delivery receipt automation
  result = api_instance.voice_delivery_receipt_automation_put(receipt_rule_id, delivery_receipt_rule)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling VoiceDeliveryReceiptRulesApi->voice_delivery_receipt_automation_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **receipt_rule_id** | **Integer**| Receipt rule id | 
 **delivery_receipt_rule** | [**DeliveryReceiptRule**](DeliveryReceiptRule.md)| Delivery receipt rule model | 

### Return type

**String**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **voice_delivery_receipt_automations_get**
> String voice_delivery_receipt_automations_get(opts)

Get all voice delivery receipt automations

Get all voice delivery receipt automations

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

api_instance = SwaggerClient::VoiceDeliveryReceiptRulesApi.new

opts = { 
  page: 1, # Integer | Page number
  limit: 10 # Integer | Number of records per page
}

begin
  #Get all voice delivery receipt automations
  result = api_instance.voice_delivery_receipt_automations_get(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling VoiceDeliveryReceiptRulesApi->voice_delivery_receipt_automations_get: #{e}"
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



