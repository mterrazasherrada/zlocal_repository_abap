@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Data model for online shop'
define root view entity ZI_ONLINE_SHOP_G76 
    as select from zonlineshop_g76
    association[1..1] to zshop_as_g76 as _Shop on
    $projection.order_uuid = _Shop.order_uuid {
    
    key order_uuid as Order_Uuid,
        order_id as Order_id,
        ordereditem as Ordereditem,
        deliverydate as Deliverydate,
        creationdate as Creationdate,
        pkgid as PackageId,
        _Shop.costcenter as CostCenter,
        
    /*Associations*/
    _Shop
}
