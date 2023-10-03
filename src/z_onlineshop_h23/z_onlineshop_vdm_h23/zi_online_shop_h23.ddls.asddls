@EndUserText.label: 'Data Model for Online Shop'
@AccessControl.authorizationCheck: #CHECK
define root view entity ZI_ONLINE_SHOP_H23
  as select from zonlineshop_h23
  association [1..1] to zshop_as_h23 as _Shop on $projection.Order_Uuid = _Shop.order_uuid
{

  key order_uuid       as Order_Uuid,
      order_id         as Order_Id,
      ordereditem      as Ordereditem,
      deliverydate     as Deliverydate,
      creationdate     as Creationdate,
      pkgid            as PackageId,
      _Shop.costcenter as CostCenter,

      /*Associations*/
      _Shop
}
