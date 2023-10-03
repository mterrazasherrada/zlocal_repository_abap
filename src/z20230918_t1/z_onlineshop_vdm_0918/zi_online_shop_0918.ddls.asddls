@AbapCatalog.sqlViewName: 'ZIONLINESHOP0918'
@EndUserText.label: 'Data model for online shop'
@AccessControl.authorizationCheck: #CHECK
define root view ZI_ONLINE_SHOP_0918 as select from zonlineshop_0918
  association [1..1] to zshop_as_0918 as _Shop on 
  $projection.Order_Uuid = _Shop.order_uuid
{

  key order_uuid   as Order_Uuid,
      order_id     as Order_Id,
      deliverydate as Deliverydate,
      creationdate as Creationdate,
      pkgid        as PackageId,
      _Shop.costcenter as CostCenter,

      /*Associations*/
      _Shop
}
