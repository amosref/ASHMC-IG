Profile: AsutaAshdodMedAllergyIntolerance
Parent: ILHDPAllergyIntolerance
Id: med-allergy-intolerance
Title: "Asuta Ashdod Medication AllergyIntolerance CML Profile"
Description: "AllergyIntolerance profile for medication (drug) allergies and intolerances in the CML interface. Category is always medication."

* ^url = "http://fhir.ashmc.co.il/StructureDefinition/med-allergy-intolerance"
* ^status = #draft

* identifier.system = "http://fhir.ashmc.co.il/Identifier/med-allergy-intolerance" (exactly)
* identifier.type 1..1
* identifier.type.coding 1..1
* identifier.type.coding.system = "http://fhir.health.gov.il/cs/il-core-identifier-type" (exactly)
* identifier.type.coding.code = #strong-id (exactly)
* identifier.type.coding.display = "Strong Identifier" (exactly)

* category = #medication

* code.coding ^slicing.discriminator.type = #value
* code.coding ^slicing.discriminator.path = "system"
* code.coding ^slicing.rules = #open
* code.coding contains
    snomed 1..* and
    cml    1..*

* code.coding[snomed].system 1..1
* code.coding[snomed].system = "http://snomed.info/sct" (exactly)
* code.coding[snomed].code 1..1

* code.coding[cml].system 1..1
* code.coding[cml].system = "http://fhir.ashmc.co.il/cs/med-cml-code" (exactly)
* code.coding[cml].code 1..1

* reaction.manifestation.coding ^slicing.discriminator.type = #value
* reaction.manifestation.coding ^slicing.discriminator.path = "system"
* reaction.manifestation.coding ^slicing.rules = #open
* reaction.manifestation.coding contains
    cml    1..* and
    ilcore 1..*

* reaction.manifestation.coding[cml].system 1..1
* reaction.manifestation.coding[cml].system = "http://fhir.ashmc.co.il/cs/reaction-cml-code" (exactly)
* reaction.manifestation.coding[cml].code 1..1

* reaction.manifestation.coding[ilcore].system 1..1
* reaction.manifestation.coding[ilcore].system = "http://snomed.info/sct" (exactly)
* reaction.manifestation.coding[ilcore].code 1..1
* reaction.manifestation.coding[ilcore] from http://fhir.health.gov.il/ValueSet/il-core-manifestation (required)

* insert ConformanceMetadata
