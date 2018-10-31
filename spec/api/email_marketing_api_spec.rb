=begin
#ClickSend v3 REST API

# This is the official [ClickSend](https://clicksend.com) SDK.  *You'll need to create a free account to use the API. You can register [here](https://www.clicksend.com/signup).*  You can use our API documentation along with the SDK. Our API docs can be found [here](https://developers.clicksend.com). 

OpenAPI spec version: 3.1.0
Contact: support@clicksend.com
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.0-SNAPSHOT

=end

require 'spec_helper'
require 'json'

# Unit tests for SwaggerClient::EmailMarketingApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'EmailMarketingApi' do
  before do
    # run before each test
    @instance = SwaggerClient::EmailMarketingApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of EmailMarketingApi' do
    it 'should create an instance of EmailMarketingApi' do
      expect(@instance).to be_instance_of(SwaggerClient::EmailMarketingApi)
    end
  end

  # unit tests for allowed_email_address_get
  # Get all email addresses
  # Get all email addresses
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page Page number
  # @option opts [Integer] :limit Number of records per page
  # @return [String]
  describe 'allowed_email_address_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for allowed_email_address_post
  # Create allowed Email Address
  # Create allowed Email Address
  # @param email_address Email to be allowed.
  # @param [Hash] opts the optional parameters
  # @return [String]
  describe 'allowed_email_address_post test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for cancel_email_campaign_put
  # Cancel email campaign
  # Cancel email campaign
  # @param email_campaign_id Allowed email campaign id
  # @param [Hash] opts the optional parameters
  # @return [String]
  describe 'cancel_email_campaign_put test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for email_campaign_get
  # Get specific email campaign
  # Get specific email campaign
  # @param email_campaign_id Allowed email campaign id
  # @param [Hash] opts the optional parameters
  # @return [String]
  describe 'email_campaign_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for email_campaign_history_export_get
  # Export specific email campaign history
  # Export specific email campaign history
  # @param email_campaign_id Allowed email campaign id
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :date_from Start date
  # @option opts [Integer] :date_to End date
  # @return [File]
  describe 'email_campaign_history_export_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for email_campaign_history_get
  # Get specific email campaign history
  # Get specific email campaign history
  # @param email_campaign_id Allowed email campaign id
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :date_from Start date
  # @option opts [Integer] :date_to End date
  # @option opts [Integer] :page Page number
  # @option opts [Integer] :limit Number of records per page
  # @return [String]
  describe 'email_campaign_history_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for email_campaign_post
  # Send email campaign
  # Send email campaign
  # @param email_campaign Email model
  # @param [Hash] opts the optional parameters
  # @return [String]
  describe 'email_campaign_post test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for email_campaign_price_post
  # Calculate email campaign price
  # Calculate email campaign price
  # @param email_campaign Email model
  # @param [Hash] opts the optional parameters
  # @return [String]
  describe 'email_campaign_price_post test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for email_campaign_put
  # Edit email campaign
  # Edit email campaign
  # @param email_campaign_id Allowed email campaign id
  # @param [Hash] opts the optional parameters
  # @return [String]
  describe 'email_campaign_put test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for email_campaigns_get
  # Get all email campaigns
  # Get all email campaigns
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page Page number
  # @option opts [Integer] :limit Number of records per page
  # @return [String]
  describe 'email_campaigns_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for send_verification_token_get
  # Send verification token
  # Send verification token
  # @param email_address_id Allowed email address id
  # @param [Hash] opts the optional parameters
  # @return [String]
  describe 'send_verification_token_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for specific_allowed_email_address_delete
  # Delete specific email address
  # Delete specific email address
  # @param email_address_id Allowed email address id
  # @param [Hash] opts the optional parameters
  # @return [String]
  describe 'specific_allowed_email_address_delete test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for specific_allowed_email_address_get
  # Get specific email address
  # Get specific email address
  # @param email_address_id Allowed email address id
  # @param [Hash] opts the optional parameters
  # @return [String]
  describe 'specific_allowed_email_address_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for verify_allowed_email_address_get
  # Verify email address using verification token
  # Verify email address using verification token
  # @param email_address_id Allowed email address id
  # @param activation_token Your activation token.
  # @param [Hash] opts the optional parameters
  # @return [String]
  describe 'verify_allowed_email_address_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
