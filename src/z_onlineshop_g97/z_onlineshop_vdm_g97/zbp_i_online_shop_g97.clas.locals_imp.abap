CLASS lhc_Online_Shop DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.

    METHODS get_instance_authorizations FOR INSTANCE AUTHORIZATION
      IMPORTING keys REQUEST requested_authorizations FOR Online_Shop RESULT result.

    METHODS creatr_pr FOR MODIFY
      IMPORTING keys FOR ACTION Online_Shop~creatr_pr.

    METHODS set_inforecord FOR MODIFY
      IMPORTING keys FOR ACTION Online_Shop~set_inforecord.

    METHODS update_inforecord FOR MODIFY
      IMPORTING keys FOR ACTION Online_Shop~update_inforecord.

    METHODS calcate_order_id FOR DETERMINE ON MODIFY
      IMPORTING keys FOR Online_Shop~calcate_order_id.

ENDCLASS.

CLASS lhc_Online_Shop IMPLEMENTATION.

  METHOD get_instance_authorizations.
  ENDMETHOD.

  METHOD creatr_pr.
  ENDMETHOD.

  METHOD set_inforecord.
  ENDMETHOD.

  METHOD update_inforecord.
  ENDMETHOD.

  METHOD calcate_order_id.
  ENDMETHOD.

ENDCLASS.

CLASS lsc_ZI_ONLINE_SHOP_G97 DEFINITION INHERITING FROM cl_abap_behavior_saver.
  PROTECTED SECTION.

    METHODS save_modified REDEFINITION.

    METHODS cleanup_finalize REDEFINITION.

ENDCLASS.

CLASS lsc_ZI_ONLINE_SHOP_G97 IMPLEMENTATION.

  METHOD save_modified.
    DATA lt_onlineshop_as TYPE STANDARD TABLE OF zshop_as_g97.
*    DATA ls_onlineshop_as TYPE zshop_as_g97.

    LOOP AT zbp_i_online_shop_g97=>cv_pr_mapped-purchaserequisition ASSIGNING FIELD-SYMBOL(<fs_pr_mapped>).
      CONVERT KEY OF i_purchaserequisitiontp FROM <fs_pr_mapped>-%pid TO DATA(ls_pr_key).
      <fs_pr_mapped>-purchaserequisition = ls_pr_key-purchaserequisition.
    ENDLOOP.
    IF create-online_shop IS NOT INITIAL.
      lt_onlineshop_as = CORRESPONDING #( create-online_shop ).
      lt_onlineshop_as[ 1 ]-purchasereqn = ls_pr_key-purchaserequisition.

      INSERT zshop_as_g97 FROM TABLE @lt_onlineshop_as.
    ENDIF.
  ENDMETHOD.

  METHOD cleanup_finalize.
  ENDMETHOD.

ENDCLASS.
