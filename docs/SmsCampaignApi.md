# ClickSendClient::SmsCampaignApi

All URIs are relative to *https://rest.clicksend.com/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**sms_campaign_by_sms_campaign_id_get**](SmsCampaignApi.md#sms_campaign_by_sms_campaign_id_get) | **GET** /sms-campaign/{sms_campaign_id} | Get specific sms campaign
[**sms_campaigns_by_sms_campaign_id_put**](SmsCampaignApi.md#sms_campaigns_by_sms_campaign_id_put) | **PUT** /sms-campaigns/{sms_campaign_id} | Update sms campaign
[**sms_campaigns_cancel_by_sms_campaign_id_put**](SmsCampaignApi.md#sms_campaigns_cancel_by_sms_campaign_id_put) | **PUT** /sms-campaigns/{sms_campaign_id}/cancel | Cancel sms campaign
[**sms_campaigns_get**](SmsCampaignApi.md#sms_campaigns_get) | **GET** /sms-campaigns | Get list of sms campaigns
[**sms_campaigns_price_post**](SmsCampaignApi.md#sms_campaigns_price_post) | **POST** /sms-campaigns/price | Calculate price for sms campaign
[**sms_campaigns_send_post**](SmsCampaignApi.md#sms_campaigns_send_post) | **POST** /sms-campaigns/send | Create sms campaign


# **sms_campaign_by_sms_campaign_id_get**
> String sms_campaign_by_sms_campaign_id_get(sms_campaign_id)

Get specific sms campaign

Get specific sms campaign

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

api_instance = ClickSendClient::SmsCampaignApi.new

sms_campaign_id = 56 # Integer | ID of SMS campaign to retrieve


begin
  #Get specific sms campaign
  result = api_instance.sms_campaign_by_sms_campaign_id_get(sms_campaign_id)
  p result
rescue ClickSendClient::ApiError => e
  puts "Exception when calling SmsCampaignApi->sms_campaign_by_sms_campaign_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sms_campaign_id** | **Integer**| ID of SMS campaign to retrieve | 

### Return type

**String**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **sms_campaigns_by_sms_campaign_id_put**
> String sms_campaigns_by_sms_campaign_id_put(sms_campaign_id, campaign)

Update sms campaign

Update sms campaign

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

api_instance = ClickSendClient::SmsCampaignApi.new

sms_campaign_id = 56 # Integer | ID of SMS campaign to update

campaign = ClickSendClient::SmsCampaign.new # SmsCampaign | SmsCampaign model


begin
  #Update sms campaign
  result = api_instance.sms_campaigns_by_sms_campaign_id_put(sms_campaign_id, campaign)
  p result
rescue ClickSendClient::ApiError => e
  puts "Exception when calling SmsCampaignApi->sms_campaigns_by_sms_campaign_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sms_campaign_id** | **Integer**| ID of SMS campaign to update | 
 **campaign** | [**SmsCampaign**](SmsCampaign.md)| SmsCampaign model | 

### Return type

**String**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **sms_campaigns_cancel_by_sms_campaign_id_put**
> String sms_campaigns_cancel_by_sms_campaign_id_put(sms_campaign_id)

Cancel sms campaign

Cancel sms campaign

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

api_instance = ClickSendClient::SmsCampaignApi.new

sms_campaign_id = 56 # Integer | ID of SMS Campaign to cancel


begin
  #Cancel sms campaign
  result = api_instance.sms_campaigns_cancel_by_sms_campaign_id_put(sms_campaign_id)
  p result
rescue ClickSendClient::ApiError => e
  puts "Exception when calling SmsCampaignApi->sms_campaigns_cancel_by_sms_campaign_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sms_campaign_id** | **Integer**| ID of SMS Campaign to cancel | 

### Return type

**String**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **sms_campaigns_get**
> String sms_campaigns_get(opts)

Get list of sms campaigns

Get list of sms campaigns

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

api_instance = ClickSendClient::SmsCampaignApi.new

opts = { 
  page: 1, # Integer | Page number
  limit: 10 # Integer | Number of records per page
}

begin
  #Get list of sms campaigns
  result = api_instance.sms_campaigns_get(opts)
  p result
rescue ClickSendClient::ApiError => e
  puts "Exception when calling SmsCampaignApi->sms_campaigns_get: #{e}"
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



# **sms_campaigns_price_post**
> String sms_campaigns_price_post(campaign)

Calculate price for sms campaign

Calculate price for sms campaign

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

api_instance = ClickSendClient::SmsCampaignApi.new

campaign = ClickSendClient::SmsCampaign.new # SmsCampaign | SmsCampaign model


begin
  #Calculate price for sms campaign
  result = api_instance.sms_campaigns_price_post(campaign)
  p result
rescue ClickSendClient::ApiError => e
  puts "Exception when calling SmsCampaignApi->sms_campaigns_price_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **campaign** | [**SmsCampaign**](SmsCampaign.md)| SmsCampaign model | 

### Return type

**String**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **sms_campaigns_send_post**
> String sms_campaigns_send_post(campaign)

Create sms campaign

Create sms campaign

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

api_instance = ClickSendClient::SmsCampaignApi.new

campaign = ClickSendClient::SmsCampaign.new # SmsCampaign | SmsCampaign model


begin
  #Create sms campaign
  result = api_instance.sms_campaigns_send_post(campaign)
  p result
rescue ClickSendClient::ApiError => e
  puts "Exception when calling SmsCampaignApi->sms_campaigns_send_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **campaign** | [**SmsCampaign**](SmsCampaign.md)| SmsCampaign model | 

### Return type

**String**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



