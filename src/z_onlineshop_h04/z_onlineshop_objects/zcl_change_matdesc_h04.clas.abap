CLASS zcl_change_matdesc_h04 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_change_matdesc_h04 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
    MODIFY ENTITIES OF I_ProductTP_2
        ENTITY ProductDescription
        UPDATE FIELDS ( ProductDescription )
        WITH VALUE #( ( %key-Product = 'DUMMY_PRODUCT_H04'
                        %key-Language = 'E'
                        ProductDescription = 'Dummy Product H04- Updated') )

        REPORTED DATA(reported)
        FAILED DATA(failed).

    COMMIT ENTITIES
      RESPONSE OF I_ProductTP_2
          FAILED DATA(failed_commit)
          REPORTED DATA(reported_commit).

  ENDMETHOD.
ENDCLASS.
