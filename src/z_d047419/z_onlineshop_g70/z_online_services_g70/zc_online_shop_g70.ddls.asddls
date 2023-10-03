@EndUserText.label: 'Projection view for onlie shop'
@AccessControl.authorizationCheck: #CHECK
@Metadata.allowExtensions: true
define root view entity zc_online_shop_g70 as projection on zi_online_shop_g70 {
    key Order_Uuid,
    Order_Id,
    Ordereditem,
    Deliverydate,
    Creationdate,
    PackageId,
    CostCenter,
    _Shop.purchasereqn as Purchasereqn
}
