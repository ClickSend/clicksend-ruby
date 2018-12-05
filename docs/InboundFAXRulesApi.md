# ClickSendClient::InboundFAXRulesApi

All URIs are relative to *https://rest.clicksend.com/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**fax_inbound_automation_delete**](InboundFAXRulesApi.md#fax_inbound_automation_delete) | **DELETE** /automations/fax/inbound/{inbound_rule_id} | Delete inbound fax automation
[**fax_inbound_automation_get**](InboundFAXRulesApi.md#fax_inbound_automation_get) | **GET** /automations/fax/inbound/{inbound_rule_id} | Get specific inbound fax automation
[**fax_inbound_automation_post**](InboundFAXRulesApi.md#fax_inbound_automation_post) | **POST** /automations/fax/inbound | Create new inbound fax automation
[**fax_inbound_automation_put**](InboundFAXRulesApi.md#fax_inbound_automation_put) | **PUT** /automations/fax/inbound/{inbound_rule_id} | Update inbound fax automation
[**fax_inbound_automations_get**](InboundFAXRulesApi.md#fax_inbound_automations_get) | **GET** /automations/fax/inbound | Get all inbound fax automations


# **fax_inbound_automation_delete**
> String fax_inbound_automation_delete(inbound_rule_id)

Delete inbound fax automation

Delete inbound fax automation

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

api_instance = ClickSendClient::InboundFAXRulesApi.new

inbound_rule_id = 56 # Integer | Inbound rule id


begin
  #Delete inbound fax automation
  result = api_instance.fax_inbound_automation_delete(inbound_rule_id)
  p result
rescue ClickSendClient::ApiError => e
  puts "Exception when calling InboundFAXRulesApi->fax_inbound_automation_delete: #{e}"
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



# **fax_inbound_automation_get**
> String fax_inbound_automation_get(inbound_rule_id)

Get specific inbound fax automation

Get specific inbound fax automation

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

api_instance = ClickSendClient::InboundFAXRulesApi.new

inbound_rule_id = 56 # Integer | Inbound rule id


begin
  #Get specific inbound fax automation
  result = api_instance.fax_inbound_automation_get(inbound_rule_id)
  p result
rescue ClickSendClient::ApiError => e
  puts "Exception when calling InboundFAXRulesApi->fax_inbound_automation_get: #{e}"
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



# **fax_inbound_automation_post**
> String fax_inbound_automation_post(inbound_fax_rule)

Create new inbound fax automation

Create new inbound fax automation

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

api_instance = ClickSendClient::InboundFAXRulesApi.new

inbound_fax_rule = ClickSendClient::InboundFAXRule.new # InboundFAXRule | Inbound fax rule model


begin
  #Create new inbound fax automation
  result = api_instance.fax_inbound_automation_post(inbound_fax_rule)
  p result
rescue ClickSendClient::ApiError => e
  puts "Exception when calling InboundFAXRulesApi->fax_inbound_automation_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inbound_fax_rule** | [**InboundFAXRule**](InboundFAXRule.md)| Inbound fax rule model | 

### Return type

**String**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **fax_inbound_automation_put**
> String fax_inbound_automation_put(inbound_rule_id, inbound_fax_rule)

Update inbound fax automation

Update inbound fax automation

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

api_instance = ClickSendClient::InboundFAXRulesApi.new

inbound_rule_id = 56 # Integer | Inbound rule id

inbound_fax_rule = ClickSendClient::InboundFAXRule.new # InboundFAXRule | Inbound fax rule model


begin
  #Update inbound fax automation
  result = api_instance.fax_inbound_automation_put(inbound_rule_id, inbound_fax_rule)
  p result
rescue ClickSendClient::ApiError => e
  puts "Exception when calling InboundFAXRulesApi->fax_inbound_automation_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inbound_rule_id** | **Integer**| Inbound rule id | 
 **inbound_fax_rule** | [**InboundFAXRule**](InboundFAXRule.md)| Inbound fax rule model | 

### Return type

**String**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **fax_inbound_automations_get**
> String fax_inbound_automations_get(opts)

Get all inbound fax automations

Get all inbound fax automations

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

api_instance = ClickSendClient::InboundFAXRulesApi.new

opts = { 
  q: 'q_example', # String | Your keyword or query.
  page: 1, # Integer | Page number
  limit: 10 # Integer | Number of records per page
}

begin
  #Get all inbound fax automations
  result = api_instance.fax_inbound_automations_get(opts)
  p result
rescue ClickSendClient::ApiError => e
  puts "Exception when calling InboundFAXRulesApi->fax_inbound_automations_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **q** | **String**| Your keyword or query. | [optional] 
 **page** | **Integer**| Page number | [optional] [default to 1]
 **limit** | **Integer**| Number of records per page | [optional] [default to 10]

### Return type

**String**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



