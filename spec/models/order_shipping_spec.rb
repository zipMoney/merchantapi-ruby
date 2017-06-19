#Merchant API 
#ZipMoney Merchant API Initial build
#zipMoney Merchant API version: 2017-03-01


require 'spec_helper'
require 'json'
require 'date'

# Unit tests for ZipMoney::OrderShipping

# Please update as you see appropriate
describe 'OrderShipping' do
  before do
    # run before each test
    @instance = ZipMoney::OrderShipping.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of OrderShipping' do
    it 'should create an instact of OrderShipping' do
      expect(@instance).to be_instance_of(ZipMoney::OrderShipping)
    end
  end
  describe 'test attribute "pickup"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "tracking"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "address"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end

