# Demo AllergyIntolerance - Demo AllergyIntolerance Europa (EU Core/EHDS) og Norge v0.1.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Demo AllergyIntolerance**

## Resource Profile: Demo AllergyIntolerance ( Experimental ) 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.no/fhir/ig/demo-at/StructureDefinition/demo-at-allergy-intolerance | *Version*:0.1.1 |
| Draft as of 2026-09-15 | *Computable Name*:DemoAtAllergyIntolerance |

 
Dummy-tekst: Helse-NIM for overfølsomhet er en liste som inneholder informasjon om unormale reaksjoner, symptomer eller funn initiert av eksponering for en definert stimulus i en dose som normalt tolereres av andre. Informasjon om en pasients overfølsomhet er relevant i mange situasjoner, som ved vaksinasjon, kost på institusjon, rekvirering og utlevering av legemidler, herunder inkludert muligheten til å dele informasjon om en avkreftet overfølsomhet. 

**Usages:**

* Examples for this Profile: [AllergyIntolerance/DemoAtAllergyIntolerance-1](AllergyIntolerance-DemoAtAllergyIntolerance-1.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.no.demo-at|current/StructureDefinition/StructureDefinition-demo-at-allergy-intolerance.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-demo-at-allergy-intolerance.csv), [Excel](StructureDefinition-demo-at-allergy-intolerance.xlsx), [Schematron](StructureDefinition-demo-at-allergy-intolerance.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "demo-at-allergy-intolerance",
  "url" : "http://hl7.no/fhir/ig/demo-at/StructureDefinition/demo-at-allergy-intolerance",
  "version" : "0.1.1",
  "name" : "DemoAtAllergyIntolerance",
  "title" : "Demo AllergyIntolerance",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-09-15",
  "publisher" : "Helsedirektoratet",
  "contact" : [{
    "name" : "Helsedirektoratet",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.helsedirektoratet.no"
    }]
  }],
  "description" : "Dummy-tekst: Helse-NIM for overfølsomhet er en liste som inneholder informasjon om unormale reaksjoner, symptomer eller funn initiert av eksponering for en definert stimulus i en dose som normalt tolereres av andre. Informasjon om en pasients overfølsomhet er relevant i mange situasjoner, som ved vaksinasjon, kost på institusjon, rekvirering og utlevering av legemidler, herunder inkludert muligheten til å dele informasjon om en avkreftet overfølsomhet.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NO",
      "display" : "Norway"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "AllergyIntolerance",
  "baseDefinition" : "http://hl7.eu/fhir/base/StructureDefinition/allergyIntolerance-eu-core",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "AllergyIntolerance",
      "path" : "AllergyIntolerance"
    },
    {
      "id" : "AllergyIntolerance.code",
      "path" : "AllergyIntolerance.code",
      "definition" : "Hvilke agens (substans, trigger, materiale) som kan knyttes til overfølsomheten.",
      "comment" : "Merk: Det vil bli endringer i anbefaling til koding av legemidler og substanser (agens) når ny standard for identifisering av legemidler implementeres i Norge (IDMP).",
      "binding" : {
        "strength" : "preferred",
        "valueSet" : "http://hl7.no/fhir/ig/demo-at/ValueSet/allergener-7852"
      }
    },
    {
      "id" : "AllergyIntolerance.recordedDate",
      "path" : "AllergyIntolerance.recordedDate",
      "short" : "Registreringsdato",
      "definition" : "Tidspunkt da overfølsomheten eller den uønskede reaksjonen ble konstatert. Tidspunkt kan være spesifikk (dag-tidspunkt) eller uspesifikk (årstall, tiår). ",
      "requirements" : "Obligatorisk i Kjernejournal",
      "min" : 1
    },
    {
      "id" : "AllergyIntolerance.note",
      "path" : "AllergyIntolerance.note",
      "definition" : "Kommentar eller supplerende opplysninger."
    }]
  }
}

```
