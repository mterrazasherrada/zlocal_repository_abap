@EndUserText.label: 'Data model for online shop'
@AccessControl.authorizationCheck: #NOT_REQUIRED

define root view entity ZR_ONLINE_SHOP_G06
  as select from zonlineshop_g06
  association [1..1] to zshop_as_g06 as _Shop on $projection.OrderUuid = _Shop.order_uuid

{
  key order_uuid       as OrderUuid,
      order_id         as OrderId,
      deliverydate     as Deliverydate,
      creationdate     as Creationdate,
      pkgid            as Pkgid,
      _Shop.costcenter as CostCenter,

      /*Associations*/
      _Shop
}
