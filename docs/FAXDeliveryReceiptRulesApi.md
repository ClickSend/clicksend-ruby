# ClickSendClient::FAXDeliveryReceiptRulesApi

All URIs are relative to *https://rest.clicksend.com/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**fax_delivery_receipt_automation_delete**](FAXDeliveryReceiptRulesApi.md#fax_delivery_receipt_automation_delete) | **DELETE** /automations/fax/receipts/{receipt_rule_id} | Delete fax delivery receipt automation
[**fax_delivery_receipt_automation_get**](FAXDeliveryReceiptRulesApi.md#fax_delivery_receipt_automation_get) | **GET** /automations/fax/receipts/{receipt_rule_id} | Get specific fax delivery receipt automation
[**fax_delivery_receipt_automation_post**](FAXDeliveryReceiptRulesApi.md#fax_delivery_receipt_automation_post) | **POST** /automations/fax/receipts | Create fax delivery receipt automations
[**fax_delivery_receipt_automation_put**](FAXDeliveryReceiptRulesApi.md#fax_delivery_receipt_automation_put) | **PUT** /automations/fax/receipts/{receipt_rule_id} | Update fax delivery receipt automation
[**fax_delivery_receipt_automations_get**](FAXDeliveryReceiptRulesApi.md#fax_delivery_receipt_automations_get) | **GET** /automations/fax/receipts | Get all fax delivery receipt automations


# **fax_delivery_receipt_automation_delete**
> String fax_delivery_receipt_automation_delete(receipt_rule_id)

Delete fax delivery receipt automation

Delete fax delivery receipt automation

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

api_instance = ClickSendClient::FAXDeliveryReceiptRulesApi.new

receipt_rule_id = 56 # Integer | Receipt rule id


begin
  #Delete fax delivery receipt automation
  result = api_instance.fax_delivery_receipt_automation_delete(receipt_rule_id)
  p result
rescue ClickSendClient::ApiError => e
  puts "Exception when calling FAXDeliveryReceiptRulesApi->fax_delivery_receipt_automation_delete: #{e}"
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



# **fax_delivery_receipt_automation_get**
> String fax_delivery_receipt_automation_get(receipt_rule_id)

Get specific fax delivery receipt automation

Get specific fax delivery receipt automation

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

api_instance = ClickSendClient::FAXDeliveryReceiptRulesApi.new

receipt_rule_id = 56 # Integer | Receipt rule id


begin
  #Get specific fax delivery receipt automation
  result = api_instance.fax_delivery_receipt_automation_get(receipt_rule_id)
  p result
rescue ClickSendClient::ApiError => e
  puts "Exception when calling FAXDeliveryReceiptRulesApi->fax_delivery_receipt_automation_get: #{e}"
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



# **fax_delivery_receipt_automation_post**
> String fax_delivery_receipt_automation_post(delivery_receipt_rule)

Create fax delivery receipt automations

Create fax delivery receipt automations

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

api_instance = ClickSendClient::FAXDeliveryReceiptRulesApi.new

delivery_receipt_rule = ClickSendClient::DeliveryReceiptRule.new # DeliveryReceiptRule | fax delivery receipt rule model


begin
  #Create fax delivery receipt automations
  result = api_instance.fax_delivery_receipt_automation_post(delivery_receipt_rule)
  p result
rescue ClickSendClient::ApiError => e
  puts "Exception when calling FAXDeliveryReceiptRulesApi->fax_delivery_receipt_automation_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **delivery_receipt_rule** | [**DeliveryReceiptRule**](DeliveryReceiptRule.md)| fax delivery receipt rule model | 

### Return type

**String**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **fax_delivery_receipt_automation_put**
> String fax_delivery_receipt_automation_put(receipt_rule_id, delivery_receipt_rule)

Update fax delivery receipt automation

Update fax delivery receipt automation

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

api_instance = ClickSendClient::FAXDeliveryReceiptRulesApi.new

receipt_rule_id = 56 # Integer | Receipt rule id

delivery_receipt_rule = ClickSendClient::DeliveryReceiptRule.new # DeliveryReceiptRule | Delivery receipt rule model


begin
  #Update fax delivery receipt automation
  result = api_instance.fax_delivery_receipt_automation_put(receipt_rule_id, delivery_receipt_rule)
  p result
rescue ClickSendClient::ApiError => e
  puts "Exception when calling FAXDeliveryReceiptRulesApi->fax_delivery_receipt_automation_put: #{e}"
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



# **fax_delivery_receipt_automations_get**
> String fax_delivery_receipt_automations_get(q, opts)

Get all fax delivery receipt automations

Get all fax delivery receipt automations

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

api_instance = ClickSendClient::FAXDeliveryReceiptRulesApi.new

q = 'q_example' # String | Your keyword or query.

opts = { 
  page: 1, # Integer | Page number
  limit: 10 # Integer | Number of records per page
}

begin
  #Get all fax delivery receipt automations
  result = api_instance.fax_delivery_receipt_automations_get(q, opts)
  p result
rescue ClickSendClient::ApiError => e
  puts "Exception when calling FAXDeliveryReceiptRulesApi->fax_delivery_receipt_automations_get: #{e}"
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



