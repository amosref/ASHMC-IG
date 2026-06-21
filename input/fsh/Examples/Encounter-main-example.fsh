Instance: AshdodEncounterMainExample
InstanceOf: AsutaAshdodEncounterMain
Usage: #example
Title: "Asuta Ashdod Main Encounter Example"
Description: "Valid example of a top-level hospitalization encounter at Asuta Ashdod"

* meta.security[HDP].system = "http://fhir.health.gov.il/cs/il-hdp-information-buckets"
* meta.security[HDP].code = #encounterInformation
* meta.security[HDP].display = "ביקורים"

* extension[modeOfArrival].url = "http://hl7.org/fhir/StructureDefinition/encounter-modeOfArrival"
* extension[modeOfArrival].valueCoding.system = "http://fhir.health.gov.il/cs/patient-mode-of-arrival-moh"
* extension[modeOfArrival].valueCoding.code = #10
* extension[modeOfArrival].valueCoding.display = "אמבולנס רגיל"

* extension[paying-entity].url = "http://fhir.health.gov.il/StructureDefinition/ext-encounter-paying-entity"
* extension[paying-entity].valueCodeableConcept.coding.system = "http://fhir.ashmc.co.il/cs/enc-paying-entity"
* extension[paying-entity].valueCodeableConcept.coding.code = #CLALIT
* extension[paying-entity].valueCodeableConcept.coding.display = "קופת חולים כללית"

* identifier.system = "http://fhir.ashmc.co.il/identifier/tafnit-admission-no"
* identifier.value = "ADM-2025-001234"
* identifier.type.coding.system = "http://fhir.health.gov.il/cs/il-core-identifier-type"
* identifier.type.coding.code = #strong-id
* identifier.type.coding.display = "Strong Identifier"

* status = #in-progress

* class.system = "http://terminology.hl7.org/CodeSystem/v3-ActCode"
* class.code = #IMP
* class.display = "inpatient encounter"

* type[hospitalization].coding.system = "http://fhir.health.gov.il/cs/il-core-encounter-type"
* type[hospitalization].coding.code = #hospitalization-hdp

* serviceType.coding.system = "http://snomed.info/sct"
* serviceType.coding.code = #224891009
* serviceType.coding.display = "Healthcare services (qualifier value)"

* subject = Reference(Patient/ashmc-patient-001)

* period.start = "2025-03-15T08:30:00+02:00"

* reasonCode[moh-reason-code].coding.system = "http://fhir.health.gov.il/cs/patient-visit-reason-moh"
* reasonCode[moh-reason-code].coding.code = #4
* reasonCode[moh-reason-code].coding.display = "פינוי מד\"א"

* reasonCode[ashmc].coding.system = "http://fhir.ashmc.co.il/cs/visit-reason"
* reasonCode[ashmc].coding.code = #4
* reasonCode[ashmc].coding.display = "פינוי מד\"א"

* serviceProvider.reference = "Organization/HOSP.100"
