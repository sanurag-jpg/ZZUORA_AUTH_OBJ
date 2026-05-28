@AccessControl.authorizationCheck: #MANDATORY
@EndUserText.label: 'Projection on JE Reversal Return'
@Metadata.ignorePropagatedAnnotations: true

define view entity ZZRC_REVRV2
  as projection on ZZRI_REVRV2
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
      _apic : redirected to parent ZZRC_APICEV2
      
}
