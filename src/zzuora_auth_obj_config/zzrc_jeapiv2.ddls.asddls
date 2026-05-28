@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Root view for logs'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZZRC_JEAPIV2
    provider contract transactional_query
    as projection on ZZRI_JEAPIV2
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
            /* Associations */  
            _lognn   :   redirected to composition child ZZRC_JELGV2,
            _logpc   :   redirected to composition child ZZRC_JEPCV2,
            _logbd   :   redirected to composition child ZZRC_JEBDV2
    
    
}
