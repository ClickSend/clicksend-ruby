# ClickSendClient::AccountRechargeApi

All URIs are relative to *https://rest.clicksend.com/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**recharge_credit_card_get**](AccountRechargeApi.md#recharge_credit_card_get) | **GET** /recharge/credit-card | Get Credit Card info
[**recharge_credit_card_put**](AccountRechargeApi.md#recharge_credit_card_put) | **PUT** /recharge/credit-card | Update credit card info
[**recharge_packages_get**](AccountRechargeApi.md#recharge_packages_get) | **GET** /recharge/packages | Get list of all packages
[**recharge_purchase_by_package_id_put**](AccountRechargeApi.md#recharge_purchase_by_package_id_put) | **PUT** /recharge/purchase/{package_id} | Purchase a package
[**recharge_transactions_by_transaction_id_get**](AccountRechargeApi.md#recharge_transactions_by_transaction_id_get) | **GET** /recharge/transactions/{transaction_id} | Get specific Transaction
[**recharge_transactions_get**](AccountRechargeApi.md#recharge_transactions_get) | **GET** /recharge/transactions | Purchase a package


# **recharge_credit_card_get**
> String recharge_credit_card_get

Get Credit Card info

Get Credit Card info

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

api_instance = ClickSendClient::AccountRechargeApi.new

begin
  #Get Credit Card info
  result = api_instance.recharge_credit_card_get
  p result
rescue ClickSendClient::ApiError => e
  puts "Exception when calling AccountRechargeApi->recharge_credit_card_get: #{e}"
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



# **recharge_credit_card_put**
> String recharge_credit_card_put(credit_card)

Update credit card info

Update credit card info

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

api_instance = ClickSendClient::AccountRechargeApi.new

credit_card = ClickSendClient::CreditCard.new # CreditCard | CreditCard model


begin
  #Update credit card info
  result = api_instance.recharge_credit_card_put(credit_card)
  p result
rescue ClickSendClient::ApiError => e
  puts "Exception when calling AccountRechargeApi->recharge_credit_card_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **credit_card** | [**CreditCard**](CreditCard.md)| CreditCard model | 

### Return type

**String**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **recharge_packages_get**
> String recharge_packages_get(opts)

Get list of all packages

Get list of all packages

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

api_instance = ClickSendClient::AccountRechargeApi.new

opts = { 
  country: 'country_example' # String | Country code
}

begin
  #Get list of all packages
  result = api_instance.recharge_packages_get(opts)
  p result
rescue ClickSendClient::ApiError => e
  puts "Exception when calling AccountRechargeApi->recharge_packages_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **country** | **String**| Country code | [optional] 

### Return type

**String**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **recharge_purchase_by_package_id_put**
> String recharge_purchase_by_package_id_put(package_id)

Purchase a package

Purchase a package

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

api_instance = ClickSendClient::AccountRechargeApi.new

package_id = 56 # Integer | ID of package to purchase


begin
  #Purchase a package
  result = api_instance.recharge_purchase_by_package_id_put(package_id)
  p result
rescue ClickSendClient::ApiError => e
  puts "Exception when calling AccountRechargeApi->recharge_purchase_by_package_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **package_id** | **Integer**| ID of package to purchase | 

### Return type

**String**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **recharge_transactions_by_transaction_id_get**
> String recharge_transactions_by_transaction_id_get(transaction_id)

Get specific Transaction

Get specific Transaction

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

api_instance = ClickSendClient::AccountRechargeApi.new

transaction_id = 'transaction_id_example' # String | ID of transaction to retrieve


begin
  #Get specific Transaction
  result = api_instance.recharge_transactions_by_transaction_id_get(transaction_id)
  p result
rescue ClickSendClient::ApiError => e
  puts "Exception when calling AccountRechargeApi->recharge_transactions_by_transaction_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **transaction_id** | **String**| ID of transaction to retrieve | 

### Return type

**String**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **recharge_transactions_get**
> String recharge_transactions_get(opts)

Purchase a package

Get all transactions

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

api_instance = ClickSendClient::AccountRechargeApi.new

opts = { 
  page: 1, # Integer | Page number
  limit: 10 # Integer | Number of records per page
}

begin
  #Purchase a package
  result = api_instance.recharge_transactions_get(opts)
  p result
rescue ClickSendClient::ApiError => e
  puts "Exception when calling AccountRechargeApi->recharge_transactions_get: #{e}"
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



