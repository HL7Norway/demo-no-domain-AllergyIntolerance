Profile:     DemoAtPatient
Id:          demo-at-patient
Parent:      PatientEuCore
Title:       "Demo pasient"
Description: "Pasientprofil brukt i demo-IG for AllergyIntolerance."
* ^status = #draft
* ^date = "2026-09-15"
* ^publisher = "Helsedirektoratet"

* identifier MS
* name.family MS

// Eksempel på norsk pasient med fødselsnummer og adresse

Instance: DemoAtPatient-1
InstanceOf: DemoAtPatient
Description: "Eksempel på norsk pasient med kontaktinformasjon"
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p><strong>Line Danser</strong></p><p>Fødselsnummer: 131169 00216</p><p>Kjønn: Kvinne</p><p>Fødselsdato: 13. november 1969</p></div>"
* identifier.system = "urn:oid:2.16.578.1.12.4.1.4.1"
* identifier.value = "13116900216"
* name.family = "Danser"
* name.given[0] = "Line"
* gender = #female
* birthDate = "1969-11-13"
