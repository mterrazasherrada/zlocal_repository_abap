/********** GENERATED on 03.10.2023 at 02:10:34 by CB9980000480**************/
 @OData.entitySet.name: 'SAP__ValueHelpSet' 
 @OData.entityType.name: 'SAP__ValueHelp' 
 define root abstract entity ZSAP__VALUEHELPSET { 
 key VALUEHELP : abap.string( 0 ) ; 
 FIELD_VALUE : abap.char( 10 ) ; 
 @Odata.property.valueControl: 'DESCRIPTION_vc' 
 DESCRIPTION : abap.string( 0 ) ; 
 DESCRIPTION_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 
 } 
