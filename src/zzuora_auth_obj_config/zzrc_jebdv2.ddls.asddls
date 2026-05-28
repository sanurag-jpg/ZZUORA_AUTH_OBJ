@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Projection on GSO for Billing document'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZZRC_JEBDV2
  as projection on ZZRI_JEBDV2
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
       /* Associations */
       _SB : redirected to parent ZZRC_JEAPIV2
}
