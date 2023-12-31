CLASS zcl_material_information_h05 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.

  PROTECTED SECTION.
  PRIVATE SECTION.
    METHODS get_material_art
      IMPORTING
        matnr               TYPE I_PRODUCT-Product
      RETURNING
        VALUE(material_art) TYPE I_PRODUCT-ProductType.
ENDCLASS.



CLASS zcl_material_information_h05 IMPLEMENTATION.


  METHOD get_material_art.
    DATA material TYPE I_PRODUCT.
    DATA production_date TYPE datn.
    DATA bool_tmp TYPE ABAP_BOOLEAN .

    PRODUCTION_DATE = cl_abap_context_info=>get_system_date( ).

    SELECT SINGLE FROM I_PRODUCT fields ProductType WHERE Product = @MATNR INTO CORRESPONDING FIELDS OF @MATERIAL .

    MATERIAL_ART = MATERIAL-ProductType.

  ENDMETHOD.


  METHOD if_oo_adt_classrun~main.
    DATA material_info TYPE REF TO zcl_material_information_h05.
    material_info = NEW zcl_material_information_h05(  ).
    DATA(material_art) = material_info->get_material_art( 'RM34' ).
    out->write( material_art ).
  ENDMETHOD.
ENDCLASS.

