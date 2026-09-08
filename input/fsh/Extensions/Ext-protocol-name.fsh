Extension: ExtProtocolName
Id: ext-protocol-name
Title: "Ext: Protocol Name"
Description: "Name of the clinical protocol associated with this medication order (שם הפרוטוקול הקליני)"
* ^url = "http://fhir.ashmc.co.il/StructureDefinition/ext-protocol-name"
* ^status = #active
* ^context[0].type = #element
* ^context[0].expression = "MedicationRequest"
* insert ConformanceMetadata
* value[x] 1..1
* value[x] only string
