Instance: AshdodMedOrderCmlExample
InstanceOf: AsutaAshdodMedicationRequestCml
Usage: #example
Title: "Asuta Ashdod Medication Order CML"
Description: "Valid example of an inpatient medication order at Asuta Ashdod via CML interface (Ceftriaxone 2g IV once daily)"

* id = "CML.MED.ORDER.5479776"

* meta.security[HDP].system = "http://fhir.health.gov.il/cs/il-hdp-information-buckets"
* meta.security[HDP].code = #medications
* meta.security[HDP].display = "תרופות"

// Resource role context - hospitalization phase
* extension[ResourceRoleContext].extension[role].url = "role"
* extension[ResourceRoleContext].extension[role].valueCodeableConcept = http://fhir.health.gov.il/cs/il-core-resource-role-context#HO "Hospitalization"

// Confirming practitioner
* extension[confirmedBy].valueReference = Reference(Practitioner/ashmc-dr-cohen)

// Order type: periodically-dosed
* extension[orderType].valueCode = #periodically

// Recorded time
* extension[recorded].valueDateTime = "2025-03-15T10:00:00+02:00"

// Identifier
* identifier.system = "http://fhir.ashmc.co.il/identifier/med-order-cml"
* identifier.value = "5479776-768130"
* identifier.type.coding.system = "http://fhir.health.gov.il/cs/il-core-identifier-type"
* identifier.type.coding.code = #strong-id
* identifier.type.coding.display = "Strong Identifier"

* status = #active
* intent = #order

// Category: inpatient
* category[il-core].coding.system = "http://fhir.health.gov.il/cs/il-core-medication-request-category"
* category[il-core].coding.code = #inpatient
* category[il-core].coding.display = "Inpatient"

// Medication: Ceftriaxone 2g
* medicationCodeableConcept.coding[cml].system = "http://fhir.ashmc.co.il/cs/cml-med-code"
* medicationCodeableConcept.coding[cml].code = #CML-CEFT-2G
* medicationCodeableConcept.coding[cml].display = "Ceftriaxone 2g"

* medicationCodeableConcept.coding[bi-id].system = "http://fhir.ashmc.co.il/cs/internal-med-code"
* medicationCodeableConcept.coding[bi-id].code = #BI-98765
* medicationCodeableConcept.coding[bi-id].display = "Ceftriaxone"

* medicationCodeableConcept.coding[snomed].system = "http://snomed.info/sct"
* medicationCodeableConcept.coding[snomed].code = #372670001
* medicationCodeableConcept.coding[snomed].display = "Ceftriaxone"

* medicationCodeableConcept.text = "Ceftriaxone 2g IV"

* subject = Reference(Patient/ashmc-patient-001)

* encounter = Reference(Encounter/AshdodEncounterSubExample)

* authoredOn = "2025-03-15T10:00:00+02:00"

* requester = Reference(Practitioner/ashmc-dr-cohen)

// Course of therapy: acute (standard coding) + local CML coding
* courseOfTherapyType.coding[0].system = "http://terminology.hl7.org/CodeSystem/medicationrequest-course-of-therapy"
* courseOfTherapyType.coding[0].code = #acute
* courseOfTherapyType.coding[0].display = "Short course (acute) therapy"
* courseOfTherapyType.coding[cml-order-type].system = "http://fhir.dgmc.health.gov.il/cs/cml-order-type"
* courseOfTherapyType.coding[cml-order-type].code = #1
* courseOfTherapyType.coding[cml-order-type].display = "Periodically"
* courseOfTherapyType.coding[cml-order-type].userSelected = true

// Dosage instruction
* dosageInstruction.text = "Ceftriaxone 2g IV once daily"
* dosageInstruction.timing.repeat.frequency = 1
* dosageInstruction.timing.repeat.period = 1
* dosageInstruction.timing.repeat.periodUnit = #d
* dosageInstruction.timing.repeat.timeOfDay = "08:00:00"
* dosageInstruction.extension[wayOfGiving].valueCodeableConcept.coding.system = "http://fhir.ashmc.co.il/cs/wayOfGiving"
* dosageInstruction.extension[wayOfGiving].valueCodeableConcept.coding.code = #LOCAL-CODE

* dosageInstruction.route.coding.system = "http://snomed.info/sct"
* dosageInstruction.route.coding.code = #47625008
* dosageInstruction.route.coding.display = "Intravenous route"
* dosageInstruction.method.coding.system = "http://snomed.info/sct"
* dosageInstruction.method.coding.code = #422145002
* dosageInstruction.method.coding.display = "Inject"
* dosageInstruction.doseAndRate.doseQuantity.value = 2
* dosageInstruction.doseAndRate.doseQuantity.unit = "g"
* dosageInstruction.doseAndRate.doseQuantity.system = "http://unitsofmeasure.org"
* dosageInstruction.doseAndRate.doseQuantity.code = #g
