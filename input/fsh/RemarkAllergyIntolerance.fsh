Profile: AsutaAshdodRemarkAllergyIntolerance
Parent: ILHDPAllergyIntolerance
Id: remark-allergy-intolerance
Title: "Asuta Ashdod Remark AllergyIntolerance CML Profile"
Description: "AllergyIntolerance profile for general propensity-to-adverse-reaction remarks in the CML interface. The code is always fixed to SNOMED CT 420134006 (Propensity to adverse reaction)."

* ^url = "http://fhir.ashmc.co.il/StructureDefinition/remark-allergy-intolerance"
* ^status = #draft

* identifier.system = "http://fhir.ashmc.co.il/Identifier/remark-allergy-intolerance" (exactly)
* identifier.type 1..1
* identifier.type.coding 1..1
* identifier.type.coding.system = "http://fhir.health.gov.il/cs/il-core-identifier-type" (exactly)
* identifier.type.coding.code = #strong-id (exactly)
* identifier.type.coding.display = "Strong Identifier" (exactly)

* code.coding.system = "http://snomed.info/sct" (exactly)
* code.coding.code = #420134006 (exactly)
* code.coding.display = "Propensity to adverse reaction" (exactly)

* insert ConformanceMetadata
