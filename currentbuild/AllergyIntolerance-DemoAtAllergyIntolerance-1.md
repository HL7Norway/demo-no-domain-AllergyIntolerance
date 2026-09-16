# DemoAtAllergyIntolerance-1 - Demo AllergyIntolerance Europa (EU Core/EHDS) og Norge v0.1.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DemoAtAllergyIntolerance-1**

## Example AllergyIntolerance: DemoAtAllergyIntolerance-1

Profile: [Demo AllergyIntolerance](StructureDefinition-demo-at-allergy-intolerance.md)

**clinicalStatus**: Active

**verificationStatus**: Confirmed

**type**: Allergy

**category**: Food

**criticality**: High Risk

**code**: Allergy to peanut (finding)

**patient**: [Line Danser Female, DoB: 1969-11-13 ( urn:oid:2.16.578.1.12.4.1.4.1#13116900216)](Patient-DemoAtPatient-1.md)

**recordedDate**: 2026-09-15

### Reactions

| | | |
| :--- | :--- | :--- |
| - | **Substance** | **Manifestation** |
| * | Peanut | Wheal (finding) |



## Resource Content

```json
{
  "resourceType" : "AllergyIntolerance",
  "id" : "DemoAtAllergyIntolerance-1",
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
  "recordedDate" : "2026-09-15",
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
    }]
  }]
}

```
