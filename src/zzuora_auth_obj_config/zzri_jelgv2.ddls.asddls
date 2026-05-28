@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'GSO for solution order interface'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #L,
    dataClass: #TRANSACTIONAL
}
define view entity ZZRI_JELGV2 
    as select from /ZUORA001/I_JELGV2 
    association to parent ZZRI_JEAPIV2 as _SB  on  $projection.CustomerId  = _SB.CustomerId
                                               and $projection.JeUid   = _SB.JeUid

{
    key JeUid,    
    key CustomerId,
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
        
        
        _SB
    
}
    
