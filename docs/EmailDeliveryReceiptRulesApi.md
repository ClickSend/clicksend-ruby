# ClickSendClient::EmailDeliveryReceiptRulesApi

All URIs are relative to *https://rest.clicksend.com/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**email_delivery_receipt_automation_delete**](EmailDeliveryReceiptRulesApi.md#email_delivery_receipt_automation_delete) | **DELETE** /automations/email/receipts/{receipt_rule_id} | Delete email delivery receipt automation
[**email_delivery_receipt_automation_get**](EmailDeliveryReceiptRulesApi.md#email_delivery_receipt_automation_get) | **GET** /automations/email/receipts/{receipt_rule_id} | Get specific email delivery receipt automation
[**email_delivery_receipt_automation_post**](EmailDeliveryReceiptRulesApi.md#email_delivery_receipt_automation_post) | **POST** /automations/email/receipts | Create email delivery receipt automations
[**email_delivery_receipt_automation_put**](EmailDeliveryReceiptRulesApi.md#email_delivery_receipt_automation_put) | **PUT** /automations/email/receipts/{receipt_rule_id} | Update email delivery receipt automation
[**email_delivery_receipt_automations_get**](EmailDeliveryReceiptRulesApi.md#email_delivery_receipt_automations_get) | **GET** /automations/email/receipts | Get all email delivery receipt automations


# **email_delivery_receipt_automation_delete**
> String email_delivery_receipt_automation_delete(receipt_rule_id)

Delete email delivery receipt automation

Delete email delivery receipt automation

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

api_instance = ClickSendClient::EmailDeliveryReceiptRulesApi.new

receipt_rule_id = 56 # Integer | Receipt rule id


begin
  #Delete email delivery receipt automation
  result = api_instance.email_delivery_receipt_automation_delete(receipt_rule_id)
  p result
rescue ClickSendClient::ApiError => e
  puts "Exception when calling EmailDeliveryReceiptRulesApi->email_delivery_receipt_automation_delete: #{e}"
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



# **email_delivery_receipt_automation_get**
> String email_delivery_receipt_automation_get(receipt_rule_id)

Get specific email delivery receipt automation

Get specific email delivery receipt automation

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

api_instance = ClickSendClient::EmailDeliveryReceiptRulesApi.new

receipt_rule_id = 56 # Integer | Receipt rule id


begin
  #Get specific email delivery receipt automation
  result = api_instance.email_delivery_receipt_automation_get(receipt_rule_id)
  p result
rescue ClickSendClient::ApiError => e
  puts "Exception when calling EmailDeliveryReceiptRulesApi->email_delivery_receipt_automation_get: #{e}"
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



# **email_delivery_receipt_automation_post**
> String email_delivery_receipt_automation_post(delivery_receipt_rule)

Create email delivery receipt automations

Create email delivery receipt automations

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

api_instance = ClickSendClient::EmailDeliveryReceiptRulesApi.new

delivery_receipt_rule = ClickSendClient::DeliveryReceiptRule.new # DeliveryReceiptRule | Email delivery receipt rule model


begin
  #Create email delivery receipt automations
  result = api_instance.email_delivery_receipt_automation_post(delivery_receipt_rule)
  p result
rescue ClickSendClient::ApiError => e
  puts "Exception when calling EmailDeliveryReceiptRulesApi->email_delivery_receipt_automation_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **delivery_receipt_rule** | [**DeliveryReceiptRule**](DeliveryReceiptRule.md)| Email delivery receipt rule model | 

### Return type

**String**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **email_delivery_receipt_automation_put**
> String email_delivery_receipt_automation_put(receipt_rule_id, delivery_receipt_rule)

Update email delivery receipt automation

Update email delivery receipt automation

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

api_instance = ClickSendClient::EmailDeliveryReceiptRulesApi.new

receipt_rule_id = 56 # Integer | Receipt rule id

delivery_receipt_rule = ClickSendClient::DeliveryReceiptRule.new # DeliveryReceiptRule | Delivery receipt rule model


begin
  #Update email delivery receipt automation
  result = api_instance.email_delivery_receipt_automation_put(receipt_rule_id, delivery_receipt_rule)
  p result
rescue ClickSendClient::ApiError => e
  puts "Exception when calling EmailDeliveryReceiptRulesApi->email_delivery_receipt_automation_put: #{e}"
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



# **email_delivery_receipt_automations_get**
> String email_delivery_receipt_automations_get(opts)

Get all email delivery receipt automations

Get all email delivery receipt automations

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

api_instance = ClickSendClient::EmailDeliveryReceiptRulesApi.new

opts = { 
  page: 1, # Integer | Page number
  limit: 10 # Integer | Number of records per page
}

begin
  #Get all email delivery receipt automations
  result = api_instance.email_delivery_receipt_automations_get(opts)
  p result
rescue ClickSendClient::ApiError => e
  puts "Exception when calling EmailDeliveryReceiptRulesApi->email_delivery_receipt_automations_get: #{e}"
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



