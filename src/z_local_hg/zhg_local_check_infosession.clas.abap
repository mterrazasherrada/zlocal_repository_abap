CLASS zhg_local_check_infosession DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_badi_interface .
    INTERFACES if_mm_pur_s4_pr_check .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zhg_local_check_infosession IMPLEMENTATION.


  METHOD if_mm_pur_s4_pr_check~check.
    DATA ls_message TYPE mmpur_s_messages.
    DATA     rem    type p decimals 2.
    check sy-uname = 'CB9980000040'.
**
    READ TABLE  purchaserequisitionitem_table  INTO DATA(ls_pur_req_itm) INDEX 1    .

    rem = ( ls_pur_req_itm-orderedquantity mod 2 ).

    IF rem = 1.
      ls_message-messageid = 'DUMMY'.
      ls_message-messagetype = 'I'.
      ls_message-messagenumber = '001'.
      ls_message-messagevariable1 = ' Message to expert session: Only order an even number of items '.     "Place holder
      APPEND ls_message TO messages.
    ENDIF.
  ENDMETHOD.
ENDCLASS.
