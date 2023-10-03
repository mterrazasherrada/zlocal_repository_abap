@EndUserText.label: 'shop projection'
@AccessControl.authorizationCheck: #CHECK
@MetaData.allowExtensions: true
define root view entity ZC_ONLINE_SHOP_100
    as projection on ZI_ONLINE_SHOP_100
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
