@EndUserText.label: 'shop projection'
@AccessControl.authorizationCheck: #CHECK
@Metadata.allowExtensions: true
define root view entity ZC_ONLINE_SHOP_h17
  provider contract transactional_query
  as projection on ZI_ONLINE_SHOP_h17
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
