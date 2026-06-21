Instance: AshdodMedChronicStatementMvExample
InstanceOf: AsutaAshdodMedChronicStatementMv
Usage: #example
Title: "Asuta Ashdod Chronic Medication Statement MV"
Description: "Valid example of a chronic medication statement at Asuta Ashdod via MV interface"

* meta.security[HDP].system = "http://fhir.health.gov.il/cs/il-hdp-information-buckets"
* meta.security[HDP].code = #medications
* meta.security[HDP].display = "תרופות"

* extension[courseOfTherapyType].url = "http://fhir.health.gov.il/StructureDefinition/ext-medication-course-of-therapy-type"
* extension[courseOfTherapyType].valueCodeableConcept.coding.system = "http://fhir.health.gov.il/cs/il-core-medication-course-of-therapy-type"
* extension[courseOfTherapyType].valueCodeableConcept.coding.code = #chronic
* extension[courseOfTherapyType].valueCodeableConcept.coding.display = "Chronic therapy"

* identifier.system = "http://fhir.ashmc.co.il/identifier/med-mv-chronic"
* identifier.value = "MED.MV.CHRONIC.321001"
* identifier.type.coding.system = "http://fhir.health.gov.il/cs/il-core-identifier-type"
* identifier.type.coding.code = #strong-id
* identifier.type.coding.display = "Strong Identifier"

* status = #active

* medicationCodeableConcept.text = "Lisinopril 10mg"

* subject = Reference(Patient/ashmc-patient-001)

* context = Reference(Encounter/AshdodEncounterSubMvExample)

* effectiveDateTime = "2025-03-15T08:00:00+02:00"

* dateAsserted = "2025-03-15"

* informationSource = Reference(Organization/HOSP.100)

* dosage.text = "10mg once daily"
* dosage.timing.repeat.frequency = 1
* dosage.timing.repeat.period = 1
* dosage.timing.repeat.periodUnit = #d
* dosage.route.coding.system = "http://snomed.info/sct"
* dosage.route.coding.code = #26643006
* dosage.route.coding.display = "Oral route"
* dosage.doseAndRate.doseQuantity.value = 10
* dosage.doseAndRate.doseQuantity.unit = "mg"
* dosage.doseAndRate.doseQuantity.system = "http://unitsofmeasure.org"
* dosage.doseAndRate.doseQuantity.code = #mg
