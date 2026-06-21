Profile: AsutaAshdodMedChronicStatementMv
Parent: ILHDPMedicationStatement
Id: med-chronic-statement-mv
Title: "Asuta Ashdod Chronic Medication Statement MV Profile"
Description: "Asuta Ashdod chronic medication statement profile for the MV interface"

* ^url = "http://fhir.ashmc.co.il/StructureDefinition/med-chronic-statement-mv"
* ^status = #draft

* extension[courseOfTherapyType].valueCodeableConcept = http://fhir.health.gov.il/cs/il-core-medication-course-of-therapy-type#chronic "Chronic therapy"

* identifier.system = "http://fhir.ashmc.co.il/identifier/med-mv-chronic" (exactly)

* medicationCodeableConcept.text 1..1

* insert ConformanceMetadata
