# Demo AllergyIntolerance - Demo AT v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Demo AllergyIntolerance**

## Resource Profile: Demo AllergyIntolerance 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.no/fhir/ig/demo-at/StructureDefinition/demo-at-allergy-intolerance | *Version*:0.1.0 |
| Draft as of 2026-09-15 | *Computable Name*:DemoAtAllergyIntolerance |

 
Profil for registrering av allergi og intoleranse i demo-IG. 

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
  "version" : "0.1.0",
  "name" : "DemoAtAllergyIntolerance",
  "title" : "Demo AllergyIntolerance",
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
  "description" : "Profil for registrering av allergi og intoleranse i demo-IG.",
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
      "id" : "AllergyIntolerance.clinicalStatus",
      "path" : "AllergyIntolerance.clinicalStatus",
      "mustSupport" : true
    },
    {
      "id" : "AllergyIntolerance.verificationStatus",
      "path" : "AllergyIntolerance.verificationStatus",
      "mustSupport" : true
    },
    {
      "id" : "AllergyIntolerance.code",
      "path" : "AllergyIntolerance.code",
      "mustSupport" : true
    },
    {
      "id" : "AllergyIntolerance.patient",
      "path" : "AllergyIntolerance.patient",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.no/fhir/ig/demo-at/StructureDefinition/demo-at-patient"]
      }]
    },
    {
      "id" : "AllergyIntolerance.reaction.substance",
      "path" : "AllergyIntolerance.reaction.substance",
      "mustSupport" : true
    }]
  }
}

```
