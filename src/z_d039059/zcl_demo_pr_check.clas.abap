CLASS zcl_demo_pr_check DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_badi_interface .
    INTERFACES if_mm_pur_s4_pr_check .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_DEMO_PR_CHECK IMPLEMENTATION.


  METHOD if_mm_pur_s4_pr_check~check.

*    DATA ls_message TYPE mmpur_s_messages.
*
*    READ TABLE  purchaserequisitionitem_table  INTO DATA(ls_pur_req_itm) INDEX 1    .
*
*    IF ls_pur_req_itm-orderedquantity > 5.
*      ls_message-messageid = 'APJDEMO'.
*      ls_message-messagetype = 'E'.
*      ls_message-messagenumber = '001'.
*      ls_message-messagevariable1 = ' Quantity limit 5'.
**      APPEND ls_message TO messages.
*
*    ENDIF.
*
*

  ENDMETHOD.
ENDCLASS.
