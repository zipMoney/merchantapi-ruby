# ZipMoney::CheckoutOrder

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**reference** | **String** | The order id in the eCommerce system | [optional] 
**amount** | **Float** | The total amount of the order | 
**currency** | **String** | The ISO-4217 currency code. See https://en.wikipedia.org/wiki/ISO_4217 | 
**shipping** | [**OrderShipping**](OrderShipping.md) |  | 
**items** | [**Array&lt;OrderItem&gt;**](OrderItem.md) | The order item breakdown | [optional] 
**cart_reference** | **String** | The shopping cart reference id | [optional] 


