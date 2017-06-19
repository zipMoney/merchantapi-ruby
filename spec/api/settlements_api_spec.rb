#Merchant API 
#ZipMoney Merchant API Initial build
#zipMoney Merchant API version: 2017-03-01


require 'spec_helper'
require 'json'

# Unit tests for ZipMoney::SettlementsApi

# Please update as you see appropriate
describe 'SettlementsApi' do
  before do
    # run before each test
    @instance = ZipMoney::SettlementsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of SettlementsApi' do
    it 'should create an instact of SettlementsApi' do
      expect(@instance).to be_instance_of(ZipMoney::SettlementsApi)
    end
  end

  # unit tests for settlements_get
  # Retrieve a settlement
  # Retrieves the full transactional details of a settlement.
  # @param id The settlement id
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'settlements_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for settlements_list
  # List settlements
  # This endpoint will allow a merchant to view the settlements which have occured. To view detailed transaction information for a specific settlement you can use the Retrieve a settlement endpoint.
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'settlements_list test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
