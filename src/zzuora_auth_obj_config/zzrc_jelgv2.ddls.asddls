@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Projection on GSO for Solution Order'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZZRC_JELGV2 
        as projection on ZZRI_JELGV2
{
    key  JeUid,    
    key  CustomerId,
         CapabilityId,
         CreatedAt,
         ApiName,
         RequestJson,
         ResponseJson,
         StatusCode,
         ErrorFlag,
         SolutionOrder,
         SolutionItem,
         SolutionOrderStatus,
         ProviderContract,
         SubscriptionDocumentId,
         SubscriptionId,
         /* Associations */
         _SB : redirected to parent ZZRC_JEAPIV2
         
}
