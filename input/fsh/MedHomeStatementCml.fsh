Profile: AsutaAshdodMedHomeStatementCml
Parent: ILHDPMedicationStatement
Id: med-home-statement-cml
Title: "Asuta Ashdod Home Medication Statement CML Profile"
Description: "Asuta Ashdod home medication statement profile for the CML interface"

* ^url = "http://fhir.ashmc.co.il/StructureDefinition/med-home-statement-cml"
* ^status = #draft

* extension[courseOfTherapyType].valueCodeableConcept = http://terminology.hl7.org/CodeSystem/medicationrequest-course-of-therapy#acute "Short course (acute) therapy"

* identifier.system = "http://fhir.ashmc.co.il/identifier/med-cml-home" (exactly)

* medicationCodeableConcept.coding ^slicing.discriminator.type = #value
* medicationCodeableConcept.coding ^slicing.discriminator.path = "system"
* medicationCodeableConcept.coding ^slicing.rules = #open
* medicationCodeableConcept.coding contains
    cml 0..1 and
    mv 0..1 and
    internal 0..1 and
    SNOMED 0..1 and
    atc 0..1

* medicationCodeableConcept.coding[cml].system 1..1
* medicationCodeableConcept.coding[cml].system = "http://fhir.ashmc.co.il/cs/cml-med-code" (exactly)
* medicationCodeableConcept.coding[cml].code 1..1
* medicationCodeableConcept.coding[cml].display 1..1

* medicationCodeableConcept.coding[mv].system 1..1
* medicationCodeableConcept.coding[mv].system = "http://fhir.ashmc.co.il/cs/mv-med-code" (exactly)
* medicationCodeableConcept.coding[mv].code 1..1
* medicationCodeableConcept.coding[mv].display 1..1

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
