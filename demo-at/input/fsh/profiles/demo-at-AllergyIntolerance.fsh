Profile:     DemoAtAllergyIntolerance
Id:          demo-at-allergy-intolerance
Parent:      AllergyIntoleranceEuCore
Title:       "Demo AllergyIntolerance"
Description: "Profil for registrering av allergi og intoleranse i demo-IG."
* ^status = #draft
* ^date = "2026-09-15"
* ^publisher = "Helsedirektoratet"

// Elementer fra f.eks. no-basis må legges til manuelt, da man ikke kan arve fra to profiler. 

// * patient only Reference(DemoAtPatient)
// * clinicalStatus MS 
// * verificationStatus MS
// * code MS
* recordedDate 1..1
* recordedDate ^definition = "Dato for registrering av allergi eller intoleranse"
* recordedDate ^short = "Registreringsdato"
* recordedDate ^comment = "Obligatorisk i Kjernejournal"

* reaction.substance MS
* reaction.manifestation ^definition = "Eksempel på kommentar/tillegg i norsk utgave"

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
* reaction[0].substance = $sct#762952008 "Peanut"
* reaction[0].manifestation[0] = $sct#247472004 "Urticarial rash"