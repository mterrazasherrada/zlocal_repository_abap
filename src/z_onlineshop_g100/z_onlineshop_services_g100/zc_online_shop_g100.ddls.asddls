@EndUserText.label: 'Shop Projection'
@AccessControl.authorizationCheck: #CHECK
@Metadata.allowExtensions: true
define root view entity ZC_ONLINE_SHOP_G100
as projection on ZI_ONLINE_SHOP_G100
{
key Order_Uuid,
Order_Id,
Ordereditem,
Deliverydate,
Creationdate,
PackageId,
CostCenter,
_Shop.purchasereqn as Purchasereqn
}
