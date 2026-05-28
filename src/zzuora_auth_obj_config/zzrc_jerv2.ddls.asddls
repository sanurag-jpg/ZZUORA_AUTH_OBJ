@AccessControl.authorizationCheck: #MANDATORY
@EndUserText.label: 'Projection on JE Return'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZZRC_JERV2
  as projection on ZZRI_JERV2
{
  key JeUid,
  key JeDocNumber,
  key ItemnoAcc,
  key CustomerId,
  key Message,
      DestinationSystem,
      DestinationName,
      Type,
      ResId,
      ResNumber,
      LogNo,
      LogMsgNo,
      MessageV1,
      MessageV2,
      MessageV3,
      MessageV4,
      ResParameter,
      ResRow,
      Field,
      ResSystem,
      /* Associations */
      _header : redirected to parent ZZRC_JEHV2
      
}
