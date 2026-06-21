Profile: AsutaAshdodMedChronicStatementCml
Parent: ILHDPMedicationStatement
Id: med-chronic-statement-cml
Title: "Asuta Ashdod Chronic Medication Statement CML Profile"
Description: "Asuta Ashdod chronic medication statement profile for the CML interface"

* ^url = "http://fhir.ashmc.co.il/StructureDefinition/med-chronic-statement-cml"
* ^status = #draft

* extension[courseOfTherapyType].valueCodeableConcept = http://fhir.health.gov.il/cs/il-core-medication-course-of-therapy-type#chronic "Chronic therapy"

* identifier.system = "http://fhir.ashmc.co.il/identifier/med-cml-chronic" (exactly)

* medicationCodeableConcept.coding ^slicing.discriminator.type = #value
* medicationCodeableConcept.coding ^slicing.discriminator.path = "system"
* medicationCodeableConcept.coding ^slicing.rules = #open
* medicationCodeableConcept.coding contains
    cml 0..1 and
    internal 0..1 and
    SNOMED 0..1 and
    atc 0..1

* medicationCodeableConcept.coding[cml].system 1..1
* medicationCodeableConcept.coding[cml].system = "http://fhir.ashmc.co.il/cs/cml-med-code" (exactly)
* medicationCodeableConcept.coding[cml].code 0..1
* medicationCodeableConcept.coding[cml].display 0..1

* medicationCodeableConcept.coding[internal].system 1..1
* medicationCodeableConcept.coding[internal].system = "http://fhir.ashmc.co.il/cs/internal-med-code" (exactly)
* medicationCodeableConcept.coding[internal].code 1..1
* medicationCodeableConcept.coding[internal].display 1..1

* medicationCodeableConcept.coding[SNOMED].system 1..1
* medicationCodeableConcept.coding[SNOMED].system = "http://snomed.info/sct" (exactly)
* medicationCodeableConcept.coding[SNOMED].code 1..1
* medicationCodeableConcept.coding[SNOMED].display 1..1

* medicationCodeableConcept.coding[atc].system 1..1
* medicationCodeableConcept.coding[atc].system = "http://fhir.ashmc.co.il/cs/local-atc-med-code" (exactly)
* medicationCodeableConcept.coding[atc].code 0..1

* insert ConformanceMetadata
