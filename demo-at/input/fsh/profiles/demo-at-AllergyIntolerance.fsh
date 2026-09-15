Profile:     DemoAtAllergyIntolerance
Id:          demo-at-allergy-intolerance
Parent:      AllergyIntoleranceEuCore
Title:       "Demo AllergyIntolerance"
Description: "Profil for registrering av allergi og intoleranse i demo-IG."
* ^status = #draft
* ^date = "2026-09-15"
* ^publisher = "HL7 Norge"

* patient only Reference(DemoAtPatient)
* clinicalStatus MS
* verificationStatus MS
* code MS
* reaction.substance MS

Instance: DemoAtAllergyIntolerance-1
InstanceOf: DemoAtAllergyIntolerance
Description: "Eksempel på registrert peanøttallergi"
* clinicalStatus = http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical#active "Active"
* verificationStatus = http://terminology.hl7.org/CodeSystem/allergyintolerance-verification#confirmed "Confirmed"
* type = #allergy
* category[0] = #food
* criticality = #high
* code = $sct#91935009 "Allergy to peanut"
* patient = Reference(DemoAtPatient-1)
* recordedDate = "2026-09-15"
* reaction[0].substance = $sct#256349002 "Peanut"
* reaction[0].manifestation[0] = $sct#247472004 "Urticarial rash"