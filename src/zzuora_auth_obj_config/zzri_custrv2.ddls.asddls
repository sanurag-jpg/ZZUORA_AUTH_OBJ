@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #MANDATORY
@EndUserText.label: 'Customer Read only interface'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZZRI_CUSTRV2
  with parameters
    p_capability_id : /zuora001/delngchar
  as select from /ZUORA001/I_CSTL( p_capability_id: $parameters.p_capability_id )
{
  key CustomerId,
  key ValidFrom,
      ValidTo,
      CustomerName,
      ActivatedDate,
      ExpiryDate,
      Active,
      Status,
      CreatedBy,
      CreatedAt,
      LocalChangedBy,
      LocalLastChangedAt,
      LastChangedAt,
      CreatedUserDescription,
      ChangedUserDescription
}
