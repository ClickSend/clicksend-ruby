# SwaggerClient::MmsCampaignApi

All URIs are relative to *https://rest.clicksend.com/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**mms_campaign_by_mms_campaign_id_get**](MmsCampaignApi.md#mms_campaign_by_mms_campaign_id_get) | **GET** /mms-campaign/{mms_campaign_id} | Get specific mms campaign
[**mms_campaigns_by_mms_campaign_id_put**](MmsCampaignApi.md#mms_campaigns_by_mms_campaign_id_put) | **PUT** /mms-campaigns/{mms_campaign_id} | Update mms campaign
[**mms_campaigns_cancel_by_mms_campaign_id_put**](MmsCampaignApi.md#mms_campaigns_cancel_by_mms_campaign_id_put) | **PUT** /mms-campaigns/{mms_campaign_id}/cancel | Cancel mms campaign
[**mms_campaigns_get**](MmsCampaignApi.md#mms_campaigns_get) | **GET** /mms-campaigns | Get list of mms campaigns
[**mms_campaigns_price_post**](MmsCampaignApi.md#mms_campaigns_price_post) | **POST** /mms-campaigns/price | Calculate price for mms campaign
[**mms_campaigns_send_post**](MmsCampaignApi.md#mms_campaigns_send_post) | **POST** /mms-campaigns/send | Create mms campaign


# **mms_campaign_by_mms_campaign_id_get**
> String mms_campaign_by_mms_campaign_id_get(mms_campaign_id)

Get specific mms campaign

Get specific mms campaign

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

api_instance = SwaggerClient::MmsCampaignApi.new

mms_campaign_id = 56 # Integer | ID of MMS campaign to retrieve


begin
  #Get specific mms campaign
  result = api_instance.mms_campaign_by_mms_campaign_id_get(mms_campaign_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MmsCampaignApi->mms_campaign_by_mms_campaign_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mms_campaign_id** | **Integer**| ID of MMS campaign to retrieve | 

### Return type

**String**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **mms_campaigns_by_mms_campaign_id_put**
> String mms_campaigns_by_mms_campaign_id_put(mms_campaign_id, campaign)

Update mms campaign

Update mms campaign

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

api_instance = SwaggerClient::MmsCampaignApi.new

mms_campaign_id = 56 # Integer | ID of MMS campaign to update

campaign = SwaggerClient::MmsCampaign.new # MmsCampaign | MmsCampaign model


begin
  #Update mms campaign
  result = api_instance.mms_campaigns_by_mms_campaign_id_put(mms_campaign_id, campaign)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MmsCampaignApi->mms_campaigns_by_mms_campaign_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mms_campaign_id** | **Integer**| ID of MMS campaign to update | 
 **campaign** | [**MmsCampaign**](MmsCampaign.md)| MmsCampaign model | 

### Return type

**String**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **mms_campaigns_cancel_by_mms_campaign_id_put**
> String mms_campaigns_cancel_by_mms_campaign_id_put(mms_campaign_id)

Cancel mms campaign

Cancel sms campaign

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

api_instance = SwaggerClient::MmsCampaignApi.new

mms_campaign_id = 56 # Integer | ID of MMS Campaign to cancel


begin
  #Cancel mms campaign
  result = api_instance.mms_campaigns_cancel_by_mms_campaign_id_put(mms_campaign_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MmsCampaignApi->mms_campaigns_cancel_by_mms_campaign_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mms_campaign_id** | **Integer**| ID of MMS Campaign to cancel | 

### Return type

**String**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **mms_campaigns_get**
> String mms_campaigns_get(opts)

Get list of mms campaigns

Get list of mms campaigns

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

api_instance = SwaggerClient::MmsCampaignApi.new

opts = { 
  page: 1, # Integer | Page number
  limit: 10 # Integer | Number of records per page
}

begin
  #Get list of mms campaigns
  result = api_instance.mms_campaigns_get(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MmsCampaignApi->mms_campaigns_get: #{e}"
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



# **mms_campaigns_price_post**
> String mms_campaigns_price_post(campaign)

Calculate price for mms campaign

Calculate price for sms campaign

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

api_instance = SwaggerClient::MmsCampaignApi.new

campaign = SwaggerClient::MmsCampaign.new # MmsCampaign | MmsCampaign model


begin
  #Calculate price for mms campaign
  result = api_instance.mms_campaigns_price_post(campaign)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MmsCampaignApi->mms_campaigns_price_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **campaign** | [**MmsCampaign**](MmsCampaign.md)| MmsCampaign model | 

### Return type

**String**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **mms_campaigns_send_post**
> String mms_campaigns_send_post(campaign)

Create mms campaign

Create mms campaign

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

api_instance = SwaggerClient::MmsCampaignApi.new

campaign = SwaggerClient::MmsCampaign.new # MmsCampaign | MmsCampaign model


begin
  #Create mms campaign
  result = api_instance.mms_campaigns_send_post(campaign)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MmsCampaignApi->mms_campaigns_send_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **campaign** | [**MmsCampaign**](MmsCampaign.md)| MmsCampaign model | 

### Return type

**String**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



