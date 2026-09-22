Instance: AshdodCocktailMedicationCmlExample
InstanceOf: Medication
Usage: #inline

* id = "Cocktail"

* identifier.system = "http://fhir.ashmc.co.il/identifier/cocktail-order-cml"
* identifier.value = "CML.COCKTAIL.ORDER.5479777"

* code.text = "SOL ROPIVACAINE 200MG/100ML NAROPIN 10 cc(ml) + INJ FENTANYL 0.1MG/2ML 20 mg"

* ingredient[0].itemCodeableConcept.coding[0].system = "http://fhir.ashmc.co.il/cs/cml-med-code"
* ingredient[0].itemCodeableConcept.coding[0].code = #LOCAL-CODE
* ingredient[0].itemCodeableConcept.coding[+].system = "http://snomed.info/sct"
* ingredient[0].itemCodeableConcept.coding[=].code = #386969005
* ingredient[0].itemCodeableConcept.coding[=].display = "Ropivacaine"
* ingredient[0].itemCodeableConcept.text = "Ropivacaine 200mg/100mL (Naropin)"
* ingredient[0].strength.numerator.value = 200
* ingredient[0].strength.numerator.unit = "mg"
* ingredient[0].strength.numerator.system = "http://unitsofmeasure.org"
* ingredient[0].strength.numerator.code = #mg
* ingredient[0].strength.denominator.value = 1
* ingredient[0].strength.denominator.unit = "Hour"
* ingredient[0].strength.denominator.system = "http://unitsofmeasure.org"
* ingredient[0].strength.denominator.code = #h

* ingredient[1].itemCodeableConcept.coding[0].system = "http://fhir.ashmc.co.il/cs/cml-med-code"
* ingredient[1].itemCodeableConcept.coding[0].code = #LOCAL-CODE
* ingredient[1].itemCodeableConcept.coding[+].system = "http://snomed.info/sct"
* ingredient[1].itemCodeableConcept.coding[=].code = #373492002
* ingredient[1].itemCodeableConcept.coding[=].display = "Fentanyl"
* ingredient[1].itemCodeableConcept.text = "Fentanyl 0.1mg/2mL"
* ingredient[1].strength.numerator.value = 20
* ingredient[1].strength.numerator.unit = "mcg"
* ingredient[1].strength.numerator.system = "http://unitsofmeasure.org"
* ingredient[1].strength.numerator.code = #ug
* ingredient[1].strength.denominator.value = 1
* ingredient[1].strength.denominator.unit = "Hour"
* ingredient[1].strength.denominator.system = "http://unitsofmeasure.org"
* ingredient[1].strength.denominator.code = #h

Instance: AshdodMedOrderCocktailCmlExample
InstanceOf: AsutaAshdodMedicationRequestCml
Usage: #example
Title: "Asuta Ashdod Medication Order CML (Cocktail)"
Description: "Valid example of a compound (cocktail) epidural medication order at Asuta Ashdod via CML interface, combining Ropivacaine and Fentanyl in a single contained Medication resource"

* id = "CML.MED.ORDER.5479777"

* meta.security[HDP].system = "http://fhir.health.gov.il/cs/il-hdp-information-buckets"
* meta.security[HDP].code = #medications
* meta.security[HDP].display = "תרופות"

* contained[0] = AshdodCocktailMedicationCmlExample

// Resource role context - hospitalization phase
* extension[ResourceRoleContext].extension[role].url = "role"
* extension[ResourceRoleContext].extension[role].valueCodeableConcept = http://fhir.health.gov.il/cs/il-core-resource-role-context#HO "Hospitalization"

// Confirming practitioner
* extension[confirmedBy].valueReference = Reference(Practitioner/ashmc-dr-cohen)

// Order type: once (single epidural bolus/infusion setup)
* extension[orderType].valueCode = #once

// Protocol name
* extension[protocolName].valueString = "Epidural analgesia"

// Recorded time
* extension[recorded].valueDateTime = "2025-03-16T11:00:00+02:00"

// Identifier
* identifier.system = "http://fhir.ashmc.co.il/identifier/med-order-cml"
* identifier.value = "5479777-768131"
* identifier.type.coding.system = "http://fhir.health.gov.il/cs/il-core-identifier-type"
* identifier.type.coding.code = #strong-id
* identifier.type.coding.display = "Strong Identifier"

* status = #active
* intent = #order

// Category: outpatient (day-surgery epidural)
* category[il-core].coding.system = "http://fhir.health.gov.il/cs/il-core-medication-request-category"
* category[il-core].coding.code = #outpatient
* category[il-core].coding.display = "Outpatient"

// Medication: reference to the contained Cocktail resource
* medicationReference.reference = "#Cocktail"

* subject = Reference(Patient/ashmc-patient-001)

* encounter = Reference(Encounter/AshdodEncounterSubExample)

* authoredOn = "2025-03-16T11:00:00+02:00"

* requester = Reference(Practitioner/ashmc-dr-cohen)

// Course of therapy: acute (standard coding) + local CML coding
* courseOfTherapyType.coding[0].system = "http://terminology.hl7.org/CodeSystem/medicationrequest-course-of-therapy"
* courseOfTherapyType.coding[0].code = #acute
* courseOfTherapyType.coding[0].display = "Short course (acute) therapy"
* courseOfTherapyType.coding[cml-order-type].system = "http://fhir.dgmc.health.gov.il/cs/cml-order-type"
* courseOfTherapyType.coding[cml-order-type].code = #2
* courseOfTherapyType.coding[cml-order-type].display = "Once"
* courseOfTherapyType.coding[cml-order-type].userSelected = true

// Dosage instruction
* dosageInstruction.text = "Epidural Ropivacaine/Fentanyl cocktail, continuous infusion"

* dosageInstruction.extension[wayOfGiving].valueCodeableConcept.coding.system = "http://fhir.ashmc.co.il/cs/wayOfGiving"
* dosageInstruction.extension[wayOfGiving].valueCodeableConcept.coding.code = #LOCAL-CODE

* dosageInstruction.route.coding.system = "http://snomed.info/sct"
* dosageInstruction.route.coding.code = #404820008
* dosageInstruction.route.coding.display = "Epidural route"

* dosageInstruction.method.coding.system = "http://snomed.info/sct"
* dosageInstruction.method.coding.code = #422145002
* dosageInstruction.method.coding.display = "Inject"

* dosageInstruction.doseAndRate.rateQuantity.value = 8
* dosageInstruction.doseAndRate.rateQuantity.unit = "cc/hour"
* dosageInstruction.doseAndRate.rateQuantity.system = "http://unitsofmeasure.org"
* dosageInstruction.doseAndRate.rateQuantity.code = #mL/h
