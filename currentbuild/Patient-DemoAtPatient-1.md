# DemoAtPatient-1 - Demo AT v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DemoAtPatient-1**

## Example Patient: DemoAtPatient-1

**Line Danser**

Fødselsnummer: 131169 00216

Kjønn: Kvinne

Fødselsdato: 13. november 1969



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "DemoAtPatient-1",
  "meta" : {
    "profile" : ["http://hl7.no/fhir/ig/demo-at/StructureDefinition/demo-at-patient"]
  },
  "identifier" : [{
    "system" : "urn:oid:2.16.578.1.12.4.1.4.1",
    "value" : "13116900216"
  }],
  "name" : [{
    "family" : "Danser",
    "given" : ["Line"]
  }],
  "gender" : "female",
  "birthDate" : "1969-11-13"
}

```
