@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #MANDATORY
@EndUserText.label: 'Value mapping data log v1'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZZRI_MAPC0LOGV1
  as select from /ZUORA001/I_MPC0LOG
{
  key CustomerId,
  key Destinationid,
  key DestinationName,
  key CapabilityId,
  key RuleId,
  key ConditionSeq,
  key TargetSeq,
  key ValidFrom,
      ValidFrom_old,
      CapabilityName,
      ValidTo,
      ValidTo_old,
      RuleDescription,
      RuleDescription_old,
      ActivatedDate,
      ActivatedDate_old,
      ExpiryDate,
      ExpiryDate_old,
      SourceField,
      SourceField_old,
      TargetField,
      TargetField_old,
      SourceValue,
      SourceValue_old,
      TargetValue,
      TargetValue_old,
      MappingType,
      MappingType_old,
      SourceData,
      SourceData_old,
      TargetData,
      TargetData_old,
      SourceCondition,
      SourceCondition_old,
      ObjType,
      ObjType_old,
      ValueType,
      ValueType_old,
      RangeEndValue,
      RangeEndValue_old,
      Status,
      Status_old,
      CreatedBy,
      CreatedAt,
      LocalChangedBy,
      LocalLastChangedAt,
      LastChangedAt,
      CreatedUserDescription,
      ChangedUserDescription
}
