# ZipMoney::CustomersApi

All URIs are relative to *https://api.sandbox.zipmoney.com.au/merchant/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**customers_get**](CustomersApi.md#customers_get) | **GET** /customers/{id} | Retrieve customer
[**customers_list**](CustomersApi.md#customers_list) | **GET** /customers | List customers


# **customers_get**
> customers_get(id)

Retrieve customer

Retrieves the details of a customer by id. This will only return customer details for customers who have transacted previously via the zip Merchant API.

### Example
```ruby
# load the gem
require 'zip_money'

api_instance = ZipMoney::CustomersApi.new

id = "id_example" # String | 


begin
  #Retrieve customer
  api_instance.customers_get(id)
rescue ZipMoney::ApiError => e
  puts "Exception when calling CustomersApi->customers_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/javascript
 - **Accept**: application/javascript



# **customers_list**
> customers_list

List customers

Returns a list of all customers who have transacted previously with your merchant account.

### Example
```ruby
# load the gem
require 'zip_money'

api_instance = ZipMoney::CustomersApi.new

begin
  #List customers
  api_instance.customers_list
rescue ZipMoney::ApiError => e
  puts "Exception when calling CustomersApi->customers_list: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/javascript
 - **Accept**: application/javascript



