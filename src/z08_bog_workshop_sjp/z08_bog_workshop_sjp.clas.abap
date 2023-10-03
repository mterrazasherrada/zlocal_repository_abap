CLASS z08_bog_workshop_sjp DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS z08_bog_workshop_sjp IMPLEMENTATION.

   METHOD if_oo_adt_classrun~main.


    out->write( 'Hello world' ).

  ENDMETHOD.


ENDCLASS.
