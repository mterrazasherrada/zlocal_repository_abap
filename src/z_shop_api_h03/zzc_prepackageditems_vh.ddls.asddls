/********** GENERATED on 03.10.2023 at 02:10:34 by CB9980000480**************/
 @OData.entitySet.name: 'ZC_PREPACKAGEDITEMS_VH' 
 @OData.entityType.name: 'ZC_PREPACKAGEDITEMS_VHType' 
 define root abstract entity ZZC_PREPACKAGEDITEMS_VH { 
 key PackageId : abap.int1 ; 
 @Odata.property.valueControl: 'PackageName_vc' 
 PackageName : abap.char( 40 ) ; 
 PackageName_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 
 } 
