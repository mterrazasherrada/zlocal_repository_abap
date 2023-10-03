@EndUserText.label: 'Data Model for Online Shop H18'
@AccessControl.authorizationCheck: #CHECK
define root view entity ZI_ONLINESHOP_H18 
as select from zonlineshop_h18 
association [1..1] to zshop_as_h18 as _Shop on 
    $projection.Order_Uuid = _Shop.order_uuid
{
 key order_uuid as Order_Uuid,
        order_id as Order_Id,
        ordered_item as Ordereditem,
        deliverydate as Deliverydate,
        creationdate as Creationdate,
        pkgid as PackageId,
        _Shop.costcenter as CostCenter,
        /*Associations*/
        _Shop
}
