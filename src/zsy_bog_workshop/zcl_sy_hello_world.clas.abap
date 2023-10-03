CLASS zcl_sy_hello_world DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES: if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_sy_hello_world IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.

    out->write( 'Hola Mundo' ).

SELECT productexternalid from i_product INTO TABLE @DATA(lt_mara_new).

IF 0 = 1.
ENDIF.

  ENDMETHOD.
ENDCLASS.
