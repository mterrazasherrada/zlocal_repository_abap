@EndUserText.label: 'Data model for online shop'
@AccessControl.authorizationCheck: #CHECK
define root view entity ZI_ONLINE_SHOP_G102
 as select from zonlineshop_g102
 association [1..1] to zshop_as_g102 as _Shop on
 $projection.Order_Uuid = _Shop.order_uuid
{
 key order_uuid as Order_Uuid,
 order_id as Order_Id,
 ordereditem as Ordereditem,
 deliverydate as Deliverydate,
 creationdate as Creationdate,
 pkgid as PackageId,
 _Shop.costcenter as CostCenter,
 /*Associations*/
 _Shop
}
