@AbapCatalog.sqlViewName: 'ZV_SORDER_0082'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Interface - Sales Orders'
@Metadata.ignorePropagatedAnnotations: true
define root view Z_I_SalesOrderRoot_0082 as select from zsoheader_0082 as Header
composition [0..*] of Z_I_SalesOrderItem_0082 as _Items
{
    key id as Id,
    email as Correo,
    firstname as Nombre,
    lastname as Apellido,
    country as Pais,
    createon as Creado,
    deliverydate as Entregado,
    orderstatus as Estado,
    imageurl as Imagen,
    _Items
}
