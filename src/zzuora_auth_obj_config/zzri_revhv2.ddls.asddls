@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #MANDATORY
@EndUserText.label: 'JE Reversal Interface'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #L,
    dataClass: #TRANSACTIONAL
}
define view entity ZZRI_REVHV2
  as select from /ZUORA001/I_RVHV2
  association to parent ZZRI_APICEV2 as _apic on  $projection.CustomerId  = _apic.CustomerId
                                              and $projection.JeUid       = _apic.JeUid
                                              and $projection.JeDocNumber = _apic.JeDocNumber
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

      _apic

}
