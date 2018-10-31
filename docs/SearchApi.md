# SwaggerClient::SearchApi

All URIs are relative to *https://rest.clicksend.com/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**search_contacts_lists_get**](SearchApi.md#search_contacts_lists_get) | **GET** /search/contacts-lists | Get list of searched contact list


# **search_contacts_lists_get**
> String search_contacts_lists_get(q, opts)

Get list of searched contact list

Get list of searched contact list

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

api_instance = SwaggerClient::SearchApi.new

q = 'q_example' # String | Your keyword or query.

opts = { 
  page: 1, # Integer | Page number
  limit: 10 # Integer | Number of records per page
}

begin
  #Get list of searched contact list
  result = api_instance.search_contacts_lists_get(q, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling SearchApi->search_contacts_lists_get: #{e}"
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



