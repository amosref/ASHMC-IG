Profile: AsutaAshdodEncounterSubCml
Parent: ILHDPEncounterInpatientCareSegment
Id: asuta-ashdod-encounter-sub-cml
Title: "Asuta Ashdod Encounter Sub CML Profile"
Description: "Asuta Ashdod inpatient care segment encounter profile for the CML interface"

* ^url = "http://fhir.ashmc.co.il/StructureDefinition/encounter-sub-cml"
* ^status = #draft

* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "type"
* identifier ^slicing.rules = #open
* identifier contains
    adm 1..1 and
    adm-local 1..1 and
    followup 0..1 and
    release 0..1

* identifier[adm] ^alias = "מזהה ביקור בקבלה - חזק"
* identifier[adm].system = "http://fhir.ashmc.co.il/identifier/medical-record-cml" (exactly)
* identifier[adm].type 1..1
* identifier[adm].type ^patternCodeableConcept.coding[0] = http://fhir.health.gov.il/cs/il-core-identifier-type#strong-id "Strong Identifier"
* identifier[adm].type ^patternCodeableConcept.coding[1] = http://fhir.ashmc.co.il/cs/encounter-local-identifier-type#adm-strong "Strong Admission Identifier"
* identifier[adm].type.coding ^alias = "סוג מזהה - חזק"

* identifier[followup] ^alias = "מזהה ביקור באשפוז"
* identifier[followup].system = "http://fhir.ashmc.co.il/identifier/medical-record-cml" (exactly)
* identifier[followup].type 1..1
* identifier[followup].type = http://fhir.ashmc.co.il/cs/encounter-local-identifier-type#followup "Followup"
* identifier[followup].type.coding ^alias = "סוג מזהה - אשפוז"

* identifier[release] ^alias = "מזהה ביקור בשחרור מבית החולים"
* identifier[release].system = "http://fhir.ashmc.co.il/identifier/medical-record-cml" (exactly)
* identifier[release].type 1..1
* identifier[release].type = http://fhir.ashmc.co.il/cs/encounter-local-identifier-type#release "Release"
* identifier[release].type.coding ^alias = "סוג מזהה - שחרור"

* class.system = "http://terminology.hl7.org/CodeSystem/v3-ActCode" (exactly)
* type[inpatient-care-segment].coding.system = "http://fhir.health.gov.il/cs/il-core-encounter-type" (exactly)
* type[inpatient-care-segment].coding.code = #inpatient-care-segment-hdp (exactly)
* subject.identifier.system 1..1
* subject.identifier.system = "http://fhir.ashmc.co.il/identifier/pat-id-tafnit" (exactly)
* subject.identifier.value 1..1
* participant[primary-performer].type.coding.system = "http://terminology.hl7.org/CodeSystem/v3-ParticipationType" (exactly)
* participant[primary-performer].type.coding.code = #PPRF (exactly)
* participant[primary-performer].type.coding.display = "primary performer" (exactly)
* location[nursing-unit].physicalType.coding.system = "http://fhir.health.gov.il/cs/il-core-location-physical-type" (exactly)
* location[nursing-unit].physicalType.coding.code = #hospital-nursing-unit (exactly)
* location[nursing-unit].physicalType.coding.display = "Hospital nursing unit" (exactly)
* serviceProvider.identifier.system = "http://fhir.ashmc.co.il/identifier/cml-unit-id" (exactly)
* serviceProvider.identifier.value 0..1
* insert ConformanceMetadata
