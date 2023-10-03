@EndUserText.label: 'shop projection'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Metadata.allowExtensions: true
define root view entity ZC_ONLINE_SHOP_g28
provider contract transactional_query
as projection on ZR_ONLINE_SHOP_G28
{
key Order_Uuid,
Order_Id,
Deliverydate,
Creationdate,
PackageId,
CostCenter,
_Shop.purchasereqn as Purchasereqn
}
