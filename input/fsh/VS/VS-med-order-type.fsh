ValueSet: MedOrderTypeVS
Id: med-order-type-vs
Title: "Medication Order Type"
Description: "Allowed scheduling type codes for extension[orderType] on MedicationRequest"
* ^url = "http://fhir.ashmc.co.il/ValueSet/med-order-type"
* ^status = #active
* ^experimental = false
* include codes from system MedOrderType
* insert ConformanceMetadata
