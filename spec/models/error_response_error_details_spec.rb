#Merchant API 
#ZipMoney Merchant API Initial build
#zipMoney Merchant API version: 2017-03-01


require 'spec_helper'
require 'json'
require 'date'

# Unit tests for ZipMoney::ErrorResponseErrorDetails

# Please update as you see appropriate
describe 'ErrorResponseErrorDetails' do
  before do
    # run before each test
    @instance = ZipMoney::ErrorResponseErrorDetails.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ErrorResponseErrorDetails' do
    it 'should create an instact of ErrorResponseErrorDetails' do
      expect(@instance).to be_instance_of(ZipMoney::ErrorResponseErrorDetails)
    end
  end
  describe 'test attribute "name"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "message"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end

