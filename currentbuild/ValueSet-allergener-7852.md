# Allergener (7852) - Demo AllergyIntolerance Europa (EU Core/EHDS) og Norge v0.1.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Allergener (7852)**

## ValueSet: Allergener (7852) 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.no/fhir/ig/demo-at/ValueSet/allergener-7852 | *Version*:0.1.3 |
| Active as of 2026-09-16 | *Computable Name*:Allergener7852 |

 
Alle koder fra Mattilsynet/SAFEST/Farmalogg sitt kodeverk 7852. 

 **References** 

This value set is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)

### Logical Definition (CLD)

 

### Expansion

-------

 Explanation of the columns that may appear on this page: 

| | |
| :--- | :--- |
| Level | A few code lists that FHIR defines are hierarchical - each code is assigned a level. In this scheme, some codes are under other codes, and imply that the code they are under also applies |
| System | The source of the definition of the code (when the value set draws in codes defined elsewhere) |
| Code | The code (used as the code in the resource instance) |
| Display | The display (used in the*display*element of a[Coding](http://hl7.org/fhir/R4/datatypes.html#Coding)). If there is no display, implementers should not simply display the code, but map the concept into their application |
| Definition | An explanation of the meaning of the concept |
| Comments | Additional notes about how to use the code |



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "allergener-7852",
  "url" : "http://hl7.no/fhir/ig/demo-at/ValueSet/allergener-7852",
  "version" : "0.1.3",
  "name" : "Allergener7852",
  "title" : "Allergener (7852)",
  "status" : "active",
  "date" : "2026-09-16T07:31:07+00:00",
  "publisher" : "Helsedirektoratet",
  "contact" : [{
    "name" : "Helsedirektoratet",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.helsedirektoratet.no"
    }]
  }],
  "description" : "Alle koder fra Mattilsynet/SAFEST/Farmalogg sitt kodeverk 7852.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NO",
      "display" : "Norway"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "http://helsedir.no/fhir/CodeSystem/no-kodeverk-7852"
    }]
  }
}

```
