Instance: AshdodEncounterSubMvExample
InstanceOf: AsutaAshdodEncounterSubMv
Usage: #example
Title: "Asuta Ashdod Sub Encounter MV"
Description: "Valid example of an inpatient care segment encounter at Asuta Ashdod via MV interface"

* meta.security[HDP].system = "http://fhir.health.gov.il/cs/il-hdp-information-buckets"
* meta.security[HDP].code = #encounterInformation
* meta.security[HDP].display = "ביקורים"

* identifier.system = "http://fhir.ashmc.co.il/identifier/mv-unit-id"
* identifier.value = "MR-MV-98765"
* identifier.type.coding.system = "http://fhir.health.gov.il/cs/il-core-identifier-type"
* identifier.type.coding.code = #strong-id
* identifier.type.coding.display = "Strong Identifier"

* status = #in-progress

* class.system = "http://terminology.hl7.org/CodeSystem/v3-ActCode"
* class.code = #IMP
* class.display = "inpatient encounter"

* type[inpatient-care-segment].coding.system = "http://fhir.health.gov.il/cs/il-core-encounter-type"
* type[inpatient-care-segment].coding.code = #inpatient-care-segment-hdp

* serviceType.coding.system = "http://snomed.info/sct"
* serviceType.coding.code = #394579002
* serviceType.coding.display = "Cardiology"

* subject = Reference(Patient/ashmc-patient-001)

* participant[primary-performer].type.coding.system = "http://terminology.hl7.org/CodeSystem/v3-ParticipationType"
* participant[primary-performer].type.coding.code = #PPRF
* participant[primary-performer].type.coding.display = "primary performer"
* participant[primary-performer].individual = Reference(Practitioner/ashmc-dr-cohen)

* period.start = "2025-03-15T09:00:00+02:00"

* reasonCode.coding.system = "http://snomed.info/sct"
* reasonCode.coding.code = #57054005
* reasonCode.coding.display = "Acute myocardial infarction"

* location[nursing-unit].location = Reference(Location/ashmc-ward-3a)
* location[nursing-unit].status = #active
* location[nursing-unit].physicalType.coding.system = "http://fhir.health.gov.il/cs/il-core-location-physical-type"
* location[nursing-unit].physicalType.coding.code = #hospital-nursing-unit
* location[nursing-unit].physicalType.coding.display = "Hospital nursing unit"

* serviceProvider.identifier.system = "http://fhir.ashmc.co.il/identifier/mv-unit-id"
* serviceProvider.identifier.value = "DEPT-CARDIO"

* partOf = Reference(Encounter/AshdodEncounterMainExample)
