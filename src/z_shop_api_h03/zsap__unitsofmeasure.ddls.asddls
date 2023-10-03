/********** GENERATED on 03.10.2023 at 02:10:35 by CB9980000480**************/
 @OData.entitySet.name: 'SAP__UnitsOfMeasure' 
 @OData.entityType.name: 'SAP__UnitOfMeasure' 
 define root abstract entity ZSAP__UNITSOFMEASURE { 
 key UnitCode : abap.char( 3 ) ; 
 ISOCode : abap.char( 3 ) ; 
 ExternalCode : abap.char( 3 ) ; 
 @OData.property.name: 'Text' 
 Text1 : abap.char( 30 ) ; 
 @Odata.property.valueControl: 'DecimalPlaces_vc' 
 DecimalPlaces : abap.int2 ; 
 DecimalPlaces_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 
 } 
