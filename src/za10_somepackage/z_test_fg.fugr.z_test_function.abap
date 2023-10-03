function z_test_function.
*"----------------------------------------------------------------------
*"*"Local Interface:
*"  IMPORTING
*"     REFERENCE(IV_STRING) TYPE  STRING
*"  EXPORTING
*"     REFERENCE(EV_STRING) TYPE  STRING
*"----------------------------------------------------------------------
.

data: lv_string type string.

concatenate iv_string 'yo' into lv_string SEPARATED BY space.

ev_string = lv_string.


ENDFUNCTION.
