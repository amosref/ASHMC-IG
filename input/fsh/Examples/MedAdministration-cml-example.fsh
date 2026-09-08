Instance: AshdodMedAdministrationCmlExample
InstanceOf: AsutaAshdodMedicationAdministrationCml
Usage: #example
Title: "Asuta Ashdod Medication Administration CML"
Description: "Valid example of an inpatient medication administration at Asuta Ashdod via CML interface (Ceftriaxone 2g IV)"

* id = "CML.MED.ADMINISTRATION.5479776"

* meta.security[HDP].system = "http://fhir.health.gov.il/cs/il-hdp-information-buckets"
* meta.security[HDP].code = #medications
* meta.security[HDP].display = "תרופות"

* extension[recorded].valueDateTime = "2025-03-15T14:30:00+02:00"

* identifier.system = "http://fhir.ashmc.co.il/identifier/med-administration-cml"
* identifier.value = "5479776-768130"
* identifier.type.coding.system = "http://fhir.health.gov.il/cs/il-core-identifier-type"
* identifier.type.coding.code = #strong-id
* identifier.type.coding.display = "Strong Identifier"

* status = #completed

* category.coding.system = "http://fhir.health.gov.il/cs/il-core-medication-request-category"
* category.coding.code = #inpatient
* category.coding.display = "Inpatient"

* medicationCodeableConcept.coding[cml].system = "http://fhir.ashmc.co.il/cs/cml-med-code"
* medicationCodeableConcept.coding[cml].code = #CML-CEFT-2G
* medicationCodeableConcept.coding[cml].display = "Ceftriaxone 2g"

* medicationCodeableConcept.coding[mv].system = "http://fhir.ashmc.co.il/cs/mv-med-code"
* medicationCodeableConcept.coding[mv].code = #MV-CEFT-2G

* medicationCodeableConcept.coding[snomed].system = "http://snomed.info/sct"
* medicationCodeableConcept.coding[snomed].code = #372670001

* medicationCodeableConcept.coding[atc].system = "http://fhir.ashmc.co.il/cs/local-atc-med-code"
* medicationCodeableConcept.coding[atc].code = #J01DD04

* medicationCodeableConcept.text = "Ceftriaxone 2g IV"

* subject = Reference(Patient/ashmc-patient-001)

* context = Reference(Encounter/AshdodEncounterSubExample)

* effectiveDateTime = "2025-03-15T14:00:00+02:00"

* performer[performer].function.coding.system = "http://terminology.hl7.org/CodeSystem/med-admin-perform-function"
* performer[performer].function.coding.code = #performer
* performer[performer].function.coding.display = "Performer"
* performer[performer].actor = Reference(Practitioner/ashmc-dr-cohen)

* performer[verifier].function.coding.system = "http://terminology.hl7.org/CodeSystem/med-admin-perform-function"
* performer[verifier].function.coding.code = #verifier
* performer[verifier].function.coding.display = "Verifier"
* performer[verifier].actor = Reference(Practitioner/ashmc-dr-cohen)

* request = Reference(MedicationRequest/CML.MED.ORDER.5479776)

* dosage.text = "Ceftriaxone 2g IV once daily"

* dosage.route.coding.system = "http://snomed.info/sct"
* dosage.route.coding.code = #47625008
* dosage.route.coding.display = "Intravenous route"

* dosage.method.coding.system = "http://snomed.info/sct"
* dosage.method.coding.code = #422145002
* dosage.method.coding.display = "Inject"

* dosage.dose.value = 2
* dosage.dose.unit = "g"
* dosage.dose.system = "http://unitsofmeasure.org"
* dosage.dose.code = #g

* dosage.rateRatio.numerator.value = 100
* dosage.rateRatio.numerator.unit = "cc"
* dosage.rateRatio.numerator.system = "http://unitsofmeasure.org"
* dosage.rateRatio.numerator.code = #mL
* dosage.rateRatio.denominator.value = 1
* dosage.rateRatio.denominator.unit = "hour"
* dosage.rateRatio.denominator.system = "http://unitsofmeasure.org"
* dosage.rateRatio.denominator.code = #h
