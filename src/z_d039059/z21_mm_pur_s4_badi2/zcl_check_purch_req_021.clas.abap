CLASS zcl_check_purch_req_021 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_badi_interface .
    INTERFACES if_mm_pur_s4_pr_check .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_CHECK_PURCH_REQ_021 IMPLEMENTATION.


  METHOD if_mm_pur_s4_pr_check~check.
    DATA ls_message TYPE mmpur_s_messages.
**
    READ TABLE  purchaserequisitionitem_table  INTO DATA(ls_pur_req_itm) INDEX 1    .

    IF ls_pur_req_itm-orderedquantity > 10.
      ls_message-messageid = 'DUMMY'.
      ls_message-messagetype = 'E'.
      ls_message-messagenumber = '001'.
      ls_message-messagevariable1 = ' Quantity IS LIMITED 10'.           "Place holder
      APPEND ls_message TO messages.

    ENDIF.

    IF ls_pur_req_itm-deliverydate - ( cl_abap_context_info=>get_system_date( ) ) > 180.
      ls_message-messageid = 'DUMMY'.
      ls_message-messagetype = 'E'.
      ls_message-messagenumber = '001'.
      ls_message-messagevariable1 = 'Delivery OS LIMITED TO 180 DAYS '.           "Place holder
      APPEND ls_message TO messages.

    ENDIF.

  ENDMETHOD.
ENDCLASS.
