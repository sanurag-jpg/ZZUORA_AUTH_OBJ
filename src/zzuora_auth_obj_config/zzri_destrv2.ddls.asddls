@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #MANDATORY
@EndUserText.label: 'Destination Read only interface'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZZRI_DESTRV2
  as select from /ZUORA001/I_DSTR
{
  key CustomerId,
  key Destinationid,
  key ValidFrom,
      ValidTo,
      DestinationName,
      Description,
      CapabilityId,
      DestUsrl,
      DestType,
      ProxyType,
      AuthType,
      AuthUser,
      case when AuthUser != AuthUser then AuthUser else null end as AuthPwd,
      SystemId,
      LandScape,
      Status,
      SAPInstanceName,
      AuthorizationType,
      VirtualAppServerHost,
      SystemNumber,
      SystemClient,
      AliasUser,
      LogonLanguage,
      LocationID,
      CreatedBy,
      CreatedAt,
      LocalChangedBy,
      LocalLastChangedAt,
      LastChangedAt,
      CreatedUserDescription,
      ChangedUserDescription
}
