@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #MANDATORY
@EndUserText.label: 'Interface for API Call logs'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}

define view entity ZZRI_APICV2
  as select from /ZUORA001/I_ACN
{
  key JeUid,
  key CustomerId,
  key JeDocNumber,
      CapabilityId,
      CapabilityName,
      DsetinationSystem,
      DestinationName,
      ApiStartDate,
      ExecutionTime,
      ApiUserId,
      NumberOfJeLineItems,
      ApiStatus,
      PostingType,
      PostingTypeDescr,
      LandScape,
      JournalRunNumber,
      Status,
      CreatedBy,
      CreatedAt,
      LocalChangedBy,
      LocalLastChangedAt,
      LastChangedAt
}
