CLASS z_hello_all DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS z_hello_all IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

    out->write( | Hello to all participants!| ).

  ENDMETHOD.
ENDCLASS.
