Profile: AsutaAshdodMedicationRequestPrescriptionCml
Parent: ILHDPMedicationRequest
Id: med-prescription-cml
Title: "Asuta Ashdod Medication Prescription CML Profile"
Description: "Asuta Ashdod medication prescription (MedicationRequest) profile for the CML interface, representing discharge prescriptions."

* ^url = "http://fhir.ashmc.co.il/StructureDefinition/med-prescription-cml"
* ^status = #draft

* extension contains
    $ext-resource-role-context named ResourceRoleContext 0..*

* identifier.system = "http://fhir.ashmc.co.il/identifier/prescription-drug-cml" (exactly)
* identifier.type 1..1
* identifier.type.coding 1..1
* identifier.type.coding.system = "http://fhir.health.gov.il/cs/il-core-identifier-type" (exactly)
* identifier.type.coding.code = #strong-id (exactly)
* identifier.type.coding.display = "Strong Identifier" (exactly)

* intent = #order

* category[il-core].coding.code = #discharge (exactly)
* category[il-core].coding.display = "Discharge" (exactly)

* encounter 1..1

* groupIdentifier 1..1
* groupIdentifier.system = "http://fhir.ashmc.co.il/identifier/prescription-cml" (exactly)
* groupIdentifier.value 1..1

* medicationCodeableConcept.coding ^slicing.discriminator.type = #value
* medicationCodeableConcept.coding ^slicing.discriminator.path = "system"
* medicationCodeableConcept.coding ^slicing.rules = #open
* medicationCodeableConcept.coding contains
    cml    1..1 and
    bi-id  0..1 and
    snomed 0..1 and
    atc    0..1

* medicationCodeableConcept.coding[cml].system 1..1
* medicationCodeableConcept.coding[cml].system = "http://fhir.ashmc.co.il/cs/cml-med-code" (exactly)
* medicationCodeableConcept.coding[cml].code 1..1
* medicationCodeableConcept.coding[cml].display 0..1

* medicationCodeableConcept.coding[bi-id].system 1..1
* medicationCodeableConcept.coding[bi-id].system = "http://fhir.ashmc.co.il/cs/bi-med-code" (exactly)
* medicationCodeableConcept.coding[bi-id].code 1..1
* medicationCodeableConcept.coding[bi-id].display 1..1

* medicationCodeableConcept.coding[snomed].system 1..1
* medicationCodeableConcept.coding[snomed].system = "http://snomed.info/sct" (exactly)
* medicationCodeableConcept.coding[snomed].code 0..1
* medicationCodeableConcept.coding[snomed].display 0..1

* medicationCodeableConcept.coding[atc].system 1..1
* medicationCodeableConcept.coding[atc].system = "http://fhir.ashmc.co.il/cs/local-atc-med-code" (exactly)
* medicationCodeableConcept.coding[atc].code 0..1

* courseOfTherapyType.coding.system = "http://terminology.hl7.org/CodeSystem/medicationrequest-course-of-therapy" (exactly)
* courseOfTherapyType.coding.code = #acute (exactly)
* courseOfTherapyType.coding.display = "Short course (acute) therapy" (exactly)

* dosageInstruction.additionalInstruction.coding ^slicing.discriminator.type = #value
* dosageInstruction.additionalInstruction.coding ^slicing.discriminator.path = "system"
* dosageInstruction.additionalInstruction.coding ^slicing.rules = #open
* dosageInstruction.additionalInstruction.coding contains way-of-giving 0..*
* dosageInstruction.additionalInstruction.coding[way-of-giving].system = $csWayOfGivingMed (exactly)
* dosageInstruction.additionalInstruction.coding[way-of-giving].code 1..1

* dosageInstruction.timing.repeat.boundsDuration.system = "http://unitsofmeasure.org" (exactly)

* dosageInstruction.site.coding.system = "http://snomed.info/sct" (exactly)
* dosageInstruction.route.coding.system = "http://snomed.info/sct" (exactly)
* dosageInstruction.method.coding.system = "http://snomed.info/sct" (exactly)

* dosageInstruction.doseAndRate.doseQuantity.system = "http://unitsofmeasure.org" (exactly)

* insert ConformanceMetadata
