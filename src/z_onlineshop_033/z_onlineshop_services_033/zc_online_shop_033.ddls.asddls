@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Projection view for online shop'
@Metadata.allowExtensions: true
define root view entity ZC_ONLINE_SHOP_033 as projection on ZI_ONLINE_SHOP_033
{
    key Order_Uuid,
    Order_Id,
    Ordereditem,
    Deliverydate,
    Creationdate,
    PackageId,
    CostCenter,
    /* Associations */
    _Shop.purchasereqn as Purchasereqn // Make association public
}
