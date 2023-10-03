@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Data model for Online Shop'
define root view entity ZR_ONLINE_SHOP_G05
   as select from zonlineshop_g05
   association [1..1] to zshop_as_g05 as _Shop on
    $projection.order_uuid = _Shop.order_uuid
{    
    key order_uuid as Order_Uuid,
    order_id as Order_Id,
    deliverydate as Deliverydate,
    creationdate as Creationdate,
    pkgid as PackageId,
    _Shop.costcenter as CostCenter,
    _Shop
    
}
