Instance: AshdodMedHomeStatementCmlExample
InstanceOf: AsutaAshdodMedHomeStatementCml
Usage: #example
Title: "Asuta Ashdod Home Medication Statement CML"
Description: "Valid example of a home medication statement at Asuta Ashdod via CML interface"

* meta.security[HDP].system = "http://fhir.health.gov.il/cs/il-hdp-information-buckets"
* meta.security[HDP].code = #medications
* meta.security[HDP].display = "תרופות"

* extension[courseOfTherapyType].url = "http://fhir.health.gov.il/StructureDefinition/ext-medication-course-of-therapy-type"
* extension[courseOfTherapyType].valueCodeableConcept.coding.system = "http://terminology.hl7.org/CodeSystem/medicationrequest-course-of-therapy"
* extension[courseOfTherapyType].valueCodeableConcept.coding.code = #acute
* extension[courseOfTherapyType].valueCodeableConcept.coding.display = "Short course (acute) therapy"

* identifier.system = "http://fhir.ashmc.co.il/identifier/med-cml-home"
* identifier.value = "MED.CML.HOME.987001"
* identifier.type.coding.system = "http://fhir.health.gov.il/cs/il-core-identifier-type"
* identifier.type.coding.code = #strong-id
* identifier.type.coding.display = "Strong Identifier"

* status = #active

* medicationCodeableConcept.coding[cml].system = "http://fhir.ashmc.co.il/cs/cml-med-code"
* medicationCodeableConcept.coding[cml].code = #12345
* medicationCodeableConcept.coding[cml].display = "Amoxicillin 500mg"

* medicationCodeableConcept.coding[SNOMED].system = "http://snomed.info/sct"
* medicationCodeableConcept.coding[SNOMED].code = #372687004
* medicationCodeableConcept.coding[SNOMED].display = "Amoxicillin (substance)"

* medicationCodeableConcept.text = "Amoxicillin 500mg"

* subject = Reference(Patient/ashmc-patient-001)

* context = Reference(Encounter/AshdodEncounterSubExample)

* effectiveDateTime = "2025-03-16T08:00:00+02:00"

* dateAsserted = "2025-03-16"

* informationSource = Reference(Organization/HOSP.100)

* dosage.text = "500mg three times daily"
* dosage.timing.repeat.frequency = 3
* dosage.timing.repeat.period = 1
* dosage.timing.repeat.periodUnit = #d
* dosage.route.coding.system = "http://snomed.info/sct"
* dosage.route.coding.code = #26643006
* dosage.route.coding.display = "Oral route"
* dosage.doseAndRate.doseQuantity.value = 500
* dosage.doseAndRate.doseQuantity.unit = "mg"
* dosage.doseAndRate.doseQuantity.system = "http://unitsofmeasure.org"
* dosage.doseAndRate.doseQuantity.code = #mg
