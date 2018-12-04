# ClickSendClient::ContactApi

All URIs are relative to *https://rest.clicksend.com/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**lists_contacts_by_list_id_and_contact_id_delete**](ContactApi.md#lists_contacts_by_list_id_and_contact_id_delete) | **DELETE** /lists/{list_id}/contacts/{contact_id} | Delete a contact
[**lists_contacts_by_list_id_and_contact_id_get**](ContactApi.md#lists_contacts_by_list_id_and_contact_id_get) | **GET** /lists/{list_id}/contacts/{contact_id} | Get a specific contact
[**lists_contacts_by_list_id_and_contact_id_put**](ContactApi.md#lists_contacts_by_list_id_and_contact_id_put) | **PUT** /lists/{list_id}/contacts/{contact_id} | Update specific contact
[**lists_contacts_by_list_id_get**](ContactApi.md#lists_contacts_by_list_id_get) | **GET** /lists/{list_id}/contacts | Get all contacts in a list
[**lists_contacts_by_list_id_post**](ContactApi.md#lists_contacts_by_list_id_post) | **POST** /lists/{list_id}/contacts | Create new contact
[**lists_remove_opted_out_contacts_by_list_id_and_opt_out_list_id_put**](ContactApi.md#lists_remove_opted_out_contacts_by_list_id_and_opt_out_list_id_put) | **PUT** /lists/{list_id}/remove-opted-out-contacts/{opt_out_list_id} | Remove all opted out contacts
[**lists_transfer_contact_put**](ContactApi.md#lists_transfer_contact_put) | **PUT** /lists/{from_list_id}/contacts/{contact_id}/transfer/{to_list_id} | Transfer contact to another list


# **lists_contacts_by_list_id_and_contact_id_delete**
> String lists_contacts_by_list_id_and_contact_id_delete(list_id, contact_id)

Delete a contact

Delete a contact

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

api_instance = ClickSendClient::ContactApi.new

list_id = 56 # Integer | List ID

contact_id = 56 # Integer | Contact ID


begin
  #Delete a contact
  result = api_instance.lists_contacts_by_list_id_and_contact_id_delete(list_id, contact_id)
  p result
rescue ClickSendClient::ApiError => e
  puts "Exception when calling ContactApi->lists_contacts_by_list_id_and_contact_id_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **list_id** | **Integer**| List ID | 
 **contact_id** | **Integer**| Contact ID | 

### Return type

**String**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **lists_contacts_by_list_id_and_contact_id_get**
> String lists_contacts_by_list_id_and_contact_id_get(list_id, contact_id)

Get a specific contact

Get a specific contact

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

api_instance = ClickSendClient::ContactApi.new

list_id = 56 # Integer | Your contact list id you want to access.

contact_id = 56 # Integer | Your contact id you want to access.


begin
  #Get a specific contact
  result = api_instance.lists_contacts_by_list_id_and_contact_id_get(list_id, contact_id)
  p result
rescue ClickSendClient::ApiError => e
  puts "Exception when calling ContactApi->lists_contacts_by_list_id_and_contact_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **list_id** | **Integer**| Your contact list id you want to access. | 
 **contact_id** | **Integer**| Your contact id you want to access. | 

### Return type

**String**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **lists_contacts_by_list_id_and_contact_id_put**
> String lists_contacts_by_list_id_and_contact_id_put(list_id, contact_id, contact)

Update specific contact

Update specific contact

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

api_instance = ClickSendClient::ContactApi.new

list_id = 56 # Integer | Contact list id

contact_id = 56 # Integer | Contact ID

contact = ClickSendClient::Contact.new # Contact | Contact model


begin
  #Update specific contact
  result = api_instance.lists_contacts_by_list_id_and_contact_id_put(list_id, contact_id, contact)
  p result
rescue ClickSendClient::ApiError => e
  puts "Exception when calling ContactApi->lists_contacts_by_list_id_and_contact_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **list_id** | **Integer**| Contact list id | 
 **contact_id** | **Integer**| Contact ID | 
 **contact** | [**Contact**](Contact.md)| Contact model | 

### Return type

**String**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **lists_contacts_by_list_id_get**
> String lists_contacts_by_list_id_get(list_id, opts)

Get all contacts in a list

Get all contacts in a list

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

api_instance = ClickSendClient::ContactApi.new

list_id = 56 # Integer | Contact list ID

opts = { 
  page: 1, # Integer | Page number
  limit: 10 # Integer | Number of records per page
}

begin
  #Get all contacts in a list
  result = api_instance.lists_contacts_by_list_id_get(list_id, opts)
  p result
rescue ClickSendClient::ApiError => e
  puts "Exception when calling ContactApi->lists_contacts_by_list_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **list_id** | **Integer**| Contact list ID | 
 **page** | **Integer**| Page number | [optional] [default to 1]
 **limit** | **Integer**| Number of records per page | [optional] [default to 10]

### Return type

**String**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **lists_contacts_by_list_id_post**
> String lists_contacts_by_list_id_post(contact, list_id)

Create new contact

Create new contact

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

api_instance = ClickSendClient::ContactApi.new

contact = ClickSendClient::Contact.new # Contact | Contact model

list_id = 56 # Integer | List id


begin
  #Create new contact
  result = api_instance.lists_contacts_by_list_id_post(contact, list_id)
  p result
rescue ClickSendClient::ApiError => e
  puts "Exception when calling ContactApi->lists_contacts_by_list_id_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contact** | [**Contact**](Contact.md)| Contact model | 
 **list_id** | **Integer**| List id | 

### Return type

**String**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **lists_remove_opted_out_contacts_by_list_id_and_opt_out_list_id_put**
> String lists_remove_opted_out_contacts_by_list_id_and_opt_out_list_id_put(list_id, opt_out_list_id)

Remove all opted out contacts

Remove all opted out contacts

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

api_instance = ClickSendClient::ContactApi.new

list_id = 56 # Integer | Your list id

opt_out_list_id = 56 # Integer | Your opt out list id


begin
  #Remove all opted out contacts
  result = api_instance.lists_remove_opted_out_contacts_by_list_id_and_opt_out_list_id_put(list_id, opt_out_list_id)
  p result
rescue ClickSendClient::ApiError => e
  puts "Exception when calling ContactApi->lists_remove_opted_out_contacts_by_list_id_and_opt_out_list_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **list_id** | **Integer**| Your list id | 
 **opt_out_list_id** | **Integer**| Your opt out list id | 

### Return type

**String**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **lists_transfer_contact_put**
> String lists_transfer_contact_put(from_list_id, contact_id, to_list_id)

Transfer contact to another list

Transfer contact to another list

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

api_instance = ClickSendClient::ContactApi.new

from_list_id = 56 # Integer | List ID for list that contains contact.

contact_id = 56 # Integer | Contact ID

to_list_id = 56 # Integer | List ID for list you want to transfer contact to.


begin
  #Transfer contact to another list
  result = api_instance.lists_transfer_contact_put(from_list_id, contact_id, to_list_id)
  p result
rescue ClickSendClient::ApiError => e
  puts "Exception when calling ContactApi->lists_transfer_contact_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **from_list_id** | **Integer**| List ID for list that contains contact. | 
 **contact_id** | **Integer**| Contact ID | 
 **to_list_id** | **Integer**| List ID for list you want to transfer contact to. | 

### Return type

**String**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



