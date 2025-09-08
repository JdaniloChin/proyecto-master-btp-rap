@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Consumption Sales Orders'
@Metadata.ignorePropagatedAnnotations: true
define root view entity Z_C_SalesOrderRoot_0082 as projection on Z_I_SalesOrderRoot_0082
{
   key Id,
   Correo,
   Nombre,
   Apellido,
   Pais,
   @Semantics.systemDateTime.createdAt: true
   Creado,
   Entregado,
   Estado,
   Imagen,
   /* Associations */
   _Items 
}
