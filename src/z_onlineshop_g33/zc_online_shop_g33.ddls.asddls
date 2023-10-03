@EndUserText.label: 'shop projection G33'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Metadata.allowExtensions: true
define root view entity ZC_ONLINE_SHOP_G33
 provider contract transactional_query
 as projection on ZR_ONLINE_SHOP_G33
{
 key Order_Uuid,
 Order_Id,
 Deliverydate,
 Creationdate,
 PackageId,
 CostCenter,
 _Shop.purchasereqn as Purchasereqn
}







//@AbapCatalog.sqlViewName: ''
//@AbapCatalog.compiler.compareFilter: true
//@AbapCatalog.preserveKey: true
//@AccessControl.authorizationCheck: #NOT_REQUIRED
//@EndUserText.label: 'UI Provider for online shop G33'
//define view ZC_ONLINE_SHOP_G33 as select from ZR_ONLINE_SHOP_G33 {
//    key Order_Uuid,
//    Order_Id,
//    Deliverydate,
//    Creationdate,
//    PackageId,
//    CostCenter,
//    /* Associations */
//    _Shop
//}
