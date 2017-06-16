#Merchant API 
#ZipMoney Merchant API Initial build
#zipMoney Merchant API version: 2017-03-01


# Common files
require 'zip_money/api_client'
require 'zip_money/api_error'
require 'zip_money/version'
require 'zip_money/configuration'

# Models
require 'zip_money/models/address'
require 'zip_money/models/authority'
require 'zip_money/models/capture_charge_request'
require 'zip_money/models/charge'
require 'zip_money/models/charge_collection'
require 'zip_money/models/charge_order'
require 'zip_money/models/checkout'
require 'zip_money/models/checkout_configuration'
require 'zip_money/models/checkout_features'
require 'zip_money/models/checkout_features_tokenisation'
require 'zip_money/models/checkout_order'
require 'zip_money/models/create_charge_request'
require 'zip_money/models/create_checkout_request'
require 'zip_money/models/create_checkout_request_features'
require 'zip_money/models/create_checkout_request_features_tokenisation'
require 'zip_money/models/create_refund_request'
require 'zip_money/models/create_token_request'
require 'zip_money/models/customer'
require 'zip_money/models/error_response'
require 'zip_money/models/error_response_error'
require 'zip_money/models/error_response_error_details'
require 'zip_money/models/inline_response_200'
require 'zip_money/models/metadata'
require 'zip_money/models/order_item'
require 'zip_money/models/order_shipping'
require 'zip_money/models/order_shipping_tracking'
require 'zip_money/models/refund'
require 'zip_money/models/shopper'
require 'zip_money/models/shopper_statistics'
require 'zip_money/models/token'

# APIs
require 'zip_money/api/charges_api'
require 'zip_money/api/checkouts_api'
require 'zip_money/api/customers_api'
require 'zip_money/api/refunds_api'
require 'zip_money/api/settlements_api'
require 'zip_money/api/tokens_api'

module ZipMoney
  class << self
    # Customize default settings for the SDK using block.
    #   ZipMoney.configure do |config|
    #     config.username = "xxx"
    #     config.password = "xxx"
    #   end
    # If no block given, return the default Configuration object.
    def configure
      if block_given?
        yield(Configuration.default)
      else
        Configuration.default
      end
    end
  end
end
