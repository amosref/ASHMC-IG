Profile: AsutaAshdodEncounterSubMv
Parent: ILHDPEncounterInpatientCareSegment
Id: asuta-ashdod-encounter-sub-mv
Title: "Asuta Ashdod Encounter Sub MV Profile"
Description: "Asuta Ashdod inpatient care segment encounter profile for the MV interface"

* ^url = "http://fhir.ashmc.co.il/StructureDefinition/encounter-sub-mv"
* ^status = #draft

* identifier.system = "http://fhir.ashmc.co.il/identifier/mv-unit-id" (exactly)
* identifier.type 1..1
* identifier.type.coding 1..1
* identifier.type.coding.system = "http://fhir.health.gov.il/cs/il-core-identifier-type" (exactly)
* identifier.type.coding.code = #strong-id (exactly)
* identifier.type.coding.display = "Strong Identifier" (exactly)
* class.system = "http://terminology.hl7.org/CodeSystem/v3-ActCode" (exactly)
* type[inpatient-care-segment].coding.system = "http://fhir.health.gov.il/cs/il-core-encounter-type" (exactly)
* type[inpatient-care-segment].coding.code = #inpatient-care-segment-hdp (exactly)
* participant[primary-performer].type.coding.system = "http://terminology.hl7.org/CodeSystem/v3-ParticipationType" (exactly)
* participant[primary-performer].type.coding.code = #PPRF (exactly)
* participant[primary-performer].type.coding.display = "primary performer" (exactly)
* location[nursing-unit].physicalType.coding.system = "http://fhir.health.gov.il/cs/il-core-location-physical-type" (exactly)
* location[nursing-unit].physicalType.coding.code = #hospital-nursing-unit (exactly)
* location[nursing-unit].physicalType.coding.display = "Hospital nursing unit" (exactly)
* serviceProvider.identifier.system = "http://fhir.ashmc.co.il/identifier/mv-unit-id" (exactly)
* serviceProvider.identifier.value 0..1
* insert ConformanceMetadata
