#Merchant API 
#ZipMoney Merchant API Initial build
#zipMoney Merchant API version: 2017-03-01


require 'spec_helper'
require 'json'

# Unit tests for ZipMoney::CustomersApi

# Please update as you see appropriate
describe 'CustomersApi' do
  before do
    # run before each test
    @instance = ZipMoney::CustomersApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of CustomersApi' do
    it 'should create an instact of CustomersApi' do
      expect(@instance).to be_instance_of(ZipMoney::CustomersApi)
    end
  end

  # unit tests for customers_get
  # Retrieve customer
  # Retrieves the details of a customer by id. This will only return customer details for customers who have transacted previously via the zip Merchant API.
  # @param id 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'customers_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for customers_list
  # List customers
  # Returns a list of all customers who have transacted previously with your merchant account.
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'customers_list test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
