CLASS zcl_check_purch_req_c08 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_badi_interface .
    INTERFACES if_mm_pur_s4_pr_check .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_check_purch_req_c08 IMPLEMENTATION.


  METHOD if_mm_pur_s4_pr_check~check.
  DATA: ls_message type mmpur_s_messages.
    READ TABLE purchaserequisitionitem_table INTO DATA(ls_purchaserequisitionitem) INDEX 1.
    if sy-subrc = 0.
      if ls_purchaserequisitionitem-orderedquantity > 10.
         ls_message-messageid        = 'DUMMY'.
         ls_message-messagetype      = 'E'.
         ls_message-messagenumber    = '001'.
         ls_message-messagevariable1 = 'Quantity limit 10'.
         APPEND ls_message to messages.
      endif.

      if ( ls_purchaserequisitionitem-deliverydate - cl_abap_context_info=>get_system_date( ) ) > 180.
         ls_message-messageid        = 'DUMMY'.
         ls_message-messagetype      = 'E'.
         ls_message-messagenumber    = '001'.
         ls_message-messagevariable1 = 'Delivery date limit 180 days'.
         APPEND ls_message to messages.
      endif.
    endif.
  ENDMETHOD.
ENDCLASS.
