# zip_money

ZipMoney - the Ruby gem for the Merchant API

ZipMoney Merchant API Initial build

- API version: 2017-03-01
- Package version: 1.0.0

## Installation

### Build a gem

To build the Ruby code into a gem:

```shell
gem build zipmoney_merchantapi.gemspec
```

Then either install the gem locally:

```shell
gem install ./zipmoney_merchantapi.gem
```
(for development, run `gem install --dev ./zipmoney_merchantapi.gem` to install the development dependencies)

or publish the gem to a gem hosting service, e.g. [RubyGems](https://rubygems.org/).

Finally add this to the Gemfile:

    gem 'zipmoney_merchantapi', '~> 1.0.0'

### Install from Git

If the Ruby gem is hosted at a git repository: https://github.com/GIT_USER_ID/GIT_REPO_ID, then add the following in the Gemfile:

    gem 'zipmoney_merchantapi', :git => 'https://github.com/zipMoney/merchantapi-ruby.git'

### Include the Ruby code directly

Include the Ruby code directly using `-I` as follows:

```shell
ruby -Ilib script.rb
```

## Getting Started

Please follow the [installation](#installation) procedure and then run the following code:
```ruby
# Load the gem
require 'zipmoney_merchantapi'

# Setup authorization
ZipMoney.configure do |config|
  # Configure API key authorization: Authorization
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = ZipMoney::ChargesApi.new

id = "id_example" # String | The id of the authorised charge

opts = { 
  idempotency_key: "idempotency_key_example" # String | The unique idempotency key.
}

begin
  #Cancel a charge
  result = api_instance.charges_cancel(id, opts)
  p result
rescue ZipMoney::ApiError => e
  puts "Exception when calling ChargesApi->charges_cancel: #{e}"
end

```

## Documentation for API Endpoints

All URIs are relative to *https://api.sandbox.zipmoney.com.au/merchant/v1*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*ZipMoney::ChargesApi* | [**charges_cancel**](docs/ChargesApi.md#charges_cancel) | **POST** /charges/{id}/cancel | Cancel a charge
*ZipMoney::ChargesApi* | [**charges_capture**](docs/ChargesApi.md#charges_capture) | **POST** /charges/{id}/capture | Capture a charge
*ZipMoney::ChargesApi* | [**charges_create**](docs/ChargesApi.md#charges_create) | **POST** /charges | Create a charge
*ZipMoney::ChargesApi* | [**charges_list**](docs/ChargesApi.md#charges_list) | **GET** /charges | List charges
*ZipMoney::ChargesApi* | [**charges_retrieve**](docs/ChargesApi.md#charges_retrieve) | **GET** /charges/{id} | Retrieve a charge
*ZipMoney::CheckoutsApi* | [**checkouts_create**](docs/CheckoutsApi.md#checkouts_create) | **POST** /checkouts | Create a checkout
*ZipMoney::CheckoutsApi* | [**checkouts_get**](docs/CheckoutsApi.md#checkouts_get) | **GET** /checkouts/{id} | Retrieve a checkout
*ZipMoney::CustomersApi* | [**customers_get**](docs/CustomersApi.md#customers_get) | **GET** /customers/{id} | Retrieve customer
*ZipMoney::CustomersApi* | [**customers_list**](docs/CustomersApi.md#customers_list) | **GET** /customers | List customers
*ZipMoney::RefundsApi* | [**refunds_create**](docs/RefundsApi.md#refunds_create) | **POST** /refunds | Create a refund
*ZipMoney::RefundsApi* | [**refunds_list**](docs/RefundsApi.md#refunds_list) | **GET** /refunds | List refunds
*ZipMoney::RefundsApi* | [**refunds_retrieve**](docs/RefundsApi.md#refunds_retrieve) | **GET** /refunds/{id} | Retrieve a refund
*ZipMoney::SettlementsApi* | [**settlements_get**](docs/SettlementsApi.md#settlements_get) | **GET** /settlements/{id} | Retrieve a settlement
*ZipMoney::SettlementsApi* | [**settlements_list**](docs/SettlementsApi.md#settlements_list) | **GET** /settlements | List settlements
*ZipMoney::TokensApi* | [**tokens_create**](docs/TokensApi.md#tokens_create) | **POST** /tokens | Create token


## Documentation for Models

 - [ZipMoney::Address](docs/Address.md)
 - [ZipMoney::Authority](docs/Authority.md)
 - [ZipMoney::CaptureChargeRequest](docs/CaptureChargeRequest.md)
 - [ZipMoney::Charge](docs/Charge.md)
 - [ZipMoney::ChargeCollection](docs/ChargeCollection.md)
 - [ZipMoney::ChargeOrder](docs/ChargeOrder.md)
 - [ZipMoney::Checkout](docs/Checkout.md)
 - [ZipMoney::CheckoutConfiguration](docs/CheckoutConfiguration.md)
 - [ZipMoney::CheckoutFeatures](docs/CheckoutFeatures.md)
 - [ZipMoney::CheckoutFeaturesTokenisation](docs/CheckoutFeaturesTokenisation.md)
 - [ZipMoney::CheckoutOrder](docs/CheckoutOrder.md)
 - [ZipMoney::CreateChargeRequest](docs/CreateChargeRequest.md)
 - [ZipMoney::CreateCheckoutRequest](docs/CreateCheckoutRequest.md)
 - [ZipMoney::CreateCheckoutRequestFeatures](docs/CreateCheckoutRequestFeatures.md)
 - [ZipMoney::CreateCheckoutRequestFeaturesTokenisation](docs/CreateCheckoutRequestFeaturesTokenisation.md)
 - [ZipMoney::CreateRefundRequest](docs/CreateRefundRequest.md)
 - [ZipMoney::CreateTokenRequest](docs/CreateTokenRequest.md)
 - [ZipMoney::Customer](docs/Customer.md)
 - [ZipMoney::ErrorResponse](docs/ErrorResponse.md)
 - [ZipMoney::ErrorResponseError](docs/ErrorResponseError.md)
 - [ZipMoney::ErrorResponseErrorDetails](docs/ErrorResponseErrorDetails.md)
 - [ZipMoney::InlineResponse200](docs/InlineResponse200.md)
 - [ZipMoney::Metadata](docs/Metadata.md)
 - [ZipMoney::OrderItem](docs/OrderItem.md)
 - [ZipMoney::OrderShipping](docs/OrderShipping.md)
 - [ZipMoney::OrderShippingTracking](docs/OrderShippingTracking.md)
 - [ZipMoney::Refund](docs/Refund.md)
 - [ZipMoney::Shopper](docs/Shopper.md)
 - [ZipMoney::ShopperStatistics](docs/ShopperStatistics.md)
 - [ZipMoney::Token](docs/Token.md)


## Documentation for Authorization


### Authorization

- **Type**: API key
- **API key parameter name**: Authorization
- **Location**: HTTP header

