@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #MANDATORY
@EndUserText.label: 'JE Currency Interface'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #L,
    dataClass: #TRANSACTIONAL
}
define view entity ZZRI_JECV2
  as select from /ZUORA001/I_JECV2
  association to parent ZZRI_JEHV2 as _header on  $projection.JeUid       = _header.JeUid
                                              and $projection.CustomerId  = _header.CustomerId
                                              and $projection.JeDocNumber = _header.JeDocNumber
{
  key JeUid,
  key CustomerId,
  key JeDocNumber,
  key ItemnoAcc,
      DestinationSystem,
      DestinationName,
      CurrType,
      Currency,
      CurrencyIso,
      AmtDoccur,
      ExchRate,
      ExchRateV,
      AmtBase,
      DiscBase,
      DiscAmt,
      TaxAmt,

      _header
      
}
