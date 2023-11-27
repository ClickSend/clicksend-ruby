=begin
#ClickSend v3 API

# This is an official SDK for [ClickSend](https://clicksend.com)  Below you will find a current list of the available methods for clicksend.  *NOTE: You will need to create a free account to use the API. You can register [here](https://dashboard.clicksend.com/#/signup/step1/)..* 

OpenAPI spec version: 3.1
Contact: support@clicksend.com
Generated by: https://github.com/clicksend-api/clicksend-codegen.git
ClickSend Codegen version: 2.4.36

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for ClickSendClient::AccountForgotPasswordVerify
# Automatically generated by clicksend-codegen (github.com/clicksend-api/clicksend-codegen)
# Please update as you see appropriate
describe 'AccountForgotPasswordVerify' do
  before do
    # run before each test
    @instance = ClickSendClient::AccountForgotPasswordVerify.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of AccountForgotPasswordVerify' do
    it 'should create an instance of AccountForgotPasswordVerify' do
      expect(@instance).to be_instance_of(ClickSendClient::AccountForgotPasswordVerify)
    end
  end
  describe 'test attribute "subaccount_id"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "activation_token"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "password"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
