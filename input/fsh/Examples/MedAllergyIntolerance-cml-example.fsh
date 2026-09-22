Instance: AshdodMedAllergyIntoleranceCmlExample
InstanceOf: med-allergy-intolerance
Usage: #example
Title: "Asuta Ashdod Medication AllergyIntolerance CML"
Description: "Valid example of a penicillin drug allergy at Asuta Ashdod via CML interface"

* id = "CML.MED.ALLERGY.8765432"

* meta.security[HDP].system = "http://fhir.health.gov.il/cs/il-hdp-information-buckets"
* meta.security[HDP].code = #allergiesAndIntolerances
* meta.security[HDP].display = "רגישויות"

* identifier.system = "http://fhir.ashmc.co.il/Identifier/med-allergy-intolerance"
* identifier.value = "8765432"
* identifier.type.coding.system = "http://fhir.health.gov.il/cs/il-core-identifier-type"
* identifier.type.coding.code = #strong-id
* identifier.type.coding.display = "Strong Identifier"

* clinicalStatus.coding.system = "http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical"
* clinicalStatus.coding.code = #active

* verificationStatus.coding.system = "http://terminology.hl7.org/CodeSystem/allergyintolerance-verification"
* verificationStatus.coding.code = #confirmed

* type = #allergy

* category = #medication

* code.coding[snomed].system = "http://snomed.info/sct"
* code.coding[snomed].code = #764146007
* code.coding[snomed].display = "Penicillin"

* code.coding[cml].system = "http://fhir.ashmc.co.il/cs/med-cml-code"
* code.coding[cml].code = #LOCAL-CODE

* patient = Reference(Patient/ashmc-patient-001)

* recorder = Reference(Practitioner/ashmc-dr-cohen)

* recordedDate = "2025-06-20"

* reaction.substance.coding.system = "http://snomed.info/sct"
* reaction.substance.coding.code = #764146007
* reaction.substance.coding.display = "Penicillin"

* reaction.manifestation.coding[cml].system = "http://fhir.ashmc.co.il/cs/reaction-cml-code"
* reaction.manifestation.coding[cml].code = #LOCAL-CODE

* reaction.manifestation.coding[ilcore].system = "http://snomed.info/sct"
* reaction.manifestation.coding[ilcore].code = #39579001
* reaction.manifestation.coding[ilcore].display = "Anaphylaxis"

* reaction.severity = #severe
* reaction.description = "Severe anaphylactic reaction requiring epinephrine"
* reaction.onset = "2024-03-10T09:15:00+02:00"

* reaction.exposureRoute.coding.system = "http://snomed.info/sct"
* reaction.exposureRoute.coding.code = #26643006
* reaction.exposureRoute.coding.display = "Oral route"
