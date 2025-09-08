@AbapCatalog.sqlViewName: 'ZV_SOHEADER_0082'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'CDS Interface - Sales Orders'
@Metadata.ignorePropagatedAnnotations: true
define view Z_I_SalesOrder_0082
  as select from zsoheader_0082
{

  key id as Identificador,
      email as Correo,
      firstname as Nombre,
      lastname as Apellido,
      country as Pais,
      @Semantics.systemDateTime.createdAt: true
      createon as Creado,
      deliverydate as Entregado,
      orderstatus as Estado,
      imageurl as Imagen
}
