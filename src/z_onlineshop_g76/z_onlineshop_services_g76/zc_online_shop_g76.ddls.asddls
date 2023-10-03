@EndUserText.label: 'Projection view for online shop'
@AccessControl.authorizationCheck: #CHECK
@Metadata.allowExtensions: true
define root view entity ZC_ONLINE_SHOP_G76 
as projection on ZI_ONLINE_SHOP_G76 {

    key Order_Uuid,
    Order_id,
    Ordereditem,
    Deliverydate,
    Creationdate,
    PackageId,
    CostCenter,
    _Shop.purchasereqn as Purchasereqn
    
}
