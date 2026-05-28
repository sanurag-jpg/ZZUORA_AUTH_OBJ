@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #MANDATORY
@EndUserText.label: 'Customer Capability Read only interface'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZZRI_CUSTCAPBRV2
  as select from /ZUORA001/I_CSTCAPBR
{
  key CapabilityId,
  key CustomerId,
  key ValidFrom,
      ValidTo,
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
