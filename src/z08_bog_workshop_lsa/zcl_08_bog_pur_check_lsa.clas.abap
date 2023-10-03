CLASS zcl_08_bog_pur_check_lsa DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_badi_interface .
    INTERFACES if_mm_pur_s4_pr_check .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_08_bog_pur_check_lsa IMPLEMENTATION.


  METHOD if_mm_pur_s4_pr_check~check.

    TRY.
        messages = COND #( WHEN purchaserequisitionitem_table[ 1 ]-orderedquantity MOD 2 EQ 1 THEN
                             VALUE #( BASE messages
                                      ( messageid        = 'DUMMY'
                                        messagetype      = 'I'
                                        messagenumber    = '001'
                                        messagevariable1 = ' Message from group 08: Solo numero par de posiciones GIL '
                                      )
                                    )
                         ).
      CATCH cx_sy_itab_line_not_found.
    ENDTRY.
  ENDMETHOD.
ENDCLASS.
