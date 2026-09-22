Instance: AshdodRemarkAllergyIntoleranceCmlExample
InstanceOf: remark-allergy-intolerance
Usage: #example
Title: "Asuta Ashdod Remark AllergyIntolerance CML"
Description: "Valid example of a general propensity-to-adverse-reaction remark at Asuta Ashdod via CML interface"

* id = "CML.REMARK.6543210"

* meta.security[HDP].system = "http://fhir.health.gov.il/cs/il-hdp-information-buckets"
* meta.security[HDP].code = #allergiesAndIntolerances
* meta.security[HDP].display = "רגישויות"

* identifier.system = "http://fhir.ashmc.co.il/Identifier/remark-allergy-intolerance"
* identifier.value = "6543210"
* identifier.type.coding.system = "http://fhir.health.gov.il/cs/il-core-identifier-type"
* identifier.type.coding.code = #strong-id
* identifier.type.coding.display = "Strong Identifier"

* clinicalStatus.coding.system = "http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical"
* clinicalStatus.coding.code = #active

* verificationStatus.coding.system = "http://terminology.hl7.org/CodeSystem/allergyintolerance-verification"
* verificationStatus.coding.code = #confirmed

* category = #medication

* code.coding.system = "http://snomed.info/sct"
* code.coding.code = #420134006
* code.coding.display = "Propensity to adverse reaction"

* patient = Reference(Patient/ashmc-patient-001)

* recorder = Reference(Practitioner/ashmc-dr-cohen)

* recordedDate = "2025-06-01"
