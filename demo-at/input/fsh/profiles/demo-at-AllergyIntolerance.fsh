Profile:     DemoAtAllergyIntolerance
Id:          demo-at-allergy-intolerance
Parent:      AllergyIntoleranceEuCore
Title:       "Demo AllergyIntolerance"
Description: "Profil for registrering av allergi og intoleranse i demo-IG."
* ^status = #draft
* ^experimental = true
* ^publisher = "Helsedirektoratet"
* ^date = "2026-09-15"
* ^description = "Dummy-tekst: Helse-NIM for overfølsomhet er en liste som inneholder informasjon om unormale reaksjoner, symptomer eller funn initiert av eksponering for en definert stimulus i en dose som normalt tolereres av andre. Informasjon om en pasients overfølsomhet er relevant i mange situasjoner, som ved vaksinasjon, kost på institusjon, rekvirering og utlevering av legemidler, herunder inkludert muligheten til å dele informasjon om en avkreftet overfølsomhet."
* ^publisher = "Helsedirektoratet"


// Elementer fra f.eks. no-basis må legges til manuelt, da man ikke kan arve fra to profiler. 
// * patient only Reference(DemoAtPatient)

// Vurdere translation-extension for flere språk

* clinicalStatus MS 
* verificationStatus MS
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

* onsetDateTime ^short = "Starttidspunkt"
* recordedDate 1..1

* recordedDate ^requirements = "Obligatorisk i Kjernejournal"
* recordedDate ^short = "Registreringsdato"
* note ^definition = "Kommentar eller supplerende opplysninger."


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