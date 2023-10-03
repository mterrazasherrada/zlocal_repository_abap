@EndUserText.label: 'Projection view for Online shop H18'
@AccessControl.authorizationCheck: #CHECK
@Metadata.allowExtensions: true
define root view entity ZC_ONLINE_SHOP_H18 
as projection on ZI_ONLINESHOP_H18
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
