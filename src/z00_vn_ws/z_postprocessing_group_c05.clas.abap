CLASS z_postprocessing_group_c05 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_badi_interface .
    INTERFACES if_dmee_output_postprocessing .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS z_postprocessing_group_c05 IMPLEMENTATION.


  METHOD if_dmee_output_postprocessing~modify_output.

CONSTANTS: line_length  TYPE numc4 VALUE 256.

    DATA: file_string   TYPE string,
          position      TYPE numc4,
          string_length TYPE numc4,
          line          TYPE LINE OF dmee_output_file_lines,
          hash          TYPE string.

    CASE output_mode.
      WHEN 'LINES'.
        "1) Create string from output table
        LOOP AT output_file_lines ASSIGNING FIELD-SYMBOL(<line>).
          IF <line>-length IS NOT INITIAL.
            DATA(length) = <line>-length.
            DATA(real_length) = strlen( <line>-line ).
            file_string = file_string && <line>-line(length).

            IF length > real_length.
              DO length - real_length TIMES.
                file_string = file_string && ` `.
              ENDDO.
            ENDIF.
          ELSE.
            file_string = file_string && <line>-line.
          ENDIF.

          "Handling end of the lines usually for the flat files
          IF <line>-x_cr = abap_true.
            file_string = file_string && |\r|.
          ENDIF.

          IF <line>-x_lf = abap_true.
            file_string = file_string && |\n|.
          ENDIF.
        ENDLOOP.
    ENDCASE.

    "2) Hash Generation
    TRY.
        cl_abap_message_digest=>calculate_hash_for_char(
          EXPORTING
            if_algorithm  = 'SHA256'
            if_data       = file_string
          IMPORTING
            ef_hashstring = hash ).
      CATCH cx_abap_message_digest.
    "Error handling TBD
    ENDTRY.

    "3) Adjusting of the XML
    file_string =
    '<Envelope>' &&
      '<Hash>' &&
        hash &&
      '</Hash>' &&
       '<Payload>' &&
         file_string &&
       '</Payload>' &&
     '</Envelope>'.

    "Empty the initial content of the file
    FREE output_file_lines.

    "Get total length
    string_length = strlen( file_string ).

    "4) Prepare the table content of the file
    WHILE line_length <= string_length.
      CLEAR line.
      line-line = file_string+position(line_length).
      line-length = line_length.
      APPEND line TO output_file_lines.

      position         = position + line_length.
      string_length    = string_length - line_length.
    ENDWHILE.

    "Handle last line
    IF string_length > 0.
      CLEAR line.
      line-line = file_string+position(string_length).
      line-length = strlen( line-line ).
      APPEND line TO output_file_lines.
    ENDIF.

  ENDMETHOD.
ENDCLASS.
