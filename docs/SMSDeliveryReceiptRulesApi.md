# ClickSendClient::SMSDeliveryReceiptRulesApi

All URIs are relative to *https://rest.clicksend.com/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**sms_delivery_receipt_automation_delete**](SMSDeliveryReceiptRulesApi.md#sms_delivery_receipt_automation_delete) | **DELETE** /automations/sms/receipts/{receipt_rule_id} | Delete sms delivery receipt automation
[**sms_delivery_receipt_automation_get**](SMSDeliveryReceiptRulesApi.md#sms_delivery_receipt_automation_get) | **GET** /automations/sms/receipts/{receipt_rule_id} | Get specific sms delivery receipt automation
[**sms_delivery_receipt_automation_post**](SMSDeliveryReceiptRulesApi.md#sms_delivery_receipt_automation_post) | **POST** /automations/sms/receipts | Create sms delivery receipt automations
[**sms_delivery_receipt_automation_put**](SMSDeliveryReceiptRulesApi.md#sms_delivery_receipt_automation_put) | **PUT** /automations/sms/receipts/{receipt_rule_id} | Update sms delivery receipt automation
[**sms_delivery_receipt_automations_get**](SMSDeliveryReceiptRulesApi.md#sms_delivery_receipt_automations_get) | **GET** /automations/sms/receipts | Get all sms delivery receipt automations


# **sms_delivery_receipt_automation_delete**
> String sms_delivery_receipt_automation_delete(receipt_rule_id)

Delete sms delivery receipt automation

Delete sms delivery receipt automation

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

api_instance = ClickSendClient::SMSDeliveryReceiptRulesApi.new

receipt_rule_id = 56 # Integer | Receipt rule id


begin
  #Delete sms delivery receipt automation
  result = api_instance.sms_delivery_receipt_automation_delete(receipt_rule_id)
  p result
rescue ClickSendClient::ApiError => e
  puts "Exception when calling SMSDeliveryReceiptRulesApi->sms_delivery_receipt_automation_delete: #{e}"
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



# **sms_delivery_receipt_automation_get**
> String sms_delivery_receipt_automation_get(receipt_rule_id)

Get specific sms delivery receipt automation

Get specific sms delivery receipt automation

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

api_instance = ClickSendClient::SMSDeliveryReceiptRulesApi.new

receipt_rule_id = 56 # Integer | Receipt rule id


begin
  #Get specific sms delivery receipt automation
  result = api_instance.sms_delivery_receipt_automation_get(receipt_rule_id)
  p result
rescue ClickSendClient::ApiError => e
  puts "Exception when calling SMSDeliveryReceiptRulesApi->sms_delivery_receipt_automation_get: #{e}"
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



# **sms_delivery_receipt_automation_post**
> String sms_delivery_receipt_automation_post(delivery_receipt_rule)

Create sms delivery receipt automations

Create sms delivery receipt automations

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

api_instance = ClickSendClient::SMSDeliveryReceiptRulesApi.new

delivery_receipt_rule = ClickSendClient::DeliveryReceiptRule.new # DeliveryReceiptRule | sms delivery receipt rule model


begin
  #Create sms delivery receipt automations
  result = api_instance.sms_delivery_receipt_automation_post(delivery_receipt_rule)
  p result
rescue ClickSendClient::ApiError => e
  puts "Exception when calling SMSDeliveryReceiptRulesApi->sms_delivery_receipt_automation_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **delivery_receipt_rule** | [**DeliveryReceiptRule**](DeliveryReceiptRule.md)| sms delivery receipt rule model | 

### Return type

**String**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **sms_delivery_receipt_automation_put**
> String sms_delivery_receipt_automation_put(receipt_rule_id, delivery_receipt_rule)

Update sms delivery receipt automation

Update sms delivery receipt automation

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

api_instance = ClickSendClient::SMSDeliveryReceiptRulesApi.new

receipt_rule_id = 56 # Integer | Receipt rule id

delivery_receipt_rule = ClickSendClient::DeliveryReceiptRule.new # DeliveryReceiptRule | Delivery receipt rule model


begin
  #Update sms delivery receipt automation
  result = api_instance.sms_delivery_receipt_automation_put(receipt_rule_id, delivery_receipt_rule)
  p result
rescue ClickSendClient::ApiError => e
  puts "Exception when calling SMSDeliveryReceiptRulesApi->sms_delivery_receipt_automation_put: #{e}"
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



# **sms_delivery_receipt_automations_get**
> String sms_delivery_receipt_automations_get(q, opts)

Get all sms delivery receipt automations

Get all sms delivery receipt automations

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

api_instance = ClickSendClient::SMSDeliveryReceiptRulesApi.new

q = 'q_example' # String | Your keyword or query.

opts = { 
  page: 1, # Integer | Page number
  limit: 10 # Integer | Number of records per page
}

begin
  #Get all sms delivery receipt automations
  result = api_instance.sms_delivery_receipt_automations_get(q, opts)
  p result
rescue ClickSendClient::ApiError => e
  puts "Exception when calling SMSDeliveryReceiptRulesApi->sms_delivery_receipt_automations_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **q** | **String**| Your keyword or query. | 
 **page** | **Integer**| Page number | [optional] [default to 1]
 **limit** | **Integer**| Number of records per page | [optional] [default to 10]

### Return type

**String**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



