# Artifacts Summary - Demo AllergyIntolerance Europa (EU Core/EHDS) og Norge v0.1.3

* [**Table of Contents**](toc.md)
* **Artifacts Summary**

## Artifacts Summary

This page provides a list of the FHIR artifacts defined as part of this implementation guide.

### Structures: Resource Profiles 

These define constraints on FHIR resources for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Demo AllergyIntolerance](StructureDefinition-demo-at-allergy-intolerance.md) | Dummy-tekst: Helse-NIM for overfølsomhet er en liste som inneholder informasjon om unormale reaksjoner, symptomer eller funn initiert av eksponering for en definert stimulus i en dose som normalt tolereres av andre. Informasjon om en pasients overfølsomhet er relevant i mange situasjoner, som ved vaksinasjon, kost på institusjon, rekvirering og utlevering av legemidler, herunder inkludert muligheten til å dele informasjon om en avkreftet overfølsomhet. |
| [Demo pasient](StructureDefinition-demo-at-patient.md) | Pasientprofil brukt i demo-IG for AllergyIntolerance. |

### Terminology: Value Sets 

These define sets of codes used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Allergener (7852)](ValueSet-allergener-7852.md) | Alle koder fra Mattilsynet/SAFEST/Farmalogg sitt kodeverk 7852. |
| [Annen allergi som kritisk informasjon (7514)](ValueSet-annen-allergi-som-kritisk-informasjon-7514.md) | Alle koder fra Kjernejournals kodeverk 7514. |

### Terminology: Code Systems 

These define new code systems used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [7514 Annen allergi som kritisk informasjon](CodeSystem-no-kodeverk-7514.codesystem.md) | Angir annet allergen enn legemidler som årsak til alvorlig allergisk reaksjon registert som kritisk informasjon. Registrering og utveksling av kritisk informasjon i kjernejournal. |
| [7852 Allergener](CodeSystem-no-kodeverk-7852.codesystem.md) | Dette kodeverket angir hvilke allergener som kan forekomme i enterale ernæringsmidler. Informasjonen skal brukes på sykehus i forbindelse med at pasienter skal få ernæringsmidler. Kodene fra dette kodeverket inngår i en egen REST-tjeneste for ernæringsmidler til SAFEST. |

### Example: Example Instances 

These are example instances that show what data produced and consumed by systems conforming with this implementation guide might look like.

| | |
| :--- | :--- |
| [DemoAtAllergyIntolerance-1](AllergyIntolerance-DemoAtAllergyIntolerance-1.md) | Eksempel på registrert peanøttallergi |
| [DemoAtPatient-1](Patient-DemoAtPatient-1.md) | Eksempel på norsk pasient med kontaktinformasjon |

