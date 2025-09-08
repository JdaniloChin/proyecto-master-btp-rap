@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Consumption Sales Orders'
@Metadata.ignorePropagatedAnnotations: true
define view entity Z_C_SalesOrder_0082
  as projection on Z_I_SalesOrderItem_0082
{
  key ID,
      Nombre,
      Descripcion,
      Lanzamiento,
      Discontinuado,
      Pecio,
      @Semantics.quantity.unitOfMeasure: 'Medida'
      Altura,
      @Semantics.quantity.unitOfMeasure: 'Medida'
      Ancho,
      @Semantics.quantity.unitOfMeasure: 'Medida'
      Profundidad,
      Cantidad,
      @Semantics.unitOfMeasure: true
      Medida,
      /* Associations */
      _Header
}
