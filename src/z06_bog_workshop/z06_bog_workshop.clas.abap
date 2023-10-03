CLASS z06_bog_workshop DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES: if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS z06_bog_workshop IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.

      out->write( | Hello World ! | ).

      select *
            from I_MaterialDocumentHeader_2
            into table @data(lt_mara).


  ENDMETHOD.

ENDCLASS.

