@AccessControl.authorizationCheck: #MANDATORY
@EndUserText.label: 'Projection on JE Currency'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZZRC_JECV2
  as projection on ZZRI_JECV2
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
      /* Associations */
      _header : redirected to parent ZZRC_JEHV2
      
}
