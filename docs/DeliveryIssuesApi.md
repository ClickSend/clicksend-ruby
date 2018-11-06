# ClickSendClient::DeliveryIssuesApi

All URIs are relative to *https://rest.clicksend.com/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delivery_issues_get**](DeliveryIssuesApi.md#delivery_issues_get) | **GET** /delivery-issues | Get all delivery issues
[**delivery_issues_post**](DeliveryIssuesApi.md#delivery_issues_post) | **POST** /delivery-issues | Create delivery Issue


# **delivery_issues_get**
> String delivery_issues_get(opts)

Get all delivery issues

Get all delivery issues

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

api_instance = ClickSendClient::DeliveryIssuesApi.new

opts = { 
  page: 1, # Integer | Page number
  limit: 10 # Integer | Number of records per page
}

begin
  #Get all delivery issues
  result = api_instance.delivery_issues_get(opts)
  p result
rescue ClickSendClient::ApiError => e
  puts "Exception when calling DeliveryIssuesApi->delivery_issues_get: #{e}"
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



# **delivery_issues_post**
> String delivery_issues_post(delivery_issue)

Create delivery Issue

Create delivery Issue

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

api_instance = ClickSendClient::DeliveryIssuesApi.new

delivery_issue = ClickSendClient::DeliveryIssue.new # DeliveryIssue | DeliveryIssue model


begin
  #Create delivery Issue
  result = api_instance.delivery_issues_post(delivery_issue)
  p result
rescue ClickSendClient::ApiError => e
  puts "Exception when calling DeliveryIssuesApi->delivery_issues_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **delivery_issue** | [**DeliveryIssue**](DeliveryIssue.md)| DeliveryIssue model | 

### Return type

**String**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



