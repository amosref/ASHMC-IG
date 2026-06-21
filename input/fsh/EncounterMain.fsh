Profile: AsutaAshdodEncounterMain
Parent: ILHDPEncounterHospitalization
Id: asuta-ashdod-encounter-main
Title: "Asuta Ashdod Encounter Main Profile"
Description: "Asuta Ashdod top-level hospitalization encounter profile with local constraints"

* ^url = "http://fhir.ashmc.co.il/StructureDefinition/encounter-main"
* ^status = #draft

* extension[modeOfArrival].valueCoding.system = "http://fhir.health.gov.il/cs/patient-mode-of-arrival-moh" (exactly)
* identifier.system = "http://fhir.ashmc.co.il/identifier/tafnit-admission-no" (exactly)
* identifier.type ^alias = "חשוב למזהה החזק"
* identifier.type.coding 1..1
* identifier.type.coding.system = "http://fhir.health.gov.il/cs/il-core-identifier-type" (exactly)
* identifier.type.coding.code = #strong-id (exactly)
* identifier.type.coding.display = "Strong Identifier" (exactly)
* class.system = "http://terminology.hl7.org/CodeSystem/v3-ActCode" (exactly)
* type[hospitalization].coding.system = "http://fhir.health.gov.il/cs/il-core-encounter-type" (exactly)
* type[hospitalization].coding.code = #hospitalization-hdp (exactly)
* extension[paying-entity].valueCodeableConcept.coding.system = "http://fhir.ashmc.co.il/cs/enc-paying-entity" (exactly)
* serviceType.coding 1..*
* serviceType.coding.system = "http://snomed.info/sct" (exactly)
* serviceType.coding.code = #224891009 (exactly)
* serviceType.coding.display = "Healthcare services (qualifier value)" (exactly)
// * reasonCode[moh-reason-code].coding.system = "http://fhir.health.gov.il/cs/patient-visit-reason-moh" (exactly)
* reasonCode[moh-reason-code] ^patternCodeableConcept.coding.system = "http://fhir.health.gov.il/cs/patient-visit-reason-moh"
* reasonCode contains ashmc 0..*
* reasonCode[ashmc] ^patternCodeableConcept.coding.system = "http://fhir.ashmc.co.il/cs/visit-reason"
* reasonCode[ashmc].coding.display 0..1
* serviceProvider.reference = "Organization/HOSP.100" (exactly)
* insert ConformanceMetadata
