#Merchant API 
#ZipMoney Merchant API Initial build
#zipMoney Merchant API version: 2017-03-01


require 'spec_helper'
require 'json'
require 'date'

# Unit tests for ZipMoney::InlineResponse200

# Please update as you see appropriate
describe 'InlineResponse200' do
  before do
    # run before each test
    @instance = ZipMoney::InlineResponse200.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of InlineResponse200' do
    it 'should create an instact of InlineResponse200' do
      expect(@instance).to be_instance_of(ZipMoney::InlineResponse200)
    end
  end
  describe 'test attribute "items"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end

