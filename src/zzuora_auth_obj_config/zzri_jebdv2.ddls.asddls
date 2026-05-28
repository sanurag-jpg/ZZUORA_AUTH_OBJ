@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'GSO for Billing document'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZZRI_JEBDV2 
    as select from /ZUORA001/I_JEBDV2
    association to parent ZZRI_JEAPIV2 as _SB  on  $projection.CustomerId  = _SB.CustomerId
                                               and $projection.JeUid   = _SB.JeUid
{
    key  JeUid,
    key  CustomerId,
       BdrNumber,
       DestinationSystem,
       DestinationName,
       LandScape,
       ReferenceDoc,
       ReferenceItem,
       SalesOrg,
       DistrChannel,
       Division,
       SoldTo,
       Currency,
       ApiName,
       CreatedBy,
       CreatedAt,
       RequestJson,
       ResponseJson,
       StatusCode,
       ErrorFlag,
       
       _SB
}
