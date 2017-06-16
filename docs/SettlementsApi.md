# ZipMoney::SettlementsApi

All URIs are relative to *https://api.sandbox.zipmoney.com.au/merchant/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**settlements_get**](SettlementsApi.md#settlements_get) | **GET** /settlements/{id} | Retrieve a settlement
[**settlements_list**](SettlementsApi.md#settlements_list) | **GET** /settlements | List settlements


# **settlements_get**
> settlements_get(id)

Retrieve a settlement

Retrieves the full transactional details of a settlement.

### Example
```ruby
# load the gem
require 'zip_money'

api_instance = ZipMoney::SettlementsApi.new

id = "id_example" # String | The settlement id


begin
  #Retrieve a settlement
  api_instance.settlements_get(id)
rescue ZipMoney::ApiError => e
  puts "Exception when calling SettlementsApi->settlements_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The settlement id | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/javascript
 - **Accept**: application/javascript



# **settlements_list**
> settlements_list

List settlements

This endpoint will allow a merchant to view the settlements which have occured. To view detailed transaction information for a specific settlement you can use the Retrieve a settlement endpoint.

### Example
```ruby
# load the gem
require 'zip_money'

api_instance = ZipMoney::SettlementsApi.new

begin
  #List settlements
  api_instance.settlements_list
rescue ZipMoney::ApiError => e
  puts "Exception when calling SettlementsApi->settlements_list: #{e}"
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



