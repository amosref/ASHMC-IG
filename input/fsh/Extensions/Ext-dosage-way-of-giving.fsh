Extension: DosageWayOfGiving
Id: dosageWayOfGiving
Title: "Ext: Dosage Way Of Giving"
Description: "Local way-of-giving classification for a dosage instruction, preserving the source system's raw administration classification (אופן נטילה)"
* ^url = "http://fhir.ashmc.co.il/StructureDefinition/dosageWayOfGiving"
* ^status = #active
* ^context[0].type = #element
* ^context[0].expression = "Dosage"
* insert ConformanceMetadata
* value[x] 1..1
* value[x] only CodeableConcept
* valueCodeableConcept.coding 1..1
* valueCodeableConcept.coding.system 1..1
* valueCodeableConcept.coding.system = "http://fhir.ashmc.co.il/cs/wayOfGiving" (exactly)
* valueCodeableConcept.coding.code 1..1
* valueCodeableConcept.coding.display 0..1
