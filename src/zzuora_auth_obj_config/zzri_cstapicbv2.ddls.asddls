@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #MANDATORY
@EndUserText.label: 'CustwiseAPICall with CapabilityAnalytics'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZZRI_CSTAPICBV2
  with parameters
    p_customer_id : /zuora001/delngchar,
    p_from_date   : /zuora001/deffdate,
    p_to_date     : /zuora001/dettdate,
    p_capbwise    : /zuora001/deynval
  as select from /ZUORA001/I_CSTACB( p_customer_id: $parameters.p_customer_id, p_from_date: $parameters.p_from_date, p_to_date: $parameters.p_to_date, p_capbwise:  $parameters.p_capbwise)
{
  key CustomerId,
  key CustomerName,
  key CapabilityId,
  key CapabilityName,
  key FiscYear,
  key FisPeriod,
      SuccessCalls,
      FailureCalls,
      TotalCalls,
      SuccessRate,
      FailureRate
}
