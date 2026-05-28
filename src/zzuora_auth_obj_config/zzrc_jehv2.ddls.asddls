@AccessControl.authorizationCheck: #MANDATORY
@EndUserText.label: 'Projection on JE Header'
@Metadata.ignorePropagatedAnnotations: true

define root view entity ZZRC_JEHV2
  provider contract transactional_query
  as projection on ZZRI_JEHV2
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
      /* Associations */
      _item     : redirected to composition child ZZRC_JEIV2,

      _currency : redirected to composition child ZZRC_JECV2,

      _return   : redirected to composition child ZZRC_JERV2
      
}
