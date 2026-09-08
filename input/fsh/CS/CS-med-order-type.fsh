CodeSystem: MedOrderType
Id: med-order-type
Title: "Medication Order Type"
Description: "Classification codes for medication order scheduling types used in the CML interface"
* ^url = "http://fhir.ashmc.co.il/cs/med-order-type"
* ^status = #active
* ^caseSensitive = true
* ^experimental = false
* ^content = #complete
* #sos "SOS" "As-needed administration"
* #once "Once" "Single one-time administration"
* #periodically "Periodically" "Recurring administration on a fixed schedule"
* #cont "Continuous" "Continuous uninterrupted administration"
* insert ConformanceMetadata
