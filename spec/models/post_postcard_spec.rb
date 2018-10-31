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
require 'date'

# Unit tests for SwaggerClient::PostPostcard
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'PostPostcard' do
  before do
    # run before each test
    @instance = SwaggerClient::PostPostcard.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of PostPostcard' do
    it 'should create an instance of PostPostcard' do
      expect(@instance).to be_instance_of(SwaggerClient::PostPostcard)
    end
  end
  describe 'test attribute "file_urls"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "recipients"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
