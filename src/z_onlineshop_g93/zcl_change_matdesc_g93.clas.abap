CLASS zcl_change_matdesc_g93 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_change_matdesc_g93 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
    modify entities of I_ProductTP_2
      entity ProductDescription
      update fields ( ProductDescription )
      with value #( ( %key-Product = 'DUMMY_PRODUCT_G93'
                      %key-Language = 'E'
                      ProductDescription = 'Dummy Product G93 - Updated' ) )
      reported data(reported)
      failed data(failed).

    commit entities
      response of I_ProductTP_2
      failed data(failed_commit)
      reported data(reported_commit).
  ENDMETHOD.
ENDCLASS.
