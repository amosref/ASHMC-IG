Profile: AsutaAshdodMedicationAdministrationCml
Parent: ILHDPMedicationAdministration
Id: med-administration-cml
Title: "Asuta Ashdod Medication Administration CML Profile"
Description: "Asuta Ashdod medication administration (MedicationAdministration) profile for the CML interface. For cocktail (compound) administrations, a contained Medication resource with id 'Cocktail' SHALL be used, medicationReference SHALL reference '#Cocktail', and the contained resource SHALL follow the ingredient coding structure defined in the interface specification."

* ^url = "http://fhir.ashmc.co.il/StructureDefinition/med-administration-cml"
* ^status = #draft

* identifier.system = "http://fhir.ashmc.co.il/identifier/med-administration-cml" (exactly)
* identifier.type 1..1
* identifier.type.coding 1..1
* identifier.type.coding.system = "http://fhir.health.gov.il/cs/il-core-identifier-type" (exactly)
* identifier.type.coding.code = #strong-id (exactly)
* identifier.type.coding.display = "Strong Identifier" (exactly)

* category.coding.system = "http://fhir.health.gov.il/cs/il-core-medication-request-category" (exactly)
* category.coding.code = #inpatient (exactly)
* category.coding.display = "Inpatient" (exactly)

* request 1..1

* medicationCodeableConcept.coding ^slicing.discriminator.type = #value
* medicationCodeableConcept.coding ^slicing.discriminator.path = "system"
* medicationCodeableConcept.coding ^slicing.rules = #open
* medicationCodeableConcept.coding contains
    cml    1..1 and
    mv     0..1 and
    snomed 0..1 and
    atc    0..1

* medicationCodeableConcept.coding[cml].system 1..1
* medicationCodeableConcept.coding[cml].system = "http://fhir.ashmc.co.il/cs/cml-med-code" (exactly)
* medicationCodeableConcept.coding[cml].code 1..1
* medicationCodeableConcept.coding[cml].display 0..1

* medicationCodeableConcept.coding[mv].system 1..1
* medicationCodeableConcept.coding[mv].system = "http://fhir.ashmc.co.il/cs/mv-med-code" (exactly)
* medicationCodeableConcept.coding[mv].code 0..1
* medicationCodeableConcept.coding[mv].display 0..1

* medicationCodeableConcept.coding[snomed].system 1..1
* medicationCodeableConcept.coding[snomed].system = "http://snomed.info/sct" (exactly)
* medicationCodeableConcept.coding[snomed].code 1..1
* medicationCodeableConcept.coding[snomed].display 0..1

* medicationCodeableConcept.coding[atc].system 1..1
* medicationCodeableConcept.coding[atc].system = "http://fhir.ashmc.co.il/cs/local-atc-med-code" (exactly)
* medicationCodeableConcept.coding[atc].code 1..1

* performer ^slicing.discriminator.type = #pattern
* performer ^slicing.discriminator.path = "function"
* performer ^slicing.rules = #open
* performer contains
    performer 0..1 and
    verifier  0..1

* performer[performer].function 1..1
* performer[performer].function ^patternCodeableConcept.coding[0] = http://terminology.hl7.org/CodeSystem/med-admin-perform-function#performer "Performer"
* performer[performer].function.coding.system = "http://terminology.hl7.org/CodeSystem/med-admin-perform-function" (exactly)
* performer[performer].function.coding.code = #performer (exactly)
* performer[performer].function.coding.display = "Performer" (exactly)

* performer[verifier].function 1..1
* performer[verifier].function ^patternCodeableConcept.coding[0] = http://terminology.hl7.org/CodeSystem/med-admin-perform-function#verifier "Verifier"
* performer[verifier].function.coding.system = "http://terminology.hl7.org/CodeSystem/med-admin-perform-function" (exactly)
* performer[verifier].function.coding.code = #verifier (exactly)
* performer[verifier].function.coding.display = "Verifier" (exactly)

* dosage.site.coding.system = "http://snomed.info/sct" (exactly)
* dosage.route.coding.system = "http://snomed.info/sct" (exactly)
* dosage.method.coding.system = "http://snomed.info/sct" (exactly)
* dosage.dose.system = "http://unitsofmeasure.org" (exactly)

* dosage.rateRatio.numerator.system = "http://unitsofmeasure.org" (exactly)
* dosage.rateRatio.denominator.value = 1
* dosage.rateRatio.denominator.unit = "hour"
* dosage.rateRatio.denominator.system = "http://unitsofmeasure.org" (exactly)
* dosage.rateRatio.denominator.code = #h

* insert ConformanceMetadata
