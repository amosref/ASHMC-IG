Instance: AshdodMedPrescriptionCmlExample
InstanceOf: AsutaAshdodMedicationRequestPrescriptionCml
Usage: #example
Title: "Asuta Ashdod Medication Prescription CML"
Description: "Valid example of a discharge prescription at Asuta Ashdod via CML interface (Amoxicillin 500mg PO TID for 7 days)"

* id = "CML.MED.PRESC.1234567"

* meta.security[HDP].system = "http://fhir.health.gov.il/cs/il-hdp-information-buckets"
* meta.security[HDP].code = #medications
* meta.security[HDP].display = "תרופות"

* extension[ResourceRoleContext].extension[role].url = "role"
* extension[ResourceRoleContext].extension[role].valueCodeableConcept = http://fhir.health.gov.il/cs/il-core-resource-role-context#DS "Discharge"

* identifier.system = "http://fhir.ashmc.co.il/identifier/prescription-drug-cml"
* identifier.value = "PRESC-DRUG-1234567"
* identifier.type.coding.system = "http://fhir.health.gov.il/cs/il-core-identifier-type"
* identifier.type.coding.code = #strong-id
* identifier.type.coding.display = "Strong Identifier"

* status = #active
* intent = #order

* category[il-core].coding.system = "http://fhir.health.gov.il/cs/il-core-medication-request-category"
* category[il-core].coding.code = #discharge
* category[il-core].coding.display = "Discharge"

* groupIdentifier.system = "http://fhir.ashmc.co.il/identifier/prescription-cml"
* groupIdentifier.value = "PRESC-20250315-001"

* medicationCodeableConcept.coding[cml].system = "http://fhir.ashmc.co.il/cs/cml-med-code"
* medicationCodeableConcept.coding[cml].code = #CML-AMOX-500
* medicationCodeableConcept.coding[cml].display = "Amoxicillin 500mg capsules"

* medicationCodeableConcept.coding[bi-id].system = "http://fhir.ashmc.co.il/cs/bi-med-code"
* medicationCodeableConcept.coding[bi-id].code = #BI-11223
* medicationCodeableConcept.coding[bi-id].display = "Amoxicillin"

* medicationCodeableConcept.coding[snomed].system = "http://snomed.info/sct"
* medicationCodeableConcept.coding[snomed].code = #372687004
* medicationCodeableConcept.coding[snomed].display = "Amoxicillin"

* medicationCodeableConcept.coding[atc].system = "http://fhir.ashmc.co.il/cs/local-atc-med-code"
* medicationCodeableConcept.coding[atc].code = #J01CA04

* medicationCodeableConcept.text = "Amoxicillin 500mg capsules"

* subject = Reference(Patient/ashmc-patient-001)

* encounter = Reference(Encounter/AshdodEncounterSubExample)

* authoredOn = "2025-03-15T14:00:00+02:00"

* requester = Reference(Practitioner/ashmc-dr-cohen)

* courseOfTherapyType.coding.system = "http://terminology.hl7.org/CodeSystem/medicationrequest-course-of-therapy"
* courseOfTherapyType.coding.code = #acute
* courseOfTherapyType.coding.display = "Short course (acute) therapy"

* dosageInstruction.text = "Amoxicillin 500mg capsule orally three times daily for 7 days"

* dosageInstruction.additionalInstruction.coding[way-of-giving].system = "http://fhir.ashmc.co.il/cs/way-of-giving-med"
* dosageInstruction.additionalInstruction.coding[way-of-giving].code = #swallow

* dosageInstruction.timing.repeat.boundsDuration.value = 7
* dosageInstruction.timing.repeat.boundsDuration.unit = "d"
* dosageInstruction.timing.repeat.boundsDuration.system = "http://unitsofmeasure.org"
* dosageInstruction.timing.repeat.boundsDuration.code = #d
* dosageInstruction.timing.repeat.frequency = 3
* dosageInstruction.timing.repeat.period = 1
* dosageInstruction.timing.repeat.periodUnit = #d

* dosageInstruction.route.coding.system = "http://snomed.info/sct"
* dosageInstruction.route.coding.code = #26643006
* dosageInstruction.route.coding.display = "Oral route"

* dosageInstruction.doseAndRate.doseQuantity.value = 500
* dosageInstruction.doseAndRate.doseQuantity.unit = "mg"
* dosageInstruction.doseAndRate.doseQuantity.system = "http://unitsofmeasure.org"
* dosageInstruction.doseAndRate.doseQuantity.code = #mg

* dispenseRequest.validityPeriod.start = "2025-03-15"
* dispenseRequest.validityPeriod.end = "2025-04-14"
