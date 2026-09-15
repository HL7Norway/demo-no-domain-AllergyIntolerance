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
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p><strong>Kari Elisabeth Hansen</strong></p><p>Fødselsnummer: 13031353453</p><p>Kjønn: Kvinne</p><p>Fødselsdato: 13. mars 1990</p><p>Telefon: +47 12 34 56 78 (mobil)</p><p>E-post: kari.hansen@example.no</p><p>Adresse: Storgata 123, 5020 Bergen, Norge</p></div>"
* identifier.system = "urn:oid:2.16.578.1.12.4.1.4.1"
* identifier.value = "13031353453"
* name.family = "Hansen"
* name.given[0] = "Kari"
* name.given[1] = "Elisabeth"
* gender = #female
* birthDate = "1990-03-13"
