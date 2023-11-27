# ClickSendClient::GlobalSendingApi

All URIs are relative to *https://rest.clicksend.com/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**list_countries_get**](GlobalSendingApi.md#list_countries_get) | **GET** /country-list | List of countries
[**user_countries_agree_post**](GlobalSendingApi.md#user_countries_agree_post) | **POST** /user-countries/agree | Agree to rules and regulation
[**user_countries_get**](GlobalSendingApi.md#user_countries_get) | **GET** /user-countries | Get Countries for Global Sending
[**user_countries_post**](GlobalSendingApi.md#user_countries_post) | **POST** /user-countries | Select Countries for Global Sending


# **list_countries_get**
> String list_countries_get

List of countries

List of countries with IDs that can be used in selecting countries for Global sending.

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

api_instance = ClickSendClient::GlobalSendingApi.new

begin
  #List of countries
  result = api_instance.list_countries_get
  p result
rescue ClickSendClient::ApiError => e
  puts "Exception when calling GlobalSendingApi->list_countries_get: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

**String**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **user_countries_agree_post**
> String user_countries_agree_post

Agree to rules and regulation

To agree on rules and regulations of selected countries and confirm selection.

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

api_instance = ClickSendClient::GlobalSendingApi.new

begin
  #Agree to rules and regulation
  result = api_instance.user_countries_agree_post
  p result
rescue ClickSendClient::ApiError => e
  puts "Exception when calling GlobalSendingApi->user_countries_agree_post: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

**String**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **user_countries_get**
> String user_countries_get

Get Countries for Global Sending

Get the list of selected countries.

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

api_instance = ClickSendClient::GlobalSendingApi.new

begin
  #Get Countries for Global Sending
  result = api_instance.user_countries_get
  p result
rescue ClickSendClient::ApiError => e
  puts "Exception when calling GlobalSendingApi->user_countries_get: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

**String**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **user_countries_post**
> String user_countries_post(country_list_ids)

Select Countries for Global Sending

Use this endpoint to select countries that you intend to send sms / mms to. To remove / unselect a country, just remove the country id from the array in the payload.

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

api_instance = ClickSendClient::GlobalSendingApi.new

country_list_ids = ClickSendClient::CountryListIds.new # CountryListIds | Id of countr(ies) you want to select, you can get them from GET /country-list response


begin
  #Select Countries for Global Sending
  result = api_instance.user_countries_post(country_list_ids)
  p result
rescue ClickSendClient::ApiError => e
  puts "Exception when calling GlobalSendingApi->user_countries_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **country_list_ids** | [**CountryListIds**](CountryListIds.md)| Id of countr(ies) you want to select, you can get them from GET /country-list response | 

### Return type

**String**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



