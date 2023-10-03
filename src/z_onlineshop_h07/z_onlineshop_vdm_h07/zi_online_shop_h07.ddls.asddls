//@AbapCatalog.sqlViewName: ''
//@AbapCatalog.compiler.compareFilter: true
//@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Data model for online shop'
define root view entity ZI_ONLINE_SHOP_H07
  as select from zonlineshop_h07
  association [1..1] to zshop_as_h07 as _Shop on 
  $projection.Order_Uuid = _Shop.order_uuid
{

  key order_uuid   as Order_Uuid,
      order_id     as Order_Id,
      ordereditem  as Ordereditem,
      deliverydate as Deliverydate,
      creationdate as Creationdate,
      pkgid        as PackageId,
      _Shop.costcenter as CostCenter,

      /*Associations*/
      _Shop
}
