=begin
#API References

#The **Phyllo API** is built on RESTful principles and returns JSON encoded responses and accepts JSON payloads. It is only available through HTTPS to ensure the security of the data in transfer. These APIs must be called only from your server and never from your app / frontend as this is a security concern.  The API operates in three environments: **sandbox**, **staging** and **production**.  The sandbox environment returns mock data and is used for testing the basic functionality of the system.  The staging environment is exactly like a production environment but with certain limitations. It is used for your internal testing and development purposes.  The production environment connects to real platform accounts and all data reads and writes are made to live accounts. This is what you would use to get data for your customers.

The version of the OpenAPI document: v1.0
Contact: support@getphyllo.com
Generated by: https://openapi-generator.tech
Generator version: 7.6.0

=end

require 'spec_helper'
require 'json'

# Unit tests for Phyllo::PublishApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'PublishApi' do
  before do
    # run before each test
    @api_instance = Phyllo::PublishApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of PublishApi' do
    it 'should create an instance of PublishApi' do
      expect(@api_instance).to be_instance_of(Phyllo::PublishApi)
    end
  end

  # unit tests for v1_get_social_content_publish
  # Check status of content publish
  # Check status of the content publish request by ID.   This is best used in combination with webhooks - you can directly take the publish ID from \&quot;CONTENTS.PUBLISH_SUCCESS\&quot;, \&quot;CONTENTS.PUBLISH_READY\&quot; and \&quot;CONTENTS.PUBLISH_FAILURE\&quot; webhook notifications and pass on to this API to get the updated status of publishing request.
  # @param id Unique ID of the publish request
  # @param [Hash] opts the optional parameters
  # @return [PublishContentResponse1]
  describe 'v1_get_social_content_publish test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for v1_social_content_publish
  # Publish content to a platform
  # Publish content to a platform by providing the account ID.   Check the [publishing content page](../../../API/publishing-content) for detailed info on how to use this API.   Subscribe to the \&quot;CONTENTS.PUBLISH_SUCCESS\&quot;, \&quot;CONTENTS.PUBLISH_READY\&quot; and \&quot;CONTENTS.PUBLISH_FAILURE\&quot; webhooks to receive a notification once the request is completed. With webhooks, you should use the [check status of content publish API](../reference/openapi.v1.yml/paths/~1v1~1social~1contents~1publish~1{id}/get) to check the detailed status of the publish request.
  # @param [Hash] opts the optional parameters
  # @option opts [PublishContentRequest1] :publish_content_request1 
  # @return [PublishContentResponse1]
  describe 'v1_social_content_publish test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
