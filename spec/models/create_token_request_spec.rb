#Merchant API 
#ZipMoney Merchant API Initial build
#zipMoney Merchant API version: 2017-03-01


require 'spec_helper'
require 'json'
require 'date'

# Unit tests for ZipMoney::CreateTokenRequest

# Please update as you see appropriate
describe 'CreateTokenRequest' do
  before do
    # run before each test
    @instance = ZipMoney::CreateTokenRequest.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of CreateTokenRequest' do
    it 'should create an instact of CreateTokenRequest' do
      expect(@instance).to be_instance_of(ZipMoney::CreateTokenRequest)
    end
  end
  describe 'test attribute "authority"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end

