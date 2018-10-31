# SwaggerClient::CountriesApi

All URIs are relative to *https://rest.clicksend.com/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**countries_get**](CountriesApi.md#countries_get) | **GET** /countries | Get all country codes


# **countries_get**
> String countries_get

Get all country codes

Get all countries

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::CountriesApi.new

begin
  #Get all country codes
  result = api_instance.countries_get
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CountriesApi->countries_get: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



