# The official ruby library for ClickSend v3 REST API

 This is the official [ClickSend](https://clicksend.com) SDK.  *You'll need to create a free account to use the API. You can register [here](https://www.clicksend.com/signup).*  You can use our API documentation along with the SDK. Our API docs can be found [here](https://developers.clicksend.com). 

## Installation

### Build a gem

To build the Ruby code into a gem:

```shell
gem build clicksend_client.gemspec
```

Then either install the gem locally:

```shell
gem install ./clicksend_client-1.0.0.gem
```
(for development, run `gem install --dev ./clicksend_client-1.0.0.gem` to install the development dependencies)

or publish the gem to a gem hosting service, e.g. [RubyGems](https://rubygems.org/).

Finally add this to the Gemfile:

    gem 'clicksend_client', '~> 1.0.0'

### Install from Git

If the Ruby gem is hosted at a git repository: https://github.com/GIT_USER_ID/GIT_REPO_ID, then add the following in the Gemfile:

    gem 'clicksend_client', :git => 'https://github.com/GIT_USER_ID/GIT_REPO_ID.git'

### Include the Ruby code directly

Include the Ruby code directly using `-I` as follows:

```shell
ruby -Ilib script.rb
```

## Getting Started

Please follow the [installation](#installation) procedure and then run the following code:
```ruby
# Load the gem
require 'clicksend_client'

# Setup authorization
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

## Documentation for API Endpoints and Models

Documentation can be found here: [ClickSend API Docs](https://developers.clicksend.com/docs/)

## Documentation for Authorization


### BasicAuth

- **Type**: HTTP basic authentication

