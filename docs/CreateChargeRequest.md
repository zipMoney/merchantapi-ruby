# ZipMoney::CreateChargeRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**authority** | [**Authority**](Authority.md) |  | 
**reference** | **String** | The reference for this charge (unique payment reference in your store) | [optional] 
**amount** | **Float** | The amount of the charge | 
**currency** | **String** | The currency | 
**capture** | **BOOLEAN** | If true this will be a direct capture, pass false to perform an authorisation only | [optional] [default to true]
**order** | [**ChargeOrder**](ChargeOrder.md) |  | [optional] 
**metadata** | **Object** |  | [optional] 


