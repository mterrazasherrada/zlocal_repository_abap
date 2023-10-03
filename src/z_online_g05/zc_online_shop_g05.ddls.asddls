@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Shop Projection'
@Metadata.allowExtensions: true
define root view entity ZC_ONLINE_SHOP_G05 
provider contract transactional_query
as projection on ZR_ONLINE_SHOP_G05
{
   key Order_Uuid,
    Order_Id,
    Deliverydate,
    Creationdate,
    PackageId,
    CostCenter,  
    _Shop.purchasereqn as purchasereqn      
}
