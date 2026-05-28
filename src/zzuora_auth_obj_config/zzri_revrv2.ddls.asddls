@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #MANDATORY
@EndUserText.label: 'JE Reversal Return Interface'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #L,
    dataClass: #TRANSACTIONAL
}

define view entity ZZRI_REVRV2
  as select from /ZUORA001/I_RVRV2
  association to parent ZZRI_APICEV2 as _apic on  $projection.CustomerId  = _apic.CustomerId
                                              and $projection.JeUid       = _apic.JeUid
                                              and $projection.JeDocNumber = _apic.JeDocNumber
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

      _apic
      
}
