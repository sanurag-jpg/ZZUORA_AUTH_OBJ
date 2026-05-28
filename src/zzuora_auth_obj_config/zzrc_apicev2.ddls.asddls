@AccessControl.authorizationCheck: #MANDATORY
@EndUserText.label: 'Projection on APICall logs rev'
@Metadata.ignorePropagatedAnnotations: true

define root view entity ZZRC_APICEV2
  provider contract transactional_query
  as projection on ZZRI_APICEV2
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


      /* Associations */
      _revh : redirected to composition child ZZRC_REVHV2,

      _revr : redirected to composition child ZZRC_REVRV2
}
