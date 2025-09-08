@AbapCatalog.sqlViewName: 'ZV_SOITEMS_0082'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Interface - Sales Orders Itens'
@Metadata.ignorePropagatedAnnotations: true
define view Z_I_SalesOrderItem_0082 as select from zsoitems_0082 as Items
association to parent Z_I_SalesOrderRoot_0082 as _Header on $projection.ID = _Header.Id
{
    key id as ID,
    name as Nombre,
    description as Descripcion,
    releasedate as Lanzamiento,
    discontinuedate as Discontinuado,
    price as Pecio,
    @Semantics.quantity.unitOfMeasure: 'Medida'
    height as Altura,
    @Semantics.quantity.unitOfMeasure: 'Medida'
    width as Ancho,
    @Semantics.quantity.unitOfMeasure: 'Medida'
    depth as Profundidad,
    quantity as Cantidad,
    @Semantics.baseUnitOfMeasure: true
    unitofmeasure as Medida,
    _Header
}
