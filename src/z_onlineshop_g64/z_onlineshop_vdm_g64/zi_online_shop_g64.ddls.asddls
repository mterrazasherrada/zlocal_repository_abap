@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Data model for online shop'
define root view entity ZI_ONLINE_SHOP_G64 
as select from zonlineshop_g64
association [1..1] to zshop_as_g64 as _Shop on
$projection.Order_Uuid = _Shop.order_uuid 
{
    
key order_uuid   as Order_Uuid,
    order_id     as Order_Id,
    ordered_item as Ordereditem,
    deliverydate as Deliverydate,
    creationdate as Creationdate,
    pkgid        as PackageId, 
    _Shop.costcenter as CostCenter,
    
    _Shop // Make association public
}