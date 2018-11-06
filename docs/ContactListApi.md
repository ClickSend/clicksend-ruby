# ClickSendClient::ContactListApi

All URIs are relative to *https://rest.clicksend.com/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**lists_by_list_id_delete**](ContactListApi.md#lists_by_list_id_delete) | **DELETE** /lists/{list_id} | ListsByListIdDelete
[**lists_by_list_id_get**](ContactListApi.md#lists_by_list_id_get) | **GET** /lists/{list_id} | Get specific contact list
[**lists_by_list_id_put**](ContactListApi.md#lists_by_list_id_put) | **PUT** /lists/{list_id} | Update specific contact list
[**lists_get**](ContactListApi.md#lists_get) | **GET** /lists | Get all contact lists
[**lists_import_by_list_id_post**](ContactListApi.md#lists_import_by_list_id_post) | **POST** /lists/{list_id}/import | Import contacts to list
[**lists_post**](ContactListApi.md#lists_post) | **POST** /lists | Create new contact list
[**lists_remove_duplicates_by_list_id_put**](ContactListApi.md#lists_remove_duplicates_by_list_id_put) | **PUT** /lists/{list_id}/remove-duplicates | Remove duplicate contacts


# **lists_by_list_id_delete**
> String lists_by_list_id_delete(list_id)

ListsByListIdDelete

Delete a specific contact list

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

api_instance = ClickSendClient::ContactListApi.new

list_id = 56 # Integer | List ID


begin
  #ListsByListIdDelete
  result = api_instance.lists_by_list_id_delete(list_id)
  p result
rescue ClickSendClient::ApiError => e
  puts "Exception when calling ContactListApi->lists_by_list_id_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **list_id** | **Integer**| List ID | 

### Return type

**String**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **lists_by_list_id_get**
> String lists_by_list_id_get(list_id)

Get specific contact list

Get specific contact list

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

api_instance = ClickSendClient::ContactListApi.new

list_id = 56 # Integer | List ID


begin
  #Get specific contact list
  result = api_instance.lists_by_list_id_get(list_id)
  p result
rescue ClickSendClient::ApiError => e
  puts "Exception when calling ContactListApi->lists_by_list_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **list_id** | **Integer**| List ID | 

### Return type

**String**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **lists_by_list_id_put**
> String lists_by_list_id_put(list_id, list_name)

Update specific contact list

Update specific contact list

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

api_instance = ClickSendClient::ContactListApi.new

list_id = 56 # Integer | Your list id

list_name = 'list_name_example' # String | Your new list name


begin
  #Update specific contact list
  result = api_instance.lists_by_list_id_put(list_id, list_name)
  p result
rescue ClickSendClient::ApiError => e
  puts "Exception when calling ContactListApi->lists_by_list_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **list_id** | **Integer**| Your list id | 
 **list_name** | **String**| Your new list name | 

### Return type

**String**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **lists_get**
> String lists_get(opts)

Get all contact lists

Get all contact lists

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

api_instance = ClickSendClient::ContactListApi.new

opts = { 
  page: 1, # Integer | Page number
  limit: 10 # Integer | Number of records per page
}

begin
  #Get all contact lists
  result = api_instance.lists_get(opts)
  p result
rescue ClickSendClient::ApiError => e
  puts "Exception when calling ContactListApi->lists_get: #{e}"
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



# **lists_import_by_list_id_post**
> String lists_import_by_list_id_post(list_id, file)

Import contacts to list

Import contacts to list

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

api_instance = ClickSendClient::ContactListApi.new

list_id = 56 # Integer | Your contact list id you want to access.

file = ClickSendClient::ContactListImport.new # ContactListImport | ContactListImport model


begin
  #Import contacts to list
  result = api_instance.lists_import_by_list_id_post(list_id, file)
  p result
rescue ClickSendClient::ApiError => e
  puts "Exception when calling ContactListApi->lists_import_by_list_id_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **list_id** | **Integer**| Your contact list id you want to access. | 
 **file** | [**ContactListImport**](ContactListImport.md)| ContactListImport model | 

### Return type

**String**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **lists_post**
> String lists_post(list_name)

Create new contact list

Create new contact list

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

api_instance = ClickSendClient::ContactListApi.new

list_name = 'list_name_example' # String | Your contact list name


begin
  #Create new contact list
  result = api_instance.lists_post(list_name)
  p result
rescue ClickSendClient::ApiError => e
  puts "Exception when calling ContactListApi->lists_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **list_name** | **String**| Your contact list name | 

### Return type

**String**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **lists_remove_duplicates_by_list_id_put**
> String lists_remove_duplicates_by_list_id_put(list_id)

Remove duplicate contacts

Remove duplicate contacts

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

api_instance = ClickSendClient::ContactListApi.new

list_id = 56 # Integer | Your list id


begin
  #Remove duplicate contacts
  result = api_instance.lists_remove_duplicates_by_list_id_put(list_id)
  p result
rescue ClickSendClient::ApiError => e
  puts "Exception when calling ContactListApi->lists_remove_duplicates_by_list_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **list_id** | **Integer**| Your list id | 

### Return type

**String**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



