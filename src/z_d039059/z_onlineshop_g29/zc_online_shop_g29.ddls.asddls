@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Shop Projection'
@Metadata.allowExtensions: true
define root view entity ZC_ONLINE_SHOP_G29
provider contract transactional_query
as projection on ZR_ONLINE_SHOP_G29 
 {
    key Order_Uuid,
    Order_Id,
    DeliveryDate,
    CreationDate,
    PackageId,
    CostCenter,
    _Shop.purchasereqn as Purchasereqn
}
