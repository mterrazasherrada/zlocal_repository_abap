@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Data model for online shop'
define root view entity ZI_ONLINE_SHOP_047
  as select from zonlineshop_047 as a
  association [1..1] to zshop_as_047 as _Shop on a.order_uuid = _Shop.order_uuid
{
  key order_uuid   as Order_Uuid,
      order_id     as Order_Id,
      ordereditem  as Ordereditem,
      deliverydate as Deliverydate,
      creationdate as Creationdate,
      pkgid        as PackageId,
      _Shop.costcenter as CostCenter,
      /*Association*/
      _Shop

}
