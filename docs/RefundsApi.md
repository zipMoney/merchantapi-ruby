# ZipMoney::RefundsApi

All URIs are relative to *https://api.sandbox.zipmoney.com.au/merchant/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**refunds_create**](RefundsApi.md#refunds_create) | **POST** /refunds | Create a refund
[**refunds_list**](RefundsApi.md#refunds_list) | **GET** /refunds | List refunds
[**refunds_retrieve**](RefundsApi.md#refunds_retrieve) | **GET** /refunds/{id} | Retrieve a refund


# **refunds_create**
> Refund refunds_create(opts)

Create a refund

Creates a refund for a previously authorised or captured charge. See #model:xWJer4QQyRumRi9LD for more information.  This endpoint will return 201 or otherwise 402 if unable to perform the refund.   | Error code | Description | |------------------------------------|--------------------------------------------------------------------------------------------------| | amount_invalid | The refund amount is greater than the remaining captured total | | invalid_state | 1. The charge is already fully refunded |

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

api_instance = ZipMoney::RefundsApi.new

opts = { 
  body: ZipMoney::CreateRefundRequest.new, # CreateRefundRequest | 
  idempotency_key: "idempotency_key_example" # String | The unique idempotency key.
}

begin
  #Create a refund
  result = api_instance.refunds_create(opts)
  p result
rescue ZipMoney::ApiError => e
  puts "Exception when calling RefundsApi->refunds_create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**CreateRefundRequest**](CreateRefundRequest.md)|  | [optional] 
 **idempotency_key** | **String**| The unique idempotency key. | [optional] 

### Return type

[**Refund**](Refund.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/javascript



# **refunds_list**
> Array&lt;InlineResponse200&gt; refunds_list(opts)

List refunds

List all refunds

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

api_instance = ZipMoney::RefundsApi.new

opts = { 
  charge_id: "charge_id_example", # String | 
  skip: 0, # Integer | Number of items to skip when paging
  limit: 100 # Integer | Number of items to retrieve when paging
}

begin
  #List refunds
  result = api_instance.refunds_list(opts)
  p result
rescue ZipMoney::ApiError => e
  puts "Exception when calling RefundsApi->refunds_list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **charge_id** | **String**|  | [optional] 
 **skip** | **Integer**| Number of items to skip when paging | [optional] [default to 0]
 **limit** | **Integer**| Number of items to retrieve when paging | [optional] [default to 100]

### Return type

[**Array&lt;InlineResponse200&gt;**](InlineResponse200.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/javascript
 - **Accept**: application/javascript



# **refunds_retrieve**
> Refund refunds_retrieve(id)

Retrieve a refund

Retrieves details of a specific refund

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

api_instance = ZipMoney::RefundsApi.new

id = "id_example" # String | The id of the refund


begin
  #Retrieve a refund
  result = api_instance.refunds_retrieve(id)
  p result
rescue ZipMoney::ApiError => e
  puts "Exception when calling RefundsApi->refunds_retrieve: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the refund | 

### Return type

[**Refund**](Refund.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/javascript
 - **Accept**: application/javascript



