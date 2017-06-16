# ZipMoney::Checkout

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | The checkout id | 
**uri** | **String** | The uri to redirect the user to in order to approve this checkout. | 
**type** | **String** | The type of checkout | [optional] [default to &quot;standard&quot;]
**shopper** | [**Shopper**](Shopper.md) |  | [optional] 
**order** | [**CheckoutOrder**](CheckoutOrder.md) |  | [optional] 
**features** | [**CheckoutFeatures**](CheckoutFeatures.md) |  | [optional] 
**config** | [**CheckoutConfiguration**](CheckoutConfiguration.md) |  | [optional] 
**created** | **DateTime** | Date the checkout was created | 
**state** | **String** | Current state of the checkout | 
**customer_id** | **String** | The id of the customer who has approved this checkout request. Only present if approved. | [optional] 
**metadata** | [**Metadata**](Metadata.md) |  | [optional] 


