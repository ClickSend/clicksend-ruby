=begin
#ClickSend v3 API

# This is an official SDK for [ClickSend](https://clicksend.com)  Below you will find a current list of the available methods for clicksend.  *NOTE: You will need to create a free account to use the API. You can register [here](https://dashboard.clicksend.com/#/signup/step1/)..* 

OpenAPI spec version: 3.1
Contact: support@clicksend.com
Generated by: https://github.com/clicksend-api/clicksend-codegen.git
ClickSend Codegen version: 2.4.10-SNAPSHOT

=end

require 'spec_helper'
require 'json'

# Unit tests for ClickSendClient::AccountApi
# Automatically generated by clicksend-codegen (github.com/clicksend-api/clicksend-codegen)
# Please update as you see appropriate
describe 'AccountApi' do
  before do
    # run before each test
    @instance = ClickSendClient::AccountApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of AccountApi' do
    it 'should create an instance of AccountApi' do
      expect(@instance).to be_instance_of(ClickSendClient::AccountApi)
    end
  end

  # unit tests for account_get
  # Get account information
  # Get account details
  # @param [Hash] opts the optional parameters
  # @return [String]
  describe 'account_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for account_post
  # Create a new account
  # Create An Account
  # @param account Account model
  # @param [Hash] opts the optional parameters
  # @return [String]
  describe 'account_post test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for account_useage_by_subaccount_get
  # Get account useage by subaccount
  # Get account useage by subaccount
  # @param year Year to filter by (yyyy)
  # @param month Month to filter by (mm)
  # @param [Hash] opts the optional parameters
  # @return [String]
  describe 'account_useage_by_subaccount_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for account_verify_send_put
  # Send account activation token
  # Send account activation token
  # @param account_verify Account details
  # @param [Hash] opts the optional parameters
  # @return [String]
  describe 'account_verify_send_put test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for account_verify_verify_by_activation_token_put
  # Verify new account
  # Verify new account
  # @param activation_token 
  # @param [Hash] opts the optional parameters
  # @return [String]
  describe 'account_verify_verify_by_activation_token_put test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for forgot_password_put
  # Forgot password
  # Forgot password
  # @param [Hash] opts the optional parameters
  # @option opts [ForgotPassword] :forgot_password 
  # @return [String]
  describe 'forgot_password_put test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for forgot_password_verify_put
  # Verify forgot password
  # Verify forgot password
  # @param verify_password verifyPassword data
  # @param [Hash] opts the optional parameters
  # @return [String]
  describe 'forgot_password_verify_put test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for forgot_username_put
  # Forgot username
  # Forgot username
  # @param [Hash] opts the optional parameters
  # @option opts [ForgotUsername] :forgot_username 
  # @return [String]
  describe 'forgot_username_put test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
