Profile: AsutaAshdodMedicationRequestCml
Parent: ILHDPMedicationRequest
Id: med-order-cml
Title: "Asuta Ashdod Medication Order CML Profile"
Description: "Asuta Ashdod medication order (MedicationRequest) profile for the CML interface. For cocktail (compound) orders, a contained Medication resource with id 'Cocktail' SHALL be used, medicationReference SHALL reference '#Cocktail', and the contained resource SHALL follow the ingredient coding structure defined in the interface specification."

* ^url = "http://fhir.ashmc.co.il/StructureDefinition/med-order-cml"
* ^status = #draft

* extension contains
    $ext-resource-role-context named ResourceRoleContext 0..* and
    $extConfirmedBy named confirmedBy 0..1 and
    $extOrderType named orderType 1..1 and
    $extDailyDose named totalDailyDose 0..1 and
    $extProtocolName named protocolName 0..1

* identifier.system = "http://fhir.ashmc.co.il/identifier/med-order-cml" (exactly)
* identifier.type 1..1
* identifier.type.coding 1..1
* identifier.type.coding.system = "http://fhir.health.gov.il/cs/il-core-identifier-type" (exactly)
* identifier.type.coding.code = #strong-id (exactly)
* identifier.type.coding.display = "Strong Identifier" (exactly)

* intent = #order

* category[il-core] 1..1
* category[il-core].coding.code = #inpatient (exactly)
* category[il-core].coding.display = "Inpatient" (exactly)

* encounter 1..1

* medicationCodeableConcept.coding ^slicing.discriminator.type = #value
* medicationCodeableConcept.coding ^slicing.discriminator.path = "system"
* medicationCodeableConcept.coding ^slicing.rules = #open
* medicationCodeableConcept.coding contains
    cml    1..1 and
    mv     0..1 and
    bi-id  0..1 and
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

* medicationCodeableConcept.coding[bi-id].system 1..1
* medicationCodeableConcept.coding[bi-id].system = "http://fhir.ashmc.co.il/cs/internal-med-code" (exactly)
* medicationCodeableConcept.coding[bi-id].code 1..1
* medicationCodeableConcept.coding[bi-id].display 1..1

* medicationCodeableConcept.coding[snomed].system 1..1
* medicationCodeableConcept.coding[snomed].system = "http://snomed.info/sct" (exactly)
* medicationCodeableConcept.coding[snomed].code 1..1
* medicationCodeableConcept.coding[snomed].display 1..1

* medicationCodeableConcept.coding[atc].system 1..1
* medicationCodeableConcept.coding[atc].system = "http://fhir.ashmc.co.il/cs/local-atc-med-code" (exactly)
* medicationCodeableConcept.coding[atc].code 0..1

* courseOfTherapyType.coding ^slicing.discriminator.type = #value
* courseOfTherapyType.coding ^slicing.discriminator.path = "system"
* courseOfTherapyType.coding ^slicing.rules = #open
* courseOfTherapyType.coding contains cml-order-type 1..1
* courseOfTherapyType.coding[cml-order-type].system 1..1
* courseOfTherapyType.coding[cml-order-type].system = "http://fhir.dgmc.health.gov.il/cs/cml-order-type" (exactly)
* courseOfTherapyType.coding[cml-order-type].code 1..1
* courseOfTherapyType.coding[cml-order-type].display 1..1
* courseOfTherapyType.coding[cml-order-type].userSelected = true (exactly)

* insert ConformanceMetadata
