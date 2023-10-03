@EndUserText.label: 'Vista de proyección para tienda online'
@AccessControl.authorizationCheck: #CHECK
@Metadata.allowExtensions: true
define root view entity ZC_ONLINE_SHOP_h39
  as projection on ZI_ONLINE_SHOP_H39
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
