# ClickSendClient::AccountApi

All URIs are relative to *https://rest.clicksend.com/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**account_get**](AccountApi.md#account_get) | **GET** /account | Get account information
[**account_post**](AccountApi.md#account_post) | **POST** /account | Create a new account
[**account_verify_send_put**](AccountApi.md#account_verify_send_put) | **PUT** /account-verify/send | Send account activation token
[**account_verify_verify_by_activation_token_put**](AccountApi.md#account_verify_verify_by_activation_token_put) | **PUT** /account-verify/verify/{activation_token} | Verify new account
[**forgot_password_put**](AccountApi.md#forgot_password_put) | **PUT** /forgot-password | Forgot password
[**forgot_password_verify_put**](AccountApi.md#forgot_password_verify_put) | **PUT** /forgot-password/verify | Verify forgot password
[**forgot_username_put**](AccountApi.md#forgot_username_put) | **PUT** /forgot-username | Forgot username


# **account_get**
> String account_get

Get account information

Get account details

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

api_instance = ClickSendClient::AccountApi.new

begin
  #Get account information
  result = api_instance.account_get
  p result
rescue ClickSendClient::ApiError => e
  puts "Exception when calling AccountApi->account_get: #{e}"
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



# **account_post**
> String account_post(account)

Create a new account

Create An Account

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

api_instance = ClickSendClient::AccountApi.new

account = ClickSendClient::Account.new # Account | Account model


begin
  #Create a new account
  result = api_instance.account_post(account)
  p result
rescue ClickSendClient::ApiError => e
  puts "Exception when calling AccountApi->account_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account** | [**Account**](Account.md)| Account model | 

### Return type

**String**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **account_verify_send_put**
> String account_verify_send_put(account_verify)

Send account activation token

Send account activation token

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

api_instance = ClickSendClient::AccountApi.new

account_verify = ClickSendClient::AccountVerify.new # AccountVerify | Account details


begin
  #Send account activation token
  result = api_instance.account_verify_send_put(account_verify)
  p result
rescue ClickSendClient::ApiError => e
  puts "Exception when calling AccountApi->account_verify_send_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_verify** | [**AccountVerify**](AccountVerify.md)| Account details | 

### Return type

**String**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **account_verify_verify_by_activation_token_put**
> String account_verify_verify_by_activation_token_put(activation_token)

Verify new account

Verify new account

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

api_instance = ClickSendClient::AccountApi.new

activation_token = 56 # Integer | 


begin
  #Verify new account
  result = api_instance.account_verify_verify_by_activation_token_put(activation_token)
  p result
rescue ClickSendClient::ApiError => e
  puts "Exception when calling AccountApi->account_verify_verify_by_activation_token_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **activation_token** | **Integer**|  | 

### Return type

**String**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **forgot_password_put**
> String forgot_password_put(opts)

Forgot password

Forgot password

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

api_instance = ClickSendClient::AccountApi.new

opts = { 
  forgot_password: ClickSendClient::ForgotPassword.new # ForgotPassword | 
}

begin
  #Forgot password
  result = api_instance.forgot_password_put(opts)
  p result
rescue ClickSendClient::ApiError => e
  puts "Exception when calling AccountApi->forgot_password_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **forgot_password** | [**ForgotPassword**](ForgotPassword.md)|  | [optional] 

### Return type

**String**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **forgot_password_verify_put**
> String forgot_password_verify_put(verify_password)

Verify forgot password

Verify forgot password

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

api_instance = ClickSendClient::AccountApi.new

verify_password = ClickSendClient::AccountForgotPasswordVerify.new # AccountForgotPasswordVerify | verifyPassword data


begin
  #Verify forgot password
  result = api_instance.forgot_password_verify_put(verify_password)
  p result
rescue ClickSendClient::ApiError => e
  puts "Exception when calling AccountApi->forgot_password_verify_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **verify_password** | [**AccountForgotPasswordVerify**](AccountForgotPasswordVerify.md)| verifyPassword data | 

### Return type

**String**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **forgot_username_put**
> String forgot_username_put(opts)

Forgot username

Forgot username

### Example
```ruby
# load the gem
require 'clicksend_client'

api_instance = ClickSendClient::AccountApi.new

opts = { 
  forgot_username: ClickSendClient::ForgotUsername.new # ForgotUsername | 
}

begin
  #Forgot username
  result = api_instance.forgot_username_put(opts)
  p result
rescue ClickSendClient::ApiError => e
  puts "Exception when calling AccountApi->forgot_username_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **forgot_username** | [**ForgotUsername**](ForgotUsername.md)|  | [optional] 

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



