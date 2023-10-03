@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Data Model for Online Shop'
define root view entity ZR_ONLINE_SHOP_G22 as select from zonlineshop_g22 
association [1..1] to zshop_as_g22 as _Shop on
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
