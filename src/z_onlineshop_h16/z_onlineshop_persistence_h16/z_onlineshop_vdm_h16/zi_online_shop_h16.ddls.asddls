@EndUserText.label: 'Data model for online shop'
@AccessControl.authorizationCheck: #CHECK
define root view entity ZI_ONLINE_SHOP_H16 
as select from zonlineshop_h16 association [1..1] 
to zshop_as_h16 as _shop 
on $projection.Order_Uuid = _shop.order_uuid 
{
    key order_uuid as Order_Uuid,
  order_id       as Order_Id,
  ordereditem    as Ordereditem,
  deliverydate  as Deliverydate,
  creationdate   as Creationdate,
  pkgid          as PackageId,
  _shop.costcenter as CostCenter,
  /*Associations*/
  _shop
}
