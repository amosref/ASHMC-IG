Extension: ExtConfirmedBy
Id: ext-confirmed-by
Title: "Ext: Confirmed By"
Description: "References the practitioner who authorized/confirmed the medication order (מאשר על ידי)"
* ^url = "http://fhir.ashmc.co.il/StructureDefinition/ext-confirmed-by"
* ^status = #active
* ^context[0].type = #element
* ^context[0].expression = "MedicationRequest"
* insert ConformanceMetadata
* value[x] 1..1
* value[x] only Reference(Practitioner)
