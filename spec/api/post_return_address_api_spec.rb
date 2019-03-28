=begin
#ClickSend v3 API

# This is an official SDK for [ClickSend](https://clicksend.com)  Below you will find a current list of the available methods for clicksend.  *NOTE: You will need to create a free account to use the API. You can register [here](https://dashboard.clicksend.com/#/signup/step1/)..* 

OpenAPI spec version: 3.1
Contact: support@clicksend.com
Generated by: https://github.com/clicksend-api/clicksend-codegen.git
ClickSend Codegen version: 2.4.5-SNAPSHOT

=end

require 'spec_helper'
require 'json'

# Unit tests for ClickSendClient::PostReturnAddressApi
# Automatically generated by clicksend-codegen (github.com/clicksend-api/clicksend-codegen)
# Please update as you see appropriate
describe 'PostReturnAddressApi' do
  before do
    # run before each test
    @instance = ClickSendClient::PostReturnAddressApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of PostReturnAddressApi' do
    it 'should create an instance of PostReturnAddressApi' do
      expect(@instance).to be_instance_of(ClickSendClient::PostReturnAddressApi)
    end
  end

  # unit tests for post_return_addresses_by_return_address_id_delete
  # Delete specific post return address
  # Delete specific post return address
  # @param return_address_id Return address ID
  # @param [Hash] opts the optional parameters
  # @return [String]
  describe 'post_return_addresses_by_return_address_id_delete test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for post_return_addresses_by_return_address_id_get
  # Get specific post return address
  # Get specific post return address
  # @param return_address_id Return address ID
  # @param [Hash] opts the optional parameters
  # @return [String]
  describe 'post_return_addresses_by_return_address_id_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for post_return_addresses_by_return_address_id_put
  # Update post return address
  # Update post return address
  # @param return_address_id Return address ID
  # @param return_address Address model
  # @param [Hash] opts the optional parameters
  # @return [String]
  describe 'post_return_addresses_by_return_address_id_put test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for post_return_addresses_get
  # Get list of post return addresses
  # Get list of post return addresses
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page Page number
  # @option opts [Integer] :limit Number of records per page
  # @return [String]
  describe 'post_return_addresses_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for post_return_addresses_post
  # Create post return address
  # Create post return address
  # @param return_address Address model
  # @param [Hash] opts the optional parameters
  # @return [String]
  describe 'post_return_addresses_post test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
