# SwaggerClient::NumberApi

All URIs are relative to *https://rest.clicksend.com/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**numbers_buy_by_dedicated_number_post**](NumberApi.md#numbers_buy_by_dedicated_number_post) | **POST** /numbers/buy/{dedicated_number} | Buy dedicated number
[**numbers_get**](NumberApi.md#numbers_get) | **GET** /numbers | Get all availible dedicated numbers
[**numbers_search_by_country_get**](NumberApi.md#numbers_search_by_country_get) | **GET** /numbers/search/{country} | Get all dedicated numbers by country


# **numbers_buy_by_dedicated_number_post**
> String numbers_buy_by_dedicated_number_post(dedicated_number)

Buy dedicated number

Buy dedicated number

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

api_instance = SwaggerClient::NumberApi.new

dedicated_number = 'dedicated_number_example' # String | Phone number to purchase


begin
  #Buy dedicated number
  result = api_instance.numbers_buy_by_dedicated_number_post(dedicated_number)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling NumberApi->numbers_buy_by_dedicated_number_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dedicated_number** | **String**| Phone number to purchase | 

### Return type

**String**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **numbers_get**
> String numbers_get(opts)

Get all availible dedicated numbers

Get all availible dedicated numbers

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

api_instance = SwaggerClient::NumberApi.new

opts = { 
  page: 1, # Integer | Page number
  limit: 10 # Integer | Number of records per page
}

begin
  #Get all availible dedicated numbers
  result = api_instance.numbers_get(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling NumberApi->numbers_get: #{e}"
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



# **numbers_search_by_country_get**
> String numbers_search_by_country_get(country, opts)

Get all dedicated numbers by country

Get all dedicated numbers by country

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

api_instance = SwaggerClient::NumberApi.new

country = 'country_example' # String | Country code to search

opts = { 
  search: 'search_example', # String | Your search pattern or query.
  search_type: 56, # Integer | Your strategy for searching, 0 = starts with, 1 = anywhere, 2 = ends with.
  page: 1, # Integer | Page number
  limit: 10 # Integer | Number of records per page
}

begin
  #Get all dedicated numbers by country
  result = api_instance.numbers_search_by_country_get(country, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling NumberApi->numbers_search_by_country_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **country** | **String**| Country code to search | 
 **search** | **String**| Your search pattern or query. | [optional] 
 **search_type** | **Integer**| Your strategy for searching, 0 &#x3D; starts with, 1 &#x3D; anywhere, 2 &#x3D; ends with. | [optional] 
 **page** | **Integer**| Page number | [optional] [default to 1]
 **limit** | **Integer**| Number of records per page | [optional] [default to 10]

### Return type

**String**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



