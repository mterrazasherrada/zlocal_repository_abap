CLASS zhg_hello_world DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES: if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zhg_hello_world IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.
    out->write( | Hello to the workshop participants! | ).
*    select ProductExternalId from i_product into table @DATA(lt_mara_new).
*    select matnr from mara into table @data(l_mara).

  ENDMETHOD.
ENDCLASS.
