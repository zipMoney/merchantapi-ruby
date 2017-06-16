# ZipMoney::ChargesApi

All URIs are relative to *https://api.sandbox.zipmoney.com.au/merchant/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**charges_cancel**](ChargesApi.md#charges_cancel) | **POST** /charges/{id}/cancel | Cancel a charge
[**charges_capture**](ChargesApi.md#charges_capture) | **POST** /charges/{id}/capture | Capture a charge
[**charges_create**](ChargesApi.md#charges_create) | **POST** /charges | Create a charge
[**charges_list**](ChargesApi.md#charges_list) | **GET** /charges | List charges
[**charges_retrieve**](ChargesApi.md#charges_retrieve) | **GET** /charges/{id} | Retrieve a charge


# **charges_cancel**
> Charge charges_cancel(id, opts)

Cancel a charge

Cancels an authorised charge.  | Error code | Description | |------------------------------------|--------------------------------------------------------------------------------------------------| | invalid_state | The charge is not in authorised state |

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

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the authorised charge | 
 **idempotency_key** | **String**| The unique idempotency key. | [optional] 

### Return type

[**Charge**](Charge.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/javascript



# **charges_capture**
> Charge charges_capture(id, opts)

Capture a charge

| Error code | Description | |------------------------------------|--------------------------------------------------------------------------------------------------| | amount_invalid | Capture amount greater than authorised amount | | invalid_state | The charge is not in authorised state |

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

api_instance = ZipMoney::ChargesApi.new

id = "id_example" # String | The id of the authorised charge

opts = { 
  body: ZipMoney::CaptureChargeRequest.new, # CaptureChargeRequest | 
  idempotency_key: "idempotency_key_example" # String | The unique idempotency key.
}

begin
  #Capture a charge
  result = api_instance.charges_capture(id, opts)
  p result
rescue ZipMoney::ApiError => e
  puts "Exception when calling ChargesApi->charges_capture: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the authorised charge | 
 **body** | [**CaptureChargeRequest**](CaptureChargeRequest.md)|  | [optional] 
 **idempotency_key** | **String**| The unique idempotency key. | [optional] 

### Return type

[**Charge**](Charge.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/javascript



# **charges_create**
> Charge charges_create(opts)

Create a charge

Creates a #model:ehEN48PET29iNdex3 which represents a charge against a customer's account.  To execute this endpoint you must first obtain customer approval by implementing the #docTextSection:43C79g2JjeGs8AHWi as a part of your online store.  This endpoint will return 201 if successful otherwise 402 with a specific error response.  ## Capture or authorisation  A charge can be created as either an authorisation or an immediate capture. This can be controlled in the initial request to the charge.  In most cases you will want to immediately capture the payment, this will mark the debit for settlement into your account the very same day and will immediately deduct the funds from the customer's account.  In some cases you may wish to delay the settlement of funds until a later date, perhaps until the goods are shipped to the customer. In this scenario you should send { capture: false } in the request to the #endpoint:dtmp3HxaHKjewvvGW endpoint and the charge will be created in an authorised state.  An authorised charge will place a hold for the specified amount on the customer's account in the form of a pending debit. Once authorised you are guaranteed the funds are available and awaiting a capture request to the #endpoint:wReod3JtbzNutMSXj endpoint, at which point the charge will move to the captured state and the funds will be settled into your account. It is at this point the customer's interest free period will start if applicable for the selected account.  ## Specific error responses  If a charge was not able to be performed a \"402 - Request Failed\" status code will be returned as detailed in #docTextSection:fJYHM2ZKtEui8RrAM. The error object can contain more specific error reason codes, which are detailed below.  | Error code | Description | |------------------------------------|--------------------------------------------------------------------------------------------------| | account_insufficient_funds | Customer does not have sufficient funds to perform the charge | | account_inoperative | The account is in arrears or closed and cannot be charged | | account_locked | The account is locked | | amount_invalid | The amount provided does not match the approved checkout amount | | fraud_check | Fraud checks resulted in payment failure |

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

api_instance = ZipMoney::ChargesApi.new

opts = { 
  body: ZipMoney::CreateChargeRequest.new, # CreateChargeRequest | 
  idempotency_key: "idempotency_key_example" # String | The unique idempotency key.
}

begin
  #Create a charge
  result = api_instance.charges_create(opts)
  p result
rescue ZipMoney::ApiError => e
  puts "Exception when calling ChargesApi->charges_create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**CreateChargeRequest**](CreateChargeRequest.md)|  | [optional] 
 **idempotency_key** | **String**| The unique idempotency key. | [optional] 

### Return type

[**Charge**](Charge.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **charges_list**
> ChargeCollection charges_list(opts)

List charges

Lists all charges matching search criteria.

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

api_instance = ZipMoney::ChargesApi.new

opts = { 
  state: "state_example", # String | The state filter
  skip: 0, # Integer | Number of items to skip when paging
  limit: 100, # Integer | Number of items to retrieve when paging
  expand: "expand_example" # String | Allows expanding related entities in the response. Only valid entry is 'customer'
}

begin
  #List charges
  result = api_instance.charges_list(opts)
  p result
rescue ZipMoney::ApiError => e
  puts "Exception when calling ChargesApi->charges_list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **state** | **String**| The state filter | [optional] 
 **skip** | **Integer**| Number of items to skip when paging | [optional] [default to 0]
 **limit** | **Integer**| Number of items to retrieve when paging | [optional] [default to 100]
 **expand** | **String**| Allows expanding related entities in the response. Only valid entry is &#39;customer&#39; | [optional] 

### Return type

[**ChargeCollection**](ChargeCollection.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/javascript
 - **Accept**: application/javascript



# **charges_retrieve**
> Charge charges_retrieve(id, opts)

Retrieve a charge

Retrieve details of a previously created charge.

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

api_instance = ZipMoney::ChargesApi.new

id = "id_example" # String | The id of the charge

opts = { 
  expand: "expand_example" # String | Allows expanding related entities in the response. Only valid entry is 'customer'
}

begin
  #Retrieve a charge
  result = api_instance.charges_retrieve(id, opts)
  p result
rescue ZipMoney::ApiError => e
  puts "Exception when calling ChargesApi->charges_retrieve: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the charge | 
 **expand** | **String**| Allows expanding related entities in the response. Only valid entry is &#39;customer&#39; | [optional] 

### Return type

[**Charge**](Charge.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/javascript
 - **Accept**: application/javascript



