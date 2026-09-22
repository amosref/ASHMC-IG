Instance: AshdodNonMedAllergyIntoleranceCmlExample
InstanceOf: non-med-allergy-intolerance
Usage: #example
Title: "Asuta Ashdod Non-Medication AllergyIntolerance CML"
Description: "Valid example of a peanut food allergy at Asuta Ashdod via CML interface"

* id = "CML.OTHER.7654321"

* meta.security[HDP].system = "http://fhir.health.gov.il/cs/il-hdp-information-buckets"
* meta.security[HDP].code = #allergiesAndIntolerances
* meta.security[HDP].display = "רגישויות"

* identifier.system = "http://fhir.ashmc.co.il/identifier/other-allergy-intolerance"
* identifier.value = "7654321"
* identifier.type.coding.system = "http://fhir.health.gov.il/cs/il-core-identifier-type"
* identifier.type.coding.code = #strong-id
* identifier.type.coding.display = "Strong Identifier"

* clinicalStatus.coding.system = "http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical"
* clinicalStatus.coding.code = #active

* verificationStatus.coding.system = "http://terminology.hl7.org/CodeSystem/allergyintolerance-verification"
* verificationStatus.coding.code = #confirmed

* type = #allergy

* category = #food

* code.coding[cml].system = "http://fhir.ashmc.co.il/cs/non-med-cml-code"
* code.coding[cml].code = #LOCAL-CODE

* code.coding[snomed].system = "http://snomed.info/sct"
* code.coding[snomed].code = #762952008
* code.coding[snomed].display = "Peanut"

* patient = Reference(Patient/ashmc-patient-001)

* encounter = Reference(Encounter/AshdodEncounterSubExample)

* recorder = Reference(Practitioner/ashmc-dr-cohen)

* recordedDate = "2025-06-15"

* reaction.substance.coding.system = "http://snomed.info/sct"
* reaction.substance.coding.code = #762952008
* reaction.substance.coding.display = "Peanut"

* reaction.manifestation.coding[cml].system = "http://fhir.ashmc.co.il/cs/reaction-cml-code"
* reaction.manifestation.coding[cml].code = #LOCAL-CODE

* reaction.manifestation.coding[ilcore].system = "http://snomed.info/sct"
* reaction.manifestation.coding[ilcore].code = #126485001
* reaction.manifestation.coding[ilcore].display = "Urticaria"

* reaction.severity = #moderate
