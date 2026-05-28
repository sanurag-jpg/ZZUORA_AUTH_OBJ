@AccessControl.authorizationCheck: #MANDATORY
@EndUserText.label: 'Projection on JE Reversal'
@Metadata.ignorePropagatedAnnotations: true

define view entity ZZRC_REVHV2
  as projection on ZZRI_REVHV2
{
  key JeUid,
  key CustomerId,
  key JeDocNumber,
      DestinationSystem,
      DestinationName,
      LandScape,
      ObjType,
      ObjKey,
      ObjSys,
      CompCode,
      Username,
      DocDate,
      PstngDate,
      ObjKeyR,
      RefDocNo,
      AcDocNo,
      ReasonRev,
      Vatdate,
      Lastchangedat,
      Locallastchangedat,

      /* Associations */
      _apic : redirected to parent ZZRC_APICEV2
      
}
