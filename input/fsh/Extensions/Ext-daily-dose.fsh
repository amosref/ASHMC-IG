Extension: ExtDailyDose
Id: ext-daily-dose
Title: "Ext: Total Daily Dose"
Description: "Total daily dose quantity for medications where daily dose calculation applies (מנה יומית כוללת)"
* ^url = "http://fhir.ashmc.co.il/StructureDefinition/ext-daily-dose"
* ^status = #active
* ^context[0].type = #element
* ^context[0].expression = "MedicationRequest"
* insert ConformanceMetadata
* value[x] 1..1
* value[x] only Quantity
