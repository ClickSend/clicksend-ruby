# SwaggerClient::PostDirectMailApi

All URIs are relative to *https://rest.clicksend.com/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**post_direct_mail_campaigns_get**](PostDirectMailApi.md#post_direct_mail_campaigns_get) | **GET** /post/direct-mail/campaigns | Get direct mail campaigns
[**post_direct_mail_campaigns_price_post**](PostDirectMailApi.md#post_direct_mail_campaigns_price_post) | **POST** /post/direct-mail/campaigns/price | Calculate direct mail campaign price
[**post_direct_mail_campaigns_send_post**](PostDirectMailApi.md#post_direct_mail_campaigns_send_post) | **POST** /post/direct-mail/campaigns/send | Send direct mail campaign
[**post_direct_mail_locations_search_by_country_get**](PostDirectMailApi.md#post_direct_mail_locations_search_by_country_get) | **GET** /post/direct-mail/locations/search/{country} | Search for a location


# **post_direct_mail_campaigns_get**
> String post_direct_mail_campaigns_get(opts)

Get direct mail campaigns

Get direct mail campaigns

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

api_instance = SwaggerClient::PostDirectMailApi.new

opts = { 
  page: 1, # Integer | Page number
  limit: 10 # Integer | Number of records per page
}

begin
  #Get direct mail campaigns
  result = api_instance.post_direct_mail_campaigns_get(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling PostDirectMailApi->post_direct_mail_campaigns_get: #{e}"
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



# **post_direct_mail_campaigns_price_post**
> String post_direct_mail_campaigns_price_post(post_direct_mail)

Calculate direct mail campaign price

Calculate direct mail campaign price

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

api_instance = SwaggerClient::PostDirectMailApi.new

post_direct_mail = SwaggerClient::PostDirectMail.new # PostDirectMail | PostDirectMail model


begin
  #Calculate direct mail campaign price
  result = api_instance.post_direct_mail_campaigns_price_post(post_direct_mail)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling PostDirectMailApi->post_direct_mail_campaigns_price_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **post_direct_mail** | [**PostDirectMail**](PostDirectMail.md)| PostDirectMail model | 

### Return type

**String**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **post_direct_mail_campaigns_send_post**
> String post_direct_mail_campaigns_send_post(post_direct_mail)

Send direct mail campaign

Send direct mail campaign

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

api_instance = SwaggerClient::PostDirectMailApi.new

post_direct_mail = SwaggerClient::PostDirectMail.new # PostDirectMail | PostDirectMail model


begin
  #Send direct mail campaign
  result = api_instance.post_direct_mail_campaigns_send_post(post_direct_mail)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling PostDirectMailApi->post_direct_mail_campaigns_send_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **post_direct_mail** | [**PostDirectMail**](PostDirectMail.md)| PostDirectMail model | 

### Return type

**String**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **post_direct_mail_locations_search_by_country_get**
> String post_direct_mail_locations_search_by_country_get(country, q, opts)

Search for a location

Search for a location

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

api_instance = SwaggerClient::PostDirectMailApi.new

country = 'country_example' # String | Country Code to search

q = 'q_example' # String | Search term (e.g. post code, city name)

opts = { 
  page: 1, # Integer | Page number
  limit: 10 # Integer | Number of records per page
}

begin
  #Search for a location
  result = api_instance.post_direct_mail_locations_search_by_country_get(country, q, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling PostDirectMailApi->post_direct_mail_locations_search_by_country_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **country** | **String**| Country Code to search | 
 **q** | **String**| Search term (e.g. post code, city name) | 
 **page** | **Integer**| Page number | [optional] [default to 1]
 **limit** | **Integer**| Number of records per page | [optional] [default to 10]

### Return type

**String**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



