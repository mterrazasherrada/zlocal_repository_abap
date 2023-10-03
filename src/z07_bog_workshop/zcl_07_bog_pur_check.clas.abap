CLASS zcl_07_bog_pur_check DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_badi_interface .
    INTERFACES if_mm_pur_s4_pr_check .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_07_bog_pur_check IMPLEMENTATION.

  METHOD if_mm_pur_s4_pr_check~check.
************************************************************************
*       H I S T O R I A L    D E    M O D I F I C A C I O N E S        *
************************************************************************
*^ Marca....: @001
*^ Autor....: Milton Terrazas
*^ Fecha....: 26.09.2023
*^ Motivo...: Error ejercicio 1 – Crear una extensión en S/4HANA Cloud

*  DATA ls_message TYPE mmpur_s_messages.
*  DATA rem        type p decimals 2.
*
*    READ TABLE  purchaserequisitionitem_table  INTO DATA(ls_pur_req_itm) INDEX 1    .
*
*    rem = ( ls_pur_req_itm-orderedquantity mod 2 ).
*
*    IF rem = 1.
*      ls_message-messageid = 'DUMMY'.
*      ls_message-messagetype = 'I'."'E' REPLACE @001
*      ls_message-messagenumber = '001'.
*      ls_message-messagevariable1 = ' Message from group 07: Only order an even number of items '.
*      APPEND ls_message TO messages.
*    ENDIF.

  ENDMETHOD.

ENDCLASS.
