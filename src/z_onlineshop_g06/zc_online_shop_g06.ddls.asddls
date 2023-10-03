@EndUserText.label: 'UI Provider for online shop'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Metadata.allowExtensions: true

define root view entity ZC_ONLINE_SHOP_G06
  provider contract transactional_query
  as projection on ZR_ONLINE_SHOP_G06

{
  key OrderUuid,
      OrderId,
      Deliverydate,
      Creationdate,
      Pkgid,
      CostCenter,
      _Shop.purchasereqn as Purchasereqn
}
