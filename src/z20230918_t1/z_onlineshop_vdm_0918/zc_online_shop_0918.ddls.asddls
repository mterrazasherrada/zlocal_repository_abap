@EndUserText.label: 'shop projection'
@AccessControl.authorizationCheck: #CHECK
@Metadata.allowExtensions: true
define root view entity ZC_ONLINE_SHOP_0918
  as projection on ZI_ONLINE_SHOP_0918
{
  key Order_Uuid,
      Order_Id,
      Deliverydate,
      Creationdate,
      PackageId,
      CostCenter,
      _Shop.purchasereqn as Purchasereqn
}
