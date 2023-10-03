/********** GENERATED on 03.10.2023 at 02:10:33 by CB9980000480**************/
 @OData.entitySet.name: 'SAP__SignatureSet' 
 @OData.entityType.name: 'SAP__Signature' 
 define root abstract entity ZSAP__SIGNATURESET { 
 key Id : sysuuid_x16 ; 
 DoSign : abap_boolean ; 
 Reason : abap.char( 256 ) ; 
 
 } 
