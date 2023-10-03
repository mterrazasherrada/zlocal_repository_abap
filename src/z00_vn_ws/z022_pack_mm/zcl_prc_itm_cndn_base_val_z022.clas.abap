CLASS zcl_prc_itm_cndn_base_val_z022 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_badi_interface .
    INTERFACES if_prcg_doc_itm_cndn_base_val .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_prc_itm_cndn_base_val_z022 IMPLEMENTATION.


  METHOD if_prcg_doc_itm_cndn_base_val~change_condition_base_values.

    MOVE-CORRESPONDING prcg_element_attributes TO prcg_element_result_amounts.
    IF prcg_element_result_amounts-conditionbasevalue > 0.
      prcg_element_result_amounts-conditionbasevalue = prcg_element_result_amounts-conditionbasevalue / 10.
    ENDIF.

  ENDMETHOD.
ENDCLASS.
