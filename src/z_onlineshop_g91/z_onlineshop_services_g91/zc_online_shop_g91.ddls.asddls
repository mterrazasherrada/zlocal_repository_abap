@EndUserText.label: 'shop projection'
@AccessControl.authorizationCheck: #CHECK
@Metadata.allowExtensions: true
define root view entity zc_online_shop_g91 as projection on zi_online_shop_g91
 {
    key Order_Uuid,
    Order_Id,
    OrderedItem,
    Deliverydate,
    Creationdate,
    PackageId,
    CostCenter,
    _Shop.purschasereqn as Purchasereqn   
}
