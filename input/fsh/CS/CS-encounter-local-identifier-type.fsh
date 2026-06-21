CodeSystem: EncounterLocalIdentifierType
Id: encounter-local-identifier-type
Title: "Encounter Local Identifier Type"
Description: "Local identifier type codes for Asuta Ashdod encounter identifiers"
* ^url = "http://fhir.ashmc.co.il/cs/encounter-local-identifier-type"
* ^status = #active
* ^caseSensitive = true
* ^experimental = false
* ^content = #complete
* #adm-strong "admission" "Strong admission identifier"
* #followup "Followup" "Follow-up hospitalization identifier"
* #release "Release" "Release identifier"
* insert ConformanceMetadata
