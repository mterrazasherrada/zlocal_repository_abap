@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Shop Projection'
@Metadata.allowExtensions: true
define root view entity ZC_ONLINE_SHOP_G64
    as projection on ZI_ONLINE_SHOP_G64 
    {
    key Order_Uuid,
    Order_Id,
    Ordereditem,
    Deliverydate,
    Creationdate,
    PackageId,
    CostCenter,
    _Shop.purchasereqn as Purchasereqn
}
