@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Projection on GSO for Provider Contract'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZZRC_JEPCV2 
        as projection on ZZRI_JEPCV2
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
    
    /* Associations */
    _SB : redirected to parent ZZRC_JEAPIV2
}
