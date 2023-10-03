@EndUserText.label: 'Data model for online shop'
@AccessControl.authorizationCheck: #NOT_REQUIRED
define root view entity ZR_ONLINE_SHOP_G13
 as select from zonlineshop_g13
 association [1..1] to zshop_as_g13 as _Shop on
 $projection.Order_Uuid = _Shop.order_uuid
{
 key order_uuid as Order_Uuid,
 order_id as Order_Id,
 deliverydate as Deliverydate,
 creationdate as Creationdate,
 pkgid as PackageId,
 _Shop.costcenter as CostCenter,
 /*Associations*/
 _Shop
}
