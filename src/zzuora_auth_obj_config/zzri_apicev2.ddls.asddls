@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #MANDATORY
@EndUserText.label: 'Interface for APICall logs rev'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #L,
    dataClass: #TRANSACTIONAL
}

define root view entity ZZRI_APICEV2
  as select from /ZUORA001/I_ACE
  composition [1..1] of ZZRI_REVHV2 as _revh
  composition [0..*] of ZZRI_REVRV2 as _revr
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
      Status,
      CreatedBy,
      CreatedAt,
      LocalChangedBy,
      LocalLastChangedAt,
      LastChangedAt,

      _revh,

      _revr

}
