CLASS z08_lsa_helloworld DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS z08_lsa_helloworld IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.
    out->write( |Hola mundo| ).

  ENDMETHOD.

ENDCLASS.
