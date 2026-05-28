@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #MANDATORY
@EndUserText.label: 'JE Header Interface'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #L,
    dataClass: #TRANSACTIONAL
}
define root view entity ZZRI_JEHV2
  as select from /ZUORA001/I_JEHV2
  composition [0..*] of ZZRI_JEIV2  as _item
  composition [0..*] of ZZRI_JECV2  as _currency
  composition [0..*] of ZZRI_JERV2  as _return
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
      BusAct,
      Username,
      HeaderTxt,
      CompCode,
      DocDate,
      PstngDate,
      TransDate,
      FiscYear,
      FisPeriod,
      DocType,
      RefDocNo,
      AcDocNo,
      ObjKeyR,
      ReasonRev,
      CompoAcc,
      RefDocNoLong,
      AccPrinciple,
      NegPostng,
      ObjKeyInv,
      BillCategory,
      Vatdate,
      InvoiceRecDate,
      EcsEnv,
      PartialRev,
      DocStatus,
      ExchangeRate,
      Lastchangedat,
      Locallastchangedat,

      _item,

      _currency,

      _return


}
