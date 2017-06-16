# ZipMoney::TokensApi

All URIs are relative to *https://api.sandbox.zipmoney.com.au/merchant/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**tokens_create**](TokensApi.md#tokens_create) | **POST** /tokens | Create token


# **tokens_create**
> Token tokens_create(opts)

Create token

Tokenises a zip account allowing a charge to be performed at a later date without direct customer involvement.  In order to create a token you will first need to request customer approval by implementing one of the online checkout flows. The checkout id will then be provided as the authority when tokenising.  | Error code | Description | |------------------------------------|--------------------------------------------------------------------------------------------------| | account_inoperative | The account is in arrears or closed and cannot be charged | | account_locked | The account is locked |

### Example
```ruby
# load the gem
require 'zip_money'
# setup authorization
ZipMoney.configure do |config|
  # Configure API key authorization: Authorization
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = ZipMoney::TokensApi.new

opts = { 
  body: ZipMoney::CreateTokenRequest.new, # CreateTokenRequest | 
  idempotency_key: "idempotency_key_example" # String | The unique idempotency key.
}

begin
  #Create token
  result = api_instance.tokens_create(opts)
  p result
rescue ZipMoney::ApiError => e
  puts "Exception when calling TokensApi->tokens_create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**CreateTokenRequest**](CreateTokenRequest.md)|  | [optional] 
 **idempotency_key** | **String**| The unique idempotency key. | [optional] 

### Return type

[**Token**](Token.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/javascript



