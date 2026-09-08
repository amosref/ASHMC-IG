Extension: ExtOrderType
Id: ext-order-type
Title: "Ext: Order Type"
Description: "Classification of the medication order scheduling type: sos (as-needed), once (single), periodically (recurring), cont (continuous)"
* ^url = "http://fhir.ashmc.co.il/StructureDefinition/ext-order-type"
* ^status = #active
* ^context[0].type = #element
* ^context[0].expression = "MedicationRequest"
* insert ConformanceMetadata
* value[x] 1..1
* value[x] only code
* valueCode from MedOrderTypeVS (required)
