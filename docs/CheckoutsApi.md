# ZipMoney::CheckoutsApi

All URIs are relative to *https://api.sandbox.zipmoney.com.au/merchant/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**checkouts_create**](CheckoutsApi.md#checkouts_create) | **POST** /checkouts | Create a checkout
[**checkouts_get**](CheckoutsApi.md#checkouts_get) | **GET** /checkouts/{id} | Retrieve a checkout


# **checkouts_create**
> Checkout checkouts_create(opts)

Create a checkout

Creates a zipMoney checkout.  During the checkout process a customer can apply for credit decisioning in real-time. This means the checkout needs to represent a good picture of known customer details along with order information and the checkout entity represents this as a resource.  For more information on how to checkout with zipMoney see the #model:Z2QcrzRGHACY8wM6G guide.

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

api_instance = ZipMoney::CheckoutsApi.new

opts = { 
  body: ZipMoney::CreateCheckoutRequest.new # CreateCheckoutRequest | 
}

begin
  #Create a checkout
  result = api_instance.checkouts_create(opts)
  p result
rescue ZipMoney::ApiError => e
  puts "Exception when calling CheckoutsApi->checkouts_create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**CreateCheckoutRequest**](CreateCheckoutRequest.md)|  | [optional] 

### Return type

[**Checkout**](Checkout.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **checkouts_get**
> Checkout checkouts_get(id)

Retrieve a checkout

Retrieves a previously created checkout by id.

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

api_instance = ZipMoney::CheckoutsApi.new

id = "id_example" # String | 


begin
  #Retrieve a checkout
  result = api_instance.checkouts_get(id)
  p result
rescue ZipMoney::ApiError => e
  puts "Exception when calling CheckoutsApi->checkouts_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**Checkout**](Checkout.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



