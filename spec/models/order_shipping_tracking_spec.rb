#Merchant API 
#ZipMoney Merchant API Initial build
#zipMoney Merchant API version: 2017-03-01


require 'spec_helper'
require 'json'
require 'date'

# Unit tests for ZipMoney::OrderShippingTracking

# Please update as you see appropriate
describe 'OrderShippingTracking' do
  before do
    # run before each test
    @instance = ZipMoney::OrderShippingTracking.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of OrderShippingTracking' do
    it 'should create an instact of OrderShippingTracking' do
      expect(@instance).to be_instance_of(ZipMoney::OrderShippingTracking)
    end
  end
  describe 'test attribute "uri"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "number"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "carrier"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end

