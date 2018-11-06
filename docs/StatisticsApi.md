# ClickSendClient::StatisticsApi

All URIs are relative to *https://rest.clicksend.com/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**statistics_mms_get**](StatisticsApi.md#statistics_mms_get) | **GET** /statistics/mms | Get mms statistics
[**statistics_sms_get**](StatisticsApi.md#statistics_sms_get) | **GET** /statistics/sms | Get sms statistics
[**statistics_voice_get**](StatisticsApi.md#statistics_voice_get) | **GET** /statistics/voice | Get voice statistics


# **statistics_mms_get**
> String statistics_mms_get

Get mms statistics

Get mms statistics

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

api_instance = ClickSendClient::StatisticsApi.new

begin
  #Get mms statistics
  result = api_instance.statistics_mms_get
  p result
rescue ClickSendClient::ApiError => e
  puts "Exception when calling StatisticsApi->statistics_mms_get: #{e}"
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



# **statistics_sms_get**
> String statistics_sms_get

Get sms statistics

Get sms statistics

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

api_instance = ClickSendClient::StatisticsApi.new

begin
  #Get sms statistics
  result = api_instance.statistics_sms_get
  p result
rescue ClickSendClient::ApiError => e
  puts "Exception when calling StatisticsApi->statistics_sms_get: #{e}"
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



# **statistics_voice_get**
> String statistics_voice_get

Get voice statistics

Get voice statistics

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

api_instance = ClickSendClient::StatisticsApi.new

begin
  #Get voice statistics
  result = api_instance.statistics_voice_get
  p result
rescue ClickSendClient::ApiError => e
  puts "Exception when calling StatisticsApi->statistics_voice_get: #{e}"
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



