# Demo pasient - Demo AT v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Demo pasient**

## Resource Profile: Demo pasient 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.no/fhir/ig/demo-at/StructureDefinition/demo-at-patient | *Version*:0.1.0 |
| Draft as of 2026-09-15 | *Computable Name*:DemoAtPatient |

 
Pasientprofil brukt i demo-IG for AllergyIntolerance. 

**Usages:**

* Examples for this Profile: [Patient/DemoAtPatient-1](Patient-DemoAtPatient-1.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.no.demo-at|current/StructureDefinition/StructureDefinition-demo-at-patient.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-demo-at-patient.csv), [Excel](StructureDefinition-demo-at-patient.xlsx), [Schematron](StructureDefinition-demo-at-patient.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "demo-at-patient",
  "url" : "http://hl7.no/fhir/ig/demo-at/StructureDefinition/demo-at-patient",
  "version" : "0.1.0",
  "name" : "DemoAtPatient",
  "title" : "Demo pasient",
  "status" : "draft",
  "date" : "2026-09-15",
  "publisher" : "HL7 Norge",
  "contact" : [{
    "name" : "HL7 Norge",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.hl7.no"
    }]
  }],
  "description" : "Pasientprofil brukt i demo-IG for AllergyIntolerance.",
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
    "identity" : "cda",
    "uri" : "http://hl7.org/v3/cda",
    "name" : "CDA (R2)"
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
  },
  {
    "identity" : "loinc",
    "uri" : "http://loinc.org",
    "name" : "LOINC code for the element"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Patient",
  "baseDefinition" : "http://hl7.eu/fhir/base/StructureDefinition/patient-eu-core",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Patient",
      "path" : "Patient"
    },
    {
      "id" : "Patient.identifier",
      "path" : "Patient.identifier",
      "mustSupport" : true
    },
    {
      "id" : "Patient.name.family",
      "path" : "Patient.name.family",
      "mustSupport" : true
    }]
  }
}

```
