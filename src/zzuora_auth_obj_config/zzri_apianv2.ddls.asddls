@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #MANDATORY
@EndUserText.label: 'API Call Analytics interface'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZZRI_APIANV2
  with parameters
    p_customer_id : /zuora001/delngchar,
    p_from_date   : /zuora001/deffdate,
    p_to_date     : /zuora001/dettdate
  as select from /ZUORA001/I_API( p_customer_id:$parameters.p_customer_id , p_from_date: $parameters.p_from_date, p_to_date: $parameters.p_to_date )
{
  key CustomerId,
  key CustomerName,
  key CapabilityId,
  key CapabilityName,
  key DestinationSystem,
  key DestinationName,
  key FiscYear,
  key FisPeriod,
      SuccessCalls,
      FailureCalls,
      TotalCalls
}
