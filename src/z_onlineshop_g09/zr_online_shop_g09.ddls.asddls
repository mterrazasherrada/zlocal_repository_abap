@AbapCatalog.sqlViewName: 'ZS_ONLINE_G09'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Data model for online shop'
define root view ZR_ONLINE_SHOP_G09 
as select from zonlineshop_g09 
association [1..1] to zshop_as_g09 as _Shop on
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
