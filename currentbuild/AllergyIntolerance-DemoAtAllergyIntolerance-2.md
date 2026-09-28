# DemoAtAllergyIntolerance-2 - Demo AllergyIntolerance Europa (EU Core/EHDS) og Norge v0.2.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DemoAtAllergyIntolerance-2**

## Example AllergyIntolerance: DemoAtAllergyIntolerance-2

Profile: [Demo AllergyIntolerance](StructureDefinition-demo-at-allergy-intolerance.md)

**clinicalStatus**: Active

**verificationStatus**: Confirmed

**type**: Allergy

**category**: Food

**criticality**: High Risk

**code**: Allergy to peanut (finding)

**patient**: [Line Danser Female, DoB: 1969-11-13 ( urn:oid:2.16.578.1.12.4.1.4.1#13116900216)](Patient-DemoAtPatient-1.md)

**onset**: 2018-06

**recordedDate**: 2026-09-20

**asserter**: [Line Danser Female, DoB: 1969-11-13 ( urn:oid:2.16.578.1.12.4.1.4.1#13116900216)](Patient-DemoAtPatient-1.md)

**lastOccurrence**: 2025-08-12

**note**: 

> 

Pasienten oppgir kjent peanøttallergi. Reaksjonene oppsto etter utilsiktet inntak.


> **reaction****substance**: Peanut**manifestation**: Wheal (finding), Angioedema (disorder)**description**: Generalisert elveblest og angioødem etter inntak av peanøtt.**onset**: 2018-06-17 09:30:00+0200**severity**: Severe**exposureRoute**: Oral route**note**: 
> 

Første kjente reaksjon, ifølge pasienten.



> **reaction****substance**: Peanut**manifestation**: Wheal (finding)**description**: Nytt tilfelle med elveblest etter utilsiktet inntak.**onset**: 2025-08-12 18:15:00+0200**severity**: Moderate**exposureRoute**: Oral route**note**: 
> 

Siste kjente reaksjon, ifølge pasienten.





## Resource Content

```json
{
  "resourceType" : "AllergyIntolerance",
  "id" : "DemoAtAllergyIntolerance-2",
  "meta" : {
    "profile" : ["http://hl7.no/fhir/ig/demo-at/StructureDefinition/demo-at-allergy-intolerance"]
  },
  "clinicalStatus" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical",
      "code" : "active",
      "display" : "Active"
    }]
  },
  "verificationStatus" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/allergyintolerance-verification",
      "code" : "confirmed",
      "display" : "Confirmed"
    }]
  },
  "type" : "allergy",
  "category" : ["food"],
  "criticality" : "high",
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "91935009",
      "display" : "Allergy to peanut (finding)"
    }]
  },
  "patient" : {
    "reference" : "Patient/DemoAtPatient-1"
  },
  "onsetDateTime" : "2018-06",
  "recordedDate" : "2026-09-20",
  "asserter" : {
    "reference" : "Patient/DemoAtPatient-1"
  },
  "lastOccurrence" : "2025-08-12",
  "note" : [{
    "text" : "Pasienten oppgir kjent peanøttallergi. Reaksjonene oppsto etter utilsiktet inntak."
  }],
  "reaction" : [{
    "substance" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "762952008",
        "display" : "Peanut"
      }]
    },
    "manifestation" : [{
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "247472004",
        "display" : "Wheal (finding)"
      }]
    },
    {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "41291007",
        "display" : "Angioedema (disorder)"
      }]
    }],
    "description" : "Generalisert elveblest og angioødem etter inntak av peanøtt.",
    "onset" : "2018-06-17T09:30:00+02:00",
    "severity" : "severe",
    "exposureRoute" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "26643006",
        "display" : "Oral route"
      }]
    },
    "note" : [{
      "text" : "Første kjente reaksjon, ifølge pasienten."
    }]
  },
  {
    "substance" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "762952008",
        "display" : "Peanut"
      }]
    },
    "manifestation" : [{
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "247472004",
        "display" : "Wheal (finding)"
      }]
    }],
    "description" : "Nytt tilfelle med elveblest etter utilsiktet inntak.",
    "onset" : "2025-08-12T18:15:00+02:00",
    "severity" : "moderate",
    "exposureRoute" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "26643006",
        "display" : "Oral route"
      }]
    },
    "note" : [{
      "text" : "Siste kjente reaksjon, ifølge pasienten."
    }]
  }]
}

```
