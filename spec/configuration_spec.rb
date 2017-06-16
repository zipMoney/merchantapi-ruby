#Merchant API 
#ZipMoney Merchant API Initial build
#zipMoney Merchant API version: 2017-03-01

require 'spec_helper'

describe ZipMoney::Configuration do
  let(:config) { ZipMoney::Configuration.default }

  before(:each) do
    # uncomment below to setup host and base_path
    #require 'URI'
    uri = URI.parse("https://api.sandbox.zipmoney.com.au/merchant/v1")

    ZipMoney.configure do |c|
      c.host = uri.host
      c.base_path = uri.path
    end
  end

  describe '#base_url' do
    it 'should have the default value' do
      # uncomment below to test default value of the base path
      expect(config.base_url).to eq("https://api.sandbox.zipmoney.com.au/merchant/v1")
    end

    # it 'should remove trailing slashes' do
    #   [nil, '', '/', '//'].each do |base_path|    
    #     config.base_path = base_path
    #     # uncomment below to test trailing slashes
    #     expect(config.base_url).to eq("https://api.sandbox.zipmoney.com.au")
    #   end
    # end
    
    it 'should set the sandbox environment' do
      config.environment = :sandbox
      # uncomment below to test trailing slashes
      expect(config.base_url).to eq("https://api.sandbox.zipmoney.com.au/merchant/v1")
    end
    
    it 'should set the production environment' do
      config.environment = :production
      # uncomment below to test trailing slashes
      expect(config.base_url).to eq("https://api.zipmoney.com.au/merchant/v1")
    end

  end

 
end
