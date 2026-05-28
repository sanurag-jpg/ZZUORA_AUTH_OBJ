@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #MANDATORY
@EndUserText.label: 'Value Mapping v0 Read only interface'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZZRI_MAPC0V2
  as select from /ZUORA001/I_MPC0V2
{
  key CustomerId,
  key Destinationid,
  key DestinationName,
  key CapabilityId,
  key RuleId,
  key ConditionSeq,
  key TargetSeq,
  key ValidFrom,
      ValidTo,
      RuleDescription,
      ActivatedDate,
      ExpiryDate,
      SourceField,
      TargetField,
      SourceValue,
      TargetValue,
      MappingType,
      SourceData,
      TargetData,
      SourceCondition,
      ObjType,
      ValueType,
      RangeEndValue,
      Status,
      CreatedBy,
      CreatedAt,
      LocalChangedBy,
      LocalLastChangedAt,
      LastChangedAt,
      CreatedUserDescription,
      ChangedUserDescription
      
}
