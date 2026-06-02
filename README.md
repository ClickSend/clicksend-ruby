# The official Ruby SDK for ClickSend v3 API

This is the official [ClickSend](https://clicksend.com) Ruby SDK. Full API documentation can be found [here](https://developers.clicksend.com/docs/rest/v3/?ruby#introduction).

## Requirements

- Ruby >= 2.7 (install via [Homebrew](https://brew.sh): `brew install ruby`)
- Bundler (`gem install bundler`)
- A [ClickSend account](https://dashboard.clicksend.com/#/signup/step1/) with an API key

## Installation

Add the gem to your `Gemfile`:

```ruby
source 'https://rubygems.org'

gem 'clicksend_client', '~> 1.0.0'
```

Then install:

```bash
bundle install
```

### Install from Git

```ruby
gem 'clicksend_client', git: 'https://github.com/GIT_USER_ID/GIT_REPO_ID.git'
```

## Getting Started

```ruby
#!/usr/bin/env ruby
# frozen_string_literal: true

require 'clicksend_client'

# — Credentials ————————————————————————————————————————————————————————————————
USERNAME = 'your_username'
API_KEY  = 'your_api_key'

# — Message details ————————————————————————————————————————————————————————————
FROM_NUMBER = ''              # E.164 format e.g. "+61400000000", or leave empty for default sender ID
TO_NUMBER   = '+61411111111'  # Recipient in E.164 format
MESSAGE     = 'Hello from ClickSend Ruby SDK!'

# — Configure the client ———————————————————————————————————————————————————————
ClickSendClient.configure do |config|
  config.username = USERNAME
  config.password = API_KEY
end

# — Build and send the SMS —————————————————————————————————————————————————————
sms_message = ClickSendClient::SmsMessage.new(
  to:     TO_NUMBER,
  from:   FROM_NUMBER,
  body:   MESSAGE,
  source: 'ruby'
)

collection = ClickSendClient::SmsMessageCollection.new(messages: [sms_message])

begin
  api      = ClickSendClient::SMSApi.new
  response = api.sms_send_post(collection)
  puts "Success: #{response}"
rescue ClickSendClient::ApiError => e
  puts "API error: #{e.message}"
  puts "Response body: #{e.response_body}" if e.respond_to?(:response_body)
end
```

You can find your API key in the [ClickSend Dashboard](https://dashboard.clicksend.com) under **Account > API Credentials**.

## Usage

```bash
bundle exec ruby send_sms.rb
```

A successful response looks like:

```json
{
  "http_code": 200,
  "response_code": "SUCCESS",
  "response_msg": "Messages queued for delivery.",
  "data": {
    "total_price": 0.891,
    "total_count": 1,
    "queued_count": 1,
    "messages": [
      {
        "status": "SUCCESS",
        "to": "+61411111111",
        "from": "ClickSend",
        "body": "Hello from ClickSend Ruby SDK!",
        "message_price": "0.8910",
        "carrier": "Telstra",
        "country": "AU"
      }
    ]
  }
}
```

## Upgrading the SDK

Update the version in your `Gemfile`, then run:

```bash
bundle update clicksend_client
```

Available versions are listed on [RubyGems](https://rubygems.org/gems/clicksend_client/versions).

## Documentation

Full SDK and REST API documentation: [developers.clicksend.com](https://developers.clicksend.com/docs/rest/v3/?ruby#introduction)

## Authorization


### BasicAuth

- **Type**: HTTP basic authentication — pass your ClickSend username and API key as `config.username` / `config.password`


## Resources

- [ClickSend Ruby SDK on RubyGems](https://rubygems.org/gems/clicksend_client)
- [ClickSend REST API v3 Docs](https://developers.clicksend.com/docs/rest/v3/)
- [ClickSend Dashboard](https://dashboard.clicksend.com)
- [Support](https://help.clicksend.com)
