@EndUserText.label: 'Data Model for Online Shop'
@AccessControl.authorizationCheck: #NOT_REQUIRED
define root view entity ZR_ONLINE_SHOP_G29
as select from ZONLINESHOP_G29
association [1..1] to ZSHOP_as_G29 as _Shop on
$projection.Order_Uuid = _Shop.order_uuid
{

Key order_uuid as Order_Uuid,
order_id as Order_Id,
deliverydate as DeliveryDate,
creationdate as CreationDate,
pkgid as PackageId,
_Shop.costcenter as CostCenter,
 
_Shop

}
