@EndUserText.label: 'Data model for online shop'
@AccessControl.authorizationCheck: #CHECK
define root view entity zi_online_shop_g70 as select from zonlineshop_g70

association [1..1] to zshop_as_g70 as _Shop on _Shop.order_uuid = $projection.Order_Uuid
{
    key order_uuid       as Order_Uuid,
        order_id         as Order_Id,   
        ordereditem      as Ordereditem,  
        deliverydate     as Deliverydate,
        creationdate     as Creationdate, 
        pkgid            as PackageId,
        _Shop.costcenter as CostCenter,
 
        /*Associations*/
        _Shop
              
}
