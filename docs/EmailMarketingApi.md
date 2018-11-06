# ClickSendClient::EmailMarketingApi

All URIs are relative to *https://rest.clicksend.com/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**allowed_email_address_get**](EmailMarketingApi.md#allowed_email_address_get) | **GET** /email/addresses | Get all email addresses
[**allowed_email_address_post**](EmailMarketingApi.md#allowed_email_address_post) | **POST** /email/addresses | Create allowed Email Address
[**cancel_email_campaign_put**](EmailMarketingApi.md#cancel_email_campaign_put) | **PUT** /email-campaigns/{email_campaign_id}/cancel | Cancel email campaign
[**email_campaign_get**](EmailMarketingApi.md#email_campaign_get) | **GET** /email-campaigns/{email_campaign_id} | Get specific email campaign
[**email_campaign_history_export_get**](EmailMarketingApi.md#email_campaign_history_export_get) | **GET** /email-campaigns/{email_campaign_id}/history/export | Export specific email campaign history
[**email_campaign_history_get**](EmailMarketingApi.md#email_campaign_history_get) | **GET** /email-campaigns/{email_campaign_id}/history | Get specific email campaign history
[**email_campaign_post**](EmailMarketingApi.md#email_campaign_post) | **POST** /email-campaigns/send | Send email campaign
[**email_campaign_price_post**](EmailMarketingApi.md#email_campaign_price_post) | **POST** /email-campaigns/price | Calculate email campaign price
[**email_campaign_put**](EmailMarketingApi.md#email_campaign_put) | **PUT** /email-campaigns/{email_campaign_id} | Edit email campaign
[**email_campaigns_get**](EmailMarketingApi.md#email_campaigns_get) | **GET** /email-campaigns | Get all email campaigns
[**send_verification_token_get**](EmailMarketingApi.md#send_verification_token_get) | **GET** /email/address-verify/{email_address_id}/send | Send verification token
[**specific_allowed_email_address_delete**](EmailMarketingApi.md#specific_allowed_email_address_delete) | **DELETE** /email/addresses/{email_address_id} | Delete specific email address
[**specific_allowed_email_address_get**](EmailMarketingApi.md#specific_allowed_email_address_get) | **GET** /email/addresses/{email_address_id} | Get specific email address
[**verify_allowed_email_address_get**](EmailMarketingApi.md#verify_allowed_email_address_get) | **GET** /email/address-verify/{email_address_id}/verify/{activation_token} | Verify email address using verification token


# **allowed_email_address_get**
> String allowed_email_address_get(opts)

Get all email addresses

Get all email addresses

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

api_instance = ClickSendClient::EmailMarketingApi.new

opts = { 
  page: 1, # Integer | Page number
  limit: 10 # Integer | Number of records per page
}

begin
  #Get all email addresses
  result = api_instance.allowed_email_address_get(opts)
  p result
rescue ClickSendClient::ApiError => e
  puts "Exception when calling EmailMarketingApi->allowed_email_address_get: #{e}"
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



# **allowed_email_address_post**
> String allowed_email_address_post(email_address)

Create allowed Email Address

Create allowed Email Address

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

api_instance = ClickSendClient::EmailMarketingApi.new

email_address = 'email_address_example' # String | Email to be allowed.


begin
  #Create allowed Email Address
  result = api_instance.allowed_email_address_post(email_address)
  p result
rescue ClickSendClient::ApiError => e
  puts "Exception when calling EmailMarketingApi->allowed_email_address_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email_address** | **String**| Email to be allowed. | 

### Return type

**String**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **cancel_email_campaign_put**
> String cancel_email_campaign_put(email_campaign_id)

Cancel email campaign

Cancel email campaign

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

api_instance = ClickSendClient::EmailMarketingApi.new

email_campaign_id = 56 # Integer | Allowed email campaign id


begin
  #Cancel email campaign
  result = api_instance.cancel_email_campaign_put(email_campaign_id)
  p result
rescue ClickSendClient::ApiError => e
  puts "Exception when calling EmailMarketingApi->cancel_email_campaign_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email_campaign_id** | **Integer**| Allowed email campaign id | 

### Return type

**String**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **email_campaign_get**
> String email_campaign_get(email_campaign_id)

Get specific email campaign

Get specific email campaign

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

api_instance = ClickSendClient::EmailMarketingApi.new

email_campaign_id = 56 # Integer | Allowed email campaign id


begin
  #Get specific email campaign
  result = api_instance.email_campaign_get(email_campaign_id)
  p result
rescue ClickSendClient::ApiError => e
  puts "Exception when calling EmailMarketingApi->email_campaign_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email_campaign_id** | **Integer**| Allowed email campaign id | 

### Return type

**String**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **email_campaign_history_export_get**
> File email_campaign_history_export_get(email_campaign_id, opts)

Export specific email campaign history

Export specific email campaign history

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

api_instance = ClickSendClient::EmailMarketingApi.new

email_campaign_id = 56 # Integer | Allowed email campaign id

opts = { 
  date_from: 56, # Integer | Start date
  date_to: 56 # Integer | End date
}

begin
  #Export specific email campaign history
  result = api_instance.email_campaign_history_export_get(email_campaign_id, opts)
  p result
rescue ClickSendClient::ApiError => e
  puts "Exception when calling EmailMarketingApi->email_campaign_history_export_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email_campaign_id** | **Integer**| Allowed email campaign id | 
 **date_from** | **Integer**| Start date | [optional] 
 **date_to** | **Integer**| End date | [optional] 

### Return type

**File**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/csv



# **email_campaign_history_get**
> String email_campaign_history_get(email_campaign_id, opts)

Get specific email campaign history

Get specific email campaign history

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

api_instance = ClickSendClient::EmailMarketingApi.new

email_campaign_id = 56 # Integer | Allowed email campaign id

opts = { 
  date_from: 56, # Integer | Start date
  date_to: 56, # Integer | End date
  page: 1, # Integer | Page number
  limit: 10 # Integer | Number of records per page
}

begin
  #Get specific email campaign history
  result = api_instance.email_campaign_history_get(email_campaign_id, opts)
  p result
rescue ClickSendClient::ApiError => e
  puts "Exception when calling EmailMarketingApi->email_campaign_history_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email_campaign_id** | **Integer**| Allowed email campaign id | 
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



# **email_campaign_post**
> String email_campaign_post(email_campaign)

Send email campaign

Send email campaign

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

api_instance = ClickSendClient::EmailMarketingApi.new

email_campaign = ClickSendClient::EmailCampaign.new # EmailCampaign | Email model


begin
  #Send email campaign
  result = api_instance.email_campaign_post(email_campaign)
  p result
rescue ClickSendClient::ApiError => e
  puts "Exception when calling EmailMarketingApi->email_campaign_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email_campaign** | [**EmailCampaign**](EmailCampaign.md)| Email model | 

### Return type

**String**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **email_campaign_price_post**
> String email_campaign_price_post(email_campaign)

Calculate email campaign price

Calculate email campaign price

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

api_instance = ClickSendClient::EmailMarketingApi.new

email_campaign = ClickSendClient::EmailCampaign.new # EmailCampaign | Email model


begin
  #Calculate email campaign price
  result = api_instance.email_campaign_price_post(email_campaign)
  p result
rescue ClickSendClient::ApiError => e
  puts "Exception when calling EmailMarketingApi->email_campaign_price_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email_campaign** | [**EmailCampaign**](EmailCampaign.md)| Email model | 

### Return type

**String**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **email_campaign_put**
> String email_campaign_put(email_campaign_id)

Edit email campaign

Edit email campaign

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

api_instance = ClickSendClient::EmailMarketingApi.new

email_campaign_id = 56 # Integer | Allowed email campaign id


begin
  #Edit email campaign
  result = api_instance.email_campaign_put(email_campaign_id)
  p result
rescue ClickSendClient::ApiError => e
  puts "Exception when calling EmailMarketingApi->email_campaign_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email_campaign_id** | **Integer**| Allowed email campaign id | 

### Return type

**String**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **email_campaigns_get**
> String email_campaigns_get(opts)

Get all email campaigns

Get all email campaigns

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

api_instance = ClickSendClient::EmailMarketingApi.new

opts = { 
  page: 1, # Integer | Page number
  limit: 10 # Integer | Number of records per page
}

begin
  #Get all email campaigns
  result = api_instance.email_campaigns_get(opts)
  p result
rescue ClickSendClient::ApiError => e
  puts "Exception when calling EmailMarketingApi->email_campaigns_get: #{e}"
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



# **send_verification_token_get**
> String send_verification_token_get(email_address_id)

Send verification token

Send verification token

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

api_instance = ClickSendClient::EmailMarketingApi.new

email_address_id = 56 # Integer | Allowed email address id


begin
  #Send verification token
  result = api_instance.send_verification_token_get(email_address_id)
  p result
rescue ClickSendClient::ApiError => e
  puts "Exception when calling EmailMarketingApi->send_verification_token_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email_address_id** | **Integer**| Allowed email address id | 

### Return type

**String**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **specific_allowed_email_address_delete**
> String specific_allowed_email_address_delete(email_address_id)

Delete specific email address

Delete specific email address

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

api_instance = ClickSendClient::EmailMarketingApi.new

email_address_id = 56 # Integer | Allowed email address id


begin
  #Delete specific email address
  result = api_instance.specific_allowed_email_address_delete(email_address_id)
  p result
rescue ClickSendClient::ApiError => e
  puts "Exception when calling EmailMarketingApi->specific_allowed_email_address_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email_address_id** | **Integer**| Allowed email address id | 

### Return type

**String**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **specific_allowed_email_address_get**
> String specific_allowed_email_address_get(email_address_id)

Get specific email address

Get specific email address

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

api_instance = ClickSendClient::EmailMarketingApi.new

email_address_id = 56 # Integer | Allowed email address id


begin
  #Get specific email address
  result = api_instance.specific_allowed_email_address_get(email_address_id)
  p result
rescue ClickSendClient::ApiError => e
  puts "Exception when calling EmailMarketingApi->specific_allowed_email_address_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email_address_id** | **Integer**| Allowed email address id | 

### Return type

**String**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **verify_allowed_email_address_get**
> String verify_allowed_email_address_get(email_address_id, activation_token)

Verify email address using verification token

Verify email address using verification token

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

api_instance = ClickSendClient::EmailMarketingApi.new

email_address_id = 56 # Integer | Allowed email address id

activation_token = 'activation_token_example' # String | Your activation token.


begin
  #Verify email address using verification token
  result = api_instance.verify_allowed_email_address_get(email_address_id, activation_token)
  p result
rescue ClickSendClient::ApiError => e
  puts "Exception when calling EmailMarketingApi->verify_allowed_email_address_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email_address_id** | **Integer**| Allowed email address id | 
 **activation_token** | **String**| Your activation token. | 

### Return type

**String**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



