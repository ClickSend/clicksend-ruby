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

# Unit tests for SwaggerClient::EmailDeliveryReceiptRulesApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'EmailDeliveryReceiptRulesApi' do
  before do
    # run before each test
    @instance = SwaggerClient::EmailDeliveryReceiptRulesApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of EmailDeliveryReceiptRulesApi' do
    it 'should create an instance of EmailDeliveryReceiptRulesApi' do
      expect(@instance).to be_instance_of(SwaggerClient::EmailDeliveryReceiptRulesApi)
    end
  end

  # unit tests for email_delivery_receipt_automation_delete
  # Delete email delivery receipt automation
  # Delete email delivery receipt automation
  # @param receipt_rule_id Receipt rule id
  # @param [Hash] opts the optional parameters
  # @return [String]
  describe 'email_delivery_receipt_automation_delete test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for email_delivery_receipt_automation_get
  # Get specific email delivery receipt automation
  # Get specific email delivery receipt automation
  # @param receipt_rule_id Receipt rule id
  # @param [Hash] opts the optional parameters
  # @return [String]
  describe 'email_delivery_receipt_automation_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for email_delivery_receipt_automation_post
  # Create email delivery receipt automations
  # Create email delivery receipt automations
  # @param delivery_receipt_rule Email delivery receipt rule model
  # @param [Hash] opts the optional parameters
  # @return [String]
  describe 'email_delivery_receipt_automation_post test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for email_delivery_receipt_automation_put
  # Update email delivery receipt automation
  # Update email delivery receipt automation
  # @param receipt_rule_id Receipt rule id
  # @param delivery_receipt_rule Delivery receipt rule model
  # @param [Hash] opts the optional parameters
  # @return [String]
  describe 'email_delivery_receipt_automation_put test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for email_delivery_receipt_automations_get
  # Get all email delivery receipt automations
  # Get all email delivery receipt automations
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page Page number
  # @option opts [Integer] :limit Number of records per page
  # @return [String]
  describe 'email_delivery_receipt_automations_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
