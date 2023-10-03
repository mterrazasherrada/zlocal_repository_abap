@EndUserText.label: 'shop projection'
@AccessControl.authorizationCheck: #CHECK 
@Metadata.allowExtensions: true

define root view entity ZC_ONLINE_SHOP_STUDENTH30 
as projection on ZI_ONLINE_SHOP_studenth30 {
    key Order_Uuid,
    Order_Id,
    Ordereditem,
    Deliverydate,
    Creationdate,
    PackageId,
    CostCenter,
    /* Associations */
    _Shop.purchasereqn as Purchasereqn
}
