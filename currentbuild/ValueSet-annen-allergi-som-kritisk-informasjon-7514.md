# Annen allergi som kritisk informasjon (7514) - Demo AllergyIntolerance Europa (EU Core/EHDS) og Norge v0.1.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Annen allergi som kritisk informasjon (7514)**

## ValueSet: Annen allergi som kritisk informasjon (7514) 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.no/fhir/ig/demo-at/ValueSet/annen-allergi-som-kritisk-informasjon-7514 | *Version*:0.1.1 |
| Draft as of 2026-09-15 | *Computable Name*:AnnenAllergiSomKritiskInformasjon7514 |

 
Alle koder fra Kjernejournals kodeverk 7514. 

 **References** 

* [Demo AllergyIntolerance](StructureDefinition-demo-at-allergy-intolerance.md)

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
  "id" : "annen-allergi-som-kritisk-informasjon-7514",
  "url" : "http://hl7.no/fhir/ig/demo-at/ValueSet/annen-allergi-som-kritisk-informasjon-7514",
  "version" : "0.1.1",
  "name" : "AnnenAllergiSomKritiskInformasjon7514",
  "title" : "Annen allergi som kritisk informasjon (7514)",
  "status" : "draft",
  "date" : "2026-09-15T12:51:38+00:00",
  "publisher" : "Helsedirektoratet",
  "contact" : [{
    "name" : "Helsedirektoratet",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.helsedirektoratet.no"
    }]
  }],
  "description" : "Alle koder fra Kjernejournals kodeverk 7514.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NO",
      "display" : "Norway"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "http://helsedir.no/fhir/CodeSystem/no-kodeverk-7514"
    }]
  }
}

```
