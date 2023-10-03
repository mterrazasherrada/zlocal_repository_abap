@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'data model for online shop'
define root view entity zi_online_shop_g91 as select from zonlineship_g91 
    association [1..1] to zshop_as_g91 as _Shop on
    $projection.Order_Uuid = _Shop.order_uuid
    {
        key order_uuid as Order_Uuid,
        order_id as Order_Id,
        ordereditem as OrderedItem,
        deliverydate as Deliverydate,
        creationdate as Creationdate,
        pkgid as PackageId,
        _Shop.costcenter as CostCenter,
        _Shop
}
