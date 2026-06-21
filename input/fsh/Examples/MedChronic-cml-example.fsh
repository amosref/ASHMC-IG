Instance: AshdodMedChronicStatementCmlExample
InstanceOf: AsutaAshdodMedChronicStatementCml
Usage: #example
Title: "Asuta Ashdod Chronic Medication Statement CML"
Description: "Valid example of a chronic medication statement at Asuta Ashdod via CML interface"

* meta.security[HDP].system = "http://fhir.health.gov.il/cs/il-hdp-information-buckets"
* meta.security[HDP].code = #medications
* meta.security[HDP].display = "תרופות"

* extension[courseOfTherapyType].url = "http://fhir.health.gov.il/StructureDefinition/ext-medication-course-of-therapy-type"
* extension[courseOfTherapyType].valueCodeableConcept.coding.system = "http://fhir.health.gov.il/cs/il-core-medication-course-of-therapy-type"
* extension[courseOfTherapyType].valueCodeableConcept.coding.code = #chronic
* extension[courseOfTherapyType].valueCodeableConcept.coding.display = "Chronic therapy"

* identifier.system = "http://fhir.ashmc.co.il/identifier/med-cml-chronic"
* identifier.value = "MED.CML.CHRONIC.654001"
* identifier.type.coding.system = "http://fhir.health.gov.il/cs/il-core-identifier-type"
* identifier.type.coding.code = #strong-id
* identifier.type.coding.display = "Strong Identifier"

* status = #active

* medicationCodeableConcept.coding[cml].system = "http://fhir.ashmc.co.il/cs/cml-med-code"
* medicationCodeableConcept.coding[cml].code = #67890
* medicationCodeableConcept.coding[cml].display = "Metformin 850mg"

* medicationCodeableConcept.coding[SNOMED].system = "http://snomed.info/sct"
* medicationCodeableConcept.coding[SNOMED].code = #109081006
* medicationCodeableConcept.coding[SNOMED].display = "Metformin (substance)"

* medicationCodeableConcept.text = "Metformin 850mg"

* subject = Reference(Patient/ashmc-patient-001)

* context = Reference(Encounter/AshdodEncounterSubExample)

* effectiveDateTime = "2025-03-15T08:00:00+02:00"

* dateAsserted = "2025-03-15"

* informationSource = Reference(Organization/HOSP.100)

* dosage.text = "850mg twice daily with meals"
* dosage.timing.repeat.frequency = 2
* dosage.timing.repeat.period = 1
* dosage.timing.repeat.periodUnit = #d
* dosage.route.coding.system = "http://snomed.info/sct"
* dosage.route.coding.code = #26643006
* dosage.route.coding.display = "Oral route"
* dosage.doseAndRate.doseQuantity.value = 850
* dosage.doseAndRate.doseQuantity.unit = "mg"
* dosage.doseAndRate.doseQuantity.system = "http://unitsofmeasure.org"
* dosage.doseAndRate.doseQuantity.code = #mg
