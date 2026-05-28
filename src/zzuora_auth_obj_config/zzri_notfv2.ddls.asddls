@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #MANDATORY
@EndUserText.label: 'Notification Read only interface'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZZRI_NOTFV2
  as select from /ZUORA001/I_NTFV2
{
  key CustomerId,
  key NotificationId,
  key ValidFrom,
      ValidTo,
      EmailNotification,
      ReqFailure,
      ReqWarnings,
      ReqSuccess,
      Status,
      CreatedBy,
      CreatedAt,
      LocalChangedBy,
      LocalLastChangedAt,
      LastChangedAt
}
