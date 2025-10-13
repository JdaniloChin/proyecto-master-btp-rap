CLASS zcl_so_loadingdata_0082 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_so_loadingdata_0082 IMPLEMENTATION.



  METHOD if_oo_adt_classrun~main.
    out->write( 'Carga de datos de prueba' ).

    DELETE FROM zsoitems_0082.
    DELETE FROM zsoheader_0082.

    CONSTANTS:
      lc_header_id1 TYPE zde_id_0082 VALUE '40C94F02-4A73-1EDF-B5A1-972093539082',
      lc_header_id2 TYPE zde_id_0082 VALUE '40C94F02-4A73-1EDF-B5A1-972093539083'.

    DATA: lt_header TYPE TABLE OF zsoheader_0082,
          lt_items  TYPE TABLE OF zsoitems_0082.

    lt_header = VALUE #(
      (  id = lc_header_id1 email = 'cliente.premium@mail.com' firstname = 'Juan' lastname = 'Pérez' country = 'ES' createon = '20250110' deliverydate = '20250215' orderstatus = 1 imageurl = 'URL_JUAN_1' )
      (  id = lc_header_id2 email = 'empresa.b2b@mail.com' firstname = 'María' lastname = 'Gómez' country = 'AR' createon = '20250301' deliverydate = '20250320' orderstatus = 2 imageurl = 'URL_MARIA_2' )
    ).

    lt_items = VALUE #(
      ( id = lc_header_id1 item_position = 1 name = 'Laptop X1' description = 'Modelo Ultraligero, 16GB RAM' releasedate = '20240901' price = '1250.00' height = '1.500' width = '30.000' depth = '20.00' quantity = '1.00' unitofmeasure = 'PCE' )
      ( id = lc_header_id1 item_position = 2 name = 'Monitor 4K' description = '32 Pulgadas, Curvo' releasedate = '20240501' price = '450.50' height = '50.000' width = '70.000' depth = '10.00' quantity = '2.00' unitofmeasure = 'PCE' )

      ( id = lc_header_id2 item_position = 1 name = 'Servicio Consultoria' description = '100 Horas de desarrollo' releasedate = '20250101' price = '5000.00' height = '0.000' width = '0.000' depth = '0.00' quantity = '1.00' unitofmeasure = 'HUR' )
    ).

    INSERT zsoheader_0082 FROM TABLE @lt_header.
    DATA(lv_headers_inserted) = sy-dbcnt.

    INSERT zsoitems_0082 FROM TABLE @lt_items.
    DATA(lv_items_inserted) = sy-dbcnt.

    COMMIT WORK.


    out->write( |Carga de datos finalizada exitosamente:| ).
    out->write( | - { lv_headers_inserted } registros en ZSOHEADER_0082 insertados.| ).
    out->write( | - { lv_items_inserted } registros en ZSOITEMS_0082 insertados.| ).


  ENDMETHOD.
ENDCLASS.
