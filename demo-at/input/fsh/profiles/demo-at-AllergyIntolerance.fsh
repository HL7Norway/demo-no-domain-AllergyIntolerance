Profile:     DemoAtAllergyIntolerance
Id:          demo-at-allergy-intolerance
Parent:      AllergyIntoleranceEuCore
Title:       "Demo AllergyIntolerance"
Description: "Profil for registrering av allergi og intoleranse i demo-IG."
* ^status = #draft
* ^experimental = true
* ^publisher = "Helsedirektoratet"
* ^date = "2026-09-15"
* ^description = "Demo-profil for registrering av allergi og intoleranse med utgangspunkt i HL7 EU Core og relevante norske føringer for overfølsomhet."
* ^publisher = "Helsedirektoratet"


// Elementer fra f.eks. no-basis må legges til manuelt, da man ikke kan arve fra to profiler. 
// * patient only Reference(DemoAtPatient)

// Vurdere translation-extension for flere språk

* clinicalStatus MS 
* criticality 1..1
* criticality ^comment = "Import need to handle missing criticality"
* verificationStatus 1..1
* verificationStatus ^comment = "Import need to handle missing verificationStatus"

* code MS
* code ^definition = "Hvilke agens (substans, trigger, materiale) som kan knyttes til overfølsomheten."
* code ^comment = "Merk: Det vil bli endringer i anbefaling til koding av legemidler og substanser (agens) når ny standard for identifisering av legemidler implementeres i Norge (IDMP)."
* code from AnnenAllergiSomKritiskInformasjon7514 (preferred)

// Må kombineres i ett ValueSet, men det er problematisk når de har like koder? 
// * code from Allergener7852 (preferred)
// error No element found at path onset for CaretValueRule in DemoAtAllergyIntolerance, skipping rule
// File: /home/runner/work/demo-no-domain-AllergyIntolerance/demo-no-domain-AllergyIntolerance/demo-at/input/fsh/profiles/demo-at-AllergyIntolerance.fsh
// * onset ^definition = "Tidspunkt da overfølsomheten eller den uønskede reaksjonen ble konstatert. Tidspunkt kan være spesifikk (dag-tidspunkt) eller uspesifikk (årstall, tiår). "
// * onset ^requirements = "Obligatorisk i Kjernejournal"

* onsetDateTime ^definition = "Tidspunkt da overfølsomheten eller den uønskede reaksjonen ble konstatert. Tidspunkt kan være spesifikk (dag-tidspunkt) eller uspesifikk (årstall, tiår). "
* onsetDateTime ^requirements = "EHDS krever dato/tid, alder må konverteres." 
* onsetDateTime ^short = "Starttidspunkt"
* recordedDate 1..1

* recordedDate ^requirements = "Obligatorisk i Kjernejournal"
* recordedDate ^short = "Registreringsdato"
* note ^definition = "Kommentar eller supplerende opplysninger."
* reaction MS
* reaction.manifestation MS
* reaction.manifestation ^definition = "Hvilken reaksjon pasienten har hatt."
* reaction.manifestation ^comment = "Helse-NIM anbefaler KJ 7497 (Reaksjonstype) for koding av manifestasjon."
* reaction.severity MS
* reaction.severity ^definition = "Hvor alvorlig reaksjon pasienten har hatt."


Instance: DemoAtAllergyIntolerance-1
InstanceOf: DemoAtAllergyIntolerance
Description: "Eksempel på registrert peanøttallergi"
* clinicalStatus = http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical#active "Active"
* verificationStatus = http://terminology.hl7.org/CodeSystem/allergyintolerance-verification#confirmed "Confirmed"
* type = #allergy
* category[0] = #food
* criticality = #high
* code = $sct#91935009 "Allergy to peanut (finding)"
* patient = Reference(DemoAtPatient-1)
* recordedDate = "2026-09-15"
* reaction[0].substance = $sct#762952008 "Peanut"
* reaction[0].manifestation[0] = $sct#247472004 "Wheal (finding)"
* reaction[0].severity = #mild

Instance: DemoAtAllergyIntolerance-2
InstanceOf: DemoAtAllergyIntolerance
Description: "Eksempel på bekreftet peanøttallergi med flere reaksjonshendelser"
* clinicalStatus = http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical#active "Active"
* verificationStatus = http://terminology.hl7.org/CodeSystem/allergyintolerance-verification#confirmed "Confirmed"
* type = #allergy
* category[0] = #food
* criticality = #high
* code = $sct#91935009 "Allergy to peanut (finding)"
* patient = Reference(DemoAtPatient-1)
* onsetDateTime = "2018-06"
* asserter = Reference(DemoAtPatient-1)
* recordedDate = "2026-09-20"
* lastOccurrence = "2025-08-12"
* note[0].text = "Pasienten oppgir kjent peanøttallergi. Reaksjonene oppsto etter utilsiktet inntak."
* reaction[0].substance = $sct#762952008 "Peanut"
* reaction[0].manifestation[0] = $sct#247472004 "Wheal (finding)"
* reaction[0].manifestation[1] = $sct#41291007 "Angioedema (disorder)"
* reaction[0].description = "Generalisert elveblest og angioødem etter inntak av peanøtt."
* reaction[0].onset = "2018-06-17T09:30:00+02:00"
* reaction[0].severity = #severe
* reaction[0].exposureRoute = $sct#26643006 "Oral route"
* reaction[0].note[0].text = "Første kjente reaksjon, ifølge pasienten."
* reaction[1].substance = $sct#762952008 "Peanut"
* reaction[1].manifestation[0] = $sct#247472004 "Wheal (finding)"
* reaction[1].description = "Nytt tilfelle med elveblest etter utilsiktet inntak."
* reaction[1].onset = "2025-08-12T18:15:00+02:00"
* reaction[1].severity = #moderate
* reaction[1].exposureRoute = $sct#26643006 "Oral route"
* reaction[1].note[0].text = "Siste kjente reaksjon, ifølge pasienten."