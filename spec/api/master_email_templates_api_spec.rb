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

# Unit tests for ClickSendClient::MasterEmailTemplatesApi
# Automatically generated by clicksend-codegen (github.com/clicksend-api/clicksend-codegen)
# Please update as you see appropriate
describe 'MasterEmailTemplatesApi' do
  before do
    # run before each test
    @instance = ClickSendClient::MasterEmailTemplatesApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of MasterEmailTemplatesApi' do
    it 'should create an instance of MasterEmailTemplatesApi' do
      expect(@instance).to be_instance_of(ClickSendClient::MasterEmailTemplatesApi)
    end
  end

  # unit tests for master_email_template_categories_get
  # Get all master email template categories
  # Get all master email template categories
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page Page number
  # @option opts [Integer] :limit Number of records per page
  # @return [String]
  describe 'master_email_template_categories_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for master_email_template_category_get
  # Get specific master email template category
  # Get specific master email template category
  # @param category_id Email category id
  # @param [Hash] opts the optional parameters
  # @return [String]
  describe 'master_email_template_category_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for master_email_template_get
  # Get specific master email template
  # Get specific master email template
  # @param template_id Email template id
  # @param [Hash] opts the optional parameters
  # @return [String]
  describe 'master_email_template_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for master_email_templates_get
  # Get all master email templates
  # Get all master email templates
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page Page number
  # @option opts [Integer] :limit Number of records per page
  # @return [String]
  describe 'master_email_templates_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for master_email_templates_in_category_get
  # Get all master email templates in a category
  # Get all master email templates in a category
  # @param category_id Email category id
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page Page number
  # @option opts [Integer] :limit Number of records per page
  # @return [String]
  describe 'master_email_templates_in_category_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
