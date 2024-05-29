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

# Unit tests for Phyllo::WebhookApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'WebhookApi' do
  before do
    # run before each test
    @api_instance = Phyllo::WebhookApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of WebhookApi' do
    it 'should create an instance of WebhookApi' do
      expect(@api_instance).to be_instance_of(Phyllo::WebhookApi)
    end
  end

  # unit tests for v1_webhook_delete_webhooks_by_id
  # Delete a webhook
  # Delete a webhook information
  # @param id Unique identifier for the webhook.
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'v1_webhook_delete_webhooks_by_id test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for v1_webhook_get_webhooks
  # Retrieve all webhooks
  # Lists all Webhooks.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :limit The number of objects to be returned. It can be between 1 to 100. The default value is 10.
  # @option opts [Integer] :offset The number of objects to skip. Use this argument for pagination. The default value is 0.
  # @return [WebhookResponseList1]
  describe 'v1_webhook_get_webhooks test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for v1_webhook_get_webhooks_by_id
  # Retrieve a webhook
  # Retrieve the information of the Webhook with the supplied Webhook id.
  # @param id Unique identifier for the webhook.
  # @param [Hash] opts the optional parameters
  # @return [WebhookResponse1]
  describe 'v1_webhook_get_webhooks_by_id test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for v1_webhook_post_webhooks
  # Create a webhook
  # Create a Webhook.
  # @param [Hash] opts the optional parameters
  # @option opts [CreateWebhookRequest1] :create_webhook_request1 
  # @return [WebhookResponse1]
  describe 'v1_webhook_post_webhooks test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for v1_webhook_post_webhooks_send
  # Send a mock webhook notification
  # Sends a webhook notification on the registered webhook URL.
  # @param [Hash] opts the optional parameters
  # @option opts [SendWebhookPayload1] :send_webhook_payload1 
  # @return [WebhookPayload1]
  describe 'v1_webhook_post_webhooks_send test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for v1_webhook_put_webhooks_by_id
  # Update a webhook
  # Update a webhook information
  # @param id Unique identifier for the webhook.
  # @param [Hash] opts the optional parameters
  # @option opts [UpdateWebhookRequest1] :update_webhook_request1 Updated webhook object.
  # @return [WebhookResponse1]
  describe 'v1_webhook_put_webhooks_by_id test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
