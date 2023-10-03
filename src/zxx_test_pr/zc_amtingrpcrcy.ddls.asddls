@AbapCatalog.sqlViewName: 'ZAMTINGRPCRCY'
@AbapCatalog.compiler.compareFilter: true
//@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Amount in group currency'
define view ZC_AMTINGRPCRCY as select from zgrp_rptg
{

  //key client,        //: abap.clnt not null;
  key bukrs,      // : bukrs not null;
  key gjahr,         //: gjahr not null;
  key belnr,         //: belnr_d not null;
  key buzei,         //: buzei not null;
  //@Semantics.amount.currencyCode : 'zgrp_rptg.kzwrs'
  iptaxamtingrpcrcy, //: wrbtr_cs;
  kzwrs             //: zkzwrs;
  
}
