@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'GSO for solution order interface'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #L,
    dataClass: #TRANSACTIONAL
}
define root view entity ZZRI_JEAPIV2
    as select from /ZUORA001/I_JEAPIV2 
    composition [0..*] of ZZRI_JELGV2 as _lognn
    composition [0..*] of ZZRI_JEPCV2 as _logpc
    composition [0..*] of ZZRI_JEBDV2 as _logbd
    
{
  key JeUid,           
  key CustomerId,   
      JeDocNumber,     
      CapabilityId,
      DestinationSystem,
      DestinationName,
      ApiStartDate,
      ExecutionTime,
      ApiUserId,
      NumberOfJeLineItems,
      ApiStatus,
      PostingType,
      LandScape,
      Status,               
    
     _lognn,
     _logpc,
     _logbd
      
      
}
    
