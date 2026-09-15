# 7852 Allergener - Demo AllergyIntolerance Europa (EU Core/EHDS) og Norge v0.1.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **7852 Allergener**

## CodeSystem: 7852 Allergener 

| | |
| :--- | :--- |
| *Official URL*:http://helsedir.no/fhir/CodeSystem/no-kodeverk-7852 | *Version*:0.1.1 |
| Active as of 2021-01-13 | *Computable Name*:NoKodeverk7852 |
| *Other Identifiers:*OID:2.16.578.1.12.4.1.1.7852 | |

 
Dette kodeverket angir hvilke allergener som kan forekomme i enterale ernæringsmidler. Informasjonen skal brukes på sykehus i forbindelse med at pasienter skal få ernæringsmidler. Kodene fra dette kodeverket inngår i en egen REST-tjeneste for ernæringsmidler til SAFEST. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [Allergener (7852)](ValueSet-allergener-7852.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "no-kodeverk-7852.codesystem",
  "url" : "http://helsedir.no/fhir/CodeSystem/no-kodeverk-7852",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.578.1.12.4.1.1.7852"
  }],
  "version" : "0.1.1",
  "name" : "NoKodeverk7852",
  "title" : "7852 Allergener",
  "status" : "active",
  "date" : "2021-01-13",
  "publisher" : "Helsedirektoratet",
  "contact" : [{
    "name" : "Helsedirektoratet",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.helsedirektoratet.no"
    }]
  }],
  "description" : "Dette kodeverket angir hvilke allergener som kan forekomme i enterale ernæringsmidler. Informasjonen skal brukes på sykehus i forbindelse med at pasienter skal få ernæringsmidler. Kodene fra dette kodeverket inngår i en egen REST-tjeneste for ernæringsmidler til SAFEST.",
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
  "count" : 21,
  "concept" : [{
    "code" : "1",
    "display" : "Gluten"
  },
  {
    "code" : "2",
    "display" : "Hvete"
  },
  {
    "code" : "3",
    "display" : "Rug"
  },
  {
    "code" : "4",
    "display" : "Bygg"
  },
  {
    "code" : "5",
    "display" : "Havre"
  },
  {
    "code" : "6",
    "display" : "Skalldyr"
  },
  {
    "code" : "7",
    "display" : "Egg (spiselig)"
  },
  {
    "code" : "8",
    "display" : "Fisk"
  },
  {
    "code" : "9",
    "display" : "Nøtt"
  },
  {
    "code" : "10",
    "display" : "Peanøtt"
  },
  {
    "code" : "11",
    "display" : "Soyabønner"
  },
  {
    "code" : "12",
    "display" : "Kumelk"
  },
  {
    "code" : "13",
    "display" : "Kumelksprotein"
  },
  {
    "code" : "14",
    "display" : "Laktose"
  },
  {
    "code" : "15",
    "display" : "Selleri"
  },
  {
    "code" : "16",
    "display" : "Sennepsfrø"
  },
  {
    "code" : "17",
    "display" : "Sesamfrø"
  },
  {
    "code" : "18",
    "display" : "Svoveldioksid"
  },
  {
    "code" : "19",
    "display" : "Sulfitt og sulfittderivater"
  },
  {
    "code" : "20",
    "display" : "Lupinfrø"
  },
  {
    "code" : "21",
    "display" : "Sjøbløtdyr"
  }]
}

```
