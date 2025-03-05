CLASS zcl_fill_invoice_598 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_fill_invoice_598 IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.

  DATA lv_user type   SYUNAME VALUE 'CB9980007490'.
  DATA(ld_fecha) = cl_abap_context_info=>get_system_date(  ).

   modify zdt_com_inv_598 from table @( value #(

   ( invoice_id = '1'
   customer_name = 'Angel' inv_amount = '150' currency = 'USD'
   department = 'TI' created_by = lv_user  create_date = ld_fecha   )



    ) ).

   out->write( |Fecha: { ld_fecha  } Usuario : { lv_user }| ).
  ENDMETHOD.

ENDCLASS.
