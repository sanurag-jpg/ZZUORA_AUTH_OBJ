@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'GSO for provider contract'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZZRI_JEPCV2 
    as select from /ZUORA001/I_JEPCV2 
    association to parent ZZRI_JEAPIV2 as _SB  on  $projection.CustomerId  = _SB.CustomerId
                                               and $projection.JeUid   = _SB.JeUid

{
    key JeUid,
    key CustomerId,
        PcDocNumber,
        DestinationSystem,
        DestinationName,
        LandScape,
        CreatedAt,
        ApiName,
        RequestJson,
        ResponseJson,
        StatusCode,
        ErrorFlag,
    
        _SB
}
