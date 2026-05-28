@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #MANDATORY
@EndUserText.label: 'Destination data log'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZZRI_DESTLOG
  as select from /ZUORA001/I_DSTLOG
{
  key CustomerId,
  key Destinationid,
  key ValidFrom,
      ValidFrom_old,
      ValidTo,
      ValidTo_old,
      DestinationName,
      DestinationName_old,
      Description,
      Description_old,
      CapabilityId,
      CapabilityId_old,
      CapabilityName,
      CapabilityName_old,
      DestUsrl,
      DestUsrl_old,
      DestType,
      DestType_old,
      ProxyType,
      ProxyType_old,
      AuthType,
      AuthType_old,
      AuthUser,
      AuthUser_old,
      SystemId,
      SystemId_old,
      LandScape,
      LandScape_old,
      Status,
      Status_old,
      SAPInstanceName,
      SAPInstanceName_old,
      AuthorizationType,
      AuthorizationType_old,
      VirtualAppServerHost,
      VirtualAppServerHost_old,
      SystemNumber,
      SystemNumber_old,
      SystemClient,
      SystemClient_old,
      AliasUser,
      AliasUser_old,
      LogonLanguage,
      LogonLanguage_old,
      LocationId,
      LocationId_old,

      CreatedBy,
      CreatedAt,
      LocalChangedBy,
      LocalLastChangedAt,
      LastChangedAt,
      CreatedUserDescription,
      ChangedUserDescription
}
