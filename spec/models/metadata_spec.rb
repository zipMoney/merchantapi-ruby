#Merchant API 
#ZipMoney Merchant API Initial build
#zipMoney Merchant API version: 2017-03-01


require 'spec_helper'
require 'json'
require 'date'

# Unit tests for ZipMoney::Metadata

# Please update as you see appropriate
describe 'Metadata' do
  before do
    # run before each test
    @instance = ZipMoney::Metadata.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of Metadata' do
    it 'should create an instact of Metadata' do
      expect(@instance).to be_instance_of(ZipMoney::Metadata)
    end
  end
end

