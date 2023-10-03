CLASS z00_cl_check_purch_req_fpt1 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_badi_interface .
    INTERFACES if_mm_pur_s4_pr_check .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS z00_cl_check_purch_req_fpt1 IMPLEMENTATION.


  METHOD if_mm_pur_s4_pr_check~check.
*    IF purchaserequisition-purchasingdocumenttype IS INITIAL.
*      purchaserequisitionhaserror = abap_true.
*      RETURN.
*    ENDIF.

    LOOP AT purchaserequisitionitem_table INTO DATA(ls_item).
      IF ls_item-orderedquantity = 13.
        purchaserequisitionhaserror = abap_true.

        messages = VALUE #(
        ( messageid = 'MM' messagenumber = '216' messagetype = 'E' messagevariable1 = 'Error (FPT)' messagevariable2 = 'Quantity = 13' )
        ).
        RETURN.
      ENDIF.
    ENDLOOP.
  ENDMETHOD.
ENDCLASS.
