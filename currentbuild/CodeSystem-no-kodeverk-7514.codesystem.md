# 7514 Annen allergi som kritisk informasjon - Demo AllergyIntolerance Europa (EU Core/EHDS) og Norge v0.1.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **7514 Annen allergi som kritisk informasjon**

## CodeSystem: 7514 Annen allergi som kritisk informasjon 

| | |
| :--- | :--- |
| *Official URL*:http://helsedir.no/fhir/CodeSystem/no-kodeverk-7514 | *Version*:0.1.1 |
| Active as of 2018-01-03 | *Computable Name*:NoKodeverk7514 |
| *Other Identifiers:*OID:2.16.578.1.12.4.1.1.7514 | |

 
Angir annet allergen enn legemidler som årsak til alvorlig allergisk reaksjon registert som kritisk informasjon. Registrering og utveksling av kritisk informasjon i kjernejournal. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [Annen allergi som kritisk informasjon (7514)](ValueSet-annen-allergi-som-kritisk-informasjon-7514.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "no-kodeverk-7514.codesystem",
  "url" : "http://helsedir.no/fhir/CodeSystem/no-kodeverk-7514",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.578.1.12.4.1.1.7514"
  }],
  "version" : "0.1.1",
  "name" : "NoKodeverk7514",
  "title" : "7514 Annen allergi som kritisk informasjon",
  "status" : "active",
  "date" : "2018-01-03",
  "publisher" : "Helsedirektoratet",
  "contact" : [{
    "name" : "Helsedirektoratet",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.helsedirektoratet.no"
    }]
  }],
  "description" : "Angir annet allergen enn legemidler som årsak til alvorlig allergisk reaksjon registert som kritisk informasjon. Registrering og utveksling av kritisk informasjon i kjernejournal.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NO",
      "display" : "Norway"
    }]
  }],
  "caseSensitive" : true,
  "compositional" : false,
  "content" : "complete",
  "count" : 15,
  "concept" : [{
    "code" : "1",
    "display" : "Melk"
  },
  {
    "code" : "2",
    "display" : "Egg"
  },
  {
    "code" : "3",
    "display" : "Hvete"
  },
  {
    "code" : "4",
    "display" : "Skalldyr"
  },
  {
    "code" : "5",
    "display" : "Fisk"
  },
  {
    "code" : "6",
    "display" : "Erter"
  },
  {
    "code" : "7",
    "display" : "Soya"
  },
  {
    "code" : "8",
    "display" : "Lupin"
  },
  {
    "code" : "9",
    "display" : "Bukkhornskløver"
  },
  {
    "code" : "10",
    "display" : "Peanøtt"
  },
  {
    "code" : "11",
    "display" : "Andre nøtter enn peanøtter"
  },
  {
    "code" : "12",
    "display" : "Valmuefrø"
  },
  {
    "code" : "13",
    "display" : "Insektgift"
  },
  {
    "code" : "14",
    "display" : "Latex"
  },
  {
    "code" : "15",
    "display" : "Annen viktig allergi"
  }]
}

```
