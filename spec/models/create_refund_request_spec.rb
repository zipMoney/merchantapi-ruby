#Merchant API 
#ZipMoney Merchant API Initial build
#zipMoney Merchant API version: 2017-03-01


require 'spec_helper'
require 'json'
require 'date'

# Unit tests for ZipMoney::CreateRefundRequest

# Please update as you see appropriate
describe 'CreateRefundRequest' do
  before do
    # run before each test
    @instance = ZipMoney::CreateRefundRequest.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of CreateRefundRequest' do
    it 'should create an instact of CreateRefundRequest' do
      expect(@instance).to be_instance_of(ZipMoney::CreateRefundRequest)
    end
  end
  describe 'test attribute "charge_id"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "reason"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "amount"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "metadata"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end

