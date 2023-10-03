@EndUserText.label: 'Purchase Requisition'
define abstract entity zabs_purchaserequisition
{
  purchase_requisition  : abap.numc(8);
  created_by : abp_creation_user;
  created_at : abp_creation_tstmpl;
}
