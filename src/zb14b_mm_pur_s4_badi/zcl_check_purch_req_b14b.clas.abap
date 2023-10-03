CLASS zcl_check_purch_req_b14b DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_badi_interface .
    INTERFACES if_mm_pur_s4_pr_check .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_check_purch_req_b14b IMPLEMENTATION.
  METHOD if_mm_pur_s4_pr_check~check.

    DATA ls_message TYPE mmpur_s_messages.
**
    READ TABLE  purchaserequisitionitem_table  INTO DATA(ls_pur_req_itm) INDEX 1    .

    IF ls_pur_req_itm-orderedquantity > 10.
      ls_message-messageid = 'DUMMY'.
      ls_message-messagetype = 'E'.
      ls_message-messagenumber = '001'.
      ls_message-messagevariable1 = ' Quantity limit 10'.           "Place holder
      ls_message-messagevariable2 = cl_abap_context_info=>get_user_technical_name( ).
      APPEND ls_message TO messages.
    ENDIF.

    IF ls_pur_req_itm-deliverydate - ( cl_abap_context_info=>get_system_date( ) ) > 180.
      ls_message-messageid = 'DUMMY'.
      ls_message-messagetype = 'E'.
      ls_message-messagenumber = '001'.
      ls_message-messagevariable1 = 'Delivery date limit 180 days '.           "Place holder
      ls_message-messagevariable2 = cl_abap_context_info=>get_user_technical_name( ).
      APPEND ls_message TO messages.
    ENDIF.

  ENDMETHOD.
ENDCLASS.
