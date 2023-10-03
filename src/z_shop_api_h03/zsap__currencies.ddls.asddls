/********** GENERATED on 03.10.2023 at 02:10:35 by CB9980000480**************/
 @OData.entitySet.name: 'SAP__Currencies' 
 @OData.entityType.name: 'SAP__Currency' 
 define root abstract entity ZSAP__CURRENCIES { 
 key CurrencyCode : abap.char( 5 ) ; 
 ISOCode : abap.char( 3 ) ; 
 @OData.property.name: 'Text' 
 Text1 : abap.char( 15 ) ; 
 DecimalPlaces : abap.int1 ; 
 
 } 
