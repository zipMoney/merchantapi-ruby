#Merchant API 
#ZipMoney Merchant API Initial build
#zipMoney Merchant API version: 2017-03-01


require 'spec_helper'
require 'json'
require 'date'

# Unit tests for ZipMoney::ChargeOrder

# Please update as you see appropriate
describe 'ChargeOrder' do
  before do
    # run before each test
    @instance = ZipMoney::ChargeOrder.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ChargeOrder' do
    it 'should create an instact of ChargeOrder' do
      expect(@instance).to be_instance_of(ZipMoney::ChargeOrder)
    end
  end
  describe 'test attribute "reference"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "shipping"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "items"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "cart_reference"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end

