CLASS zcl_mm_pur_s4_pr_check DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_badi_interface .
    INTERFACES if_mm_pur_s4_pr_check .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_MM_PUR_S4_PR_CHECK IMPLEMENTATION.


  METHOD if_mm_pur_s4_pr_check~check.

* Here we can add the validations
    IF purchaserequisition-purchasingdocumenttype IS INITIAL.
      purchaserequisitionhaserror = abap_true.
      RETURN.
    ENDIF.

  ENDMETHOD.
ENDCLASS.
