---
name: fhir
description: Use for authoring or reviewing this repository's FHIR R4 Implementation Guide, FSH profiles, extensions, terminology, examples, or conformance decisions. Apply it whenever a task changes FHIR or FSH content in demo-at.
---

# HL7 FHIR and FSH Best Practices

When working with HL7 FHIR or FSH, follow the applicable official specifications and established FHIR community practices. Prefer correctness, interoperability, and conformance over convenience.

## Establish the context

This repository always targets FHIR R4 (`4.0.1`) in a Norwegian context. Do not ask the user to choose a FHIR release or jurisdiction for ordinary work in this repo. Treat a requested change to either as an explicit migration that needs clarification.

Use the applicable HL7 Europe Base and EU Core profiles as the primary modeling baseline. Strive to remain compatible with Norwegian no-basis profiles as well. If constraints conflict, do not claim compatibility or weaken a required profile silently; explain the divergence and follow the task's stated conformance requirements.

Before making changes, identify or state assumptions about:

- The applicable versions of HL7 Europe Base, EU Core, and any Norwegian no-basis profiles.
- The use case and applicable Implementation Guide (IG) requirements.
- Required profiles, packages, terminology systems, and canonical URLs.
- Whether the task concerns resource instances, profiles, extensions, operations, or IG authoring.

Do not silently mix IG versions or profile constraints. If a required dependency or version is missing and materially affects the result, verify it from project configuration or ask rather than guessing.

## Use authoritative sources

- Treat the applicable HL7 FHIR specification as the normative source for core FHIR behavior.
- Follow the applicable published IG and its dependencies; do not substitute guidance from a different version.
- Consult official terminology documentation and published community guidance where relevant.
- Prefer widely adopted, maintained IG patterns when they fit the use case, but do not treat popularity as authority over a normative specification or applicable IG.
- When browsing or source material is available, verify version-sensitive details and provide links or citations for important claims.
- Never invent profiles, canonical URLs, terminology codes, cardinalities, or conformance requirements. Clearly label examples and assumptions.

## Modeling and interoperability

- Reuse an applicable profile or established pattern before creating a new one.
- Keep the model as simple as possible while meeting documented requirements.
- Use standard FHIR resources and elements before proposing extensions.
- When an extension is necessary, follow FHIR extension conventions, define its context and cardinality, and provide a clear definition and canonical URL.
- Preserve the distinction between resource structure, profile constraints, terminology bindings, and narrative guidance.
- Use appropriate cardinalities, slicing, invariants, and must-support rules. Explain consequential choices; do not add constraints speculatively.
- Respect FHIR references, contained-resource rules, choice elements, and datatype semantics.
- Consider terminology binding strength, value sets, code systems, and required code-system versions. Do not replace coded concepts with free text when a coded element is appropriate.
- Account for privacy, security, provenance, and patient-safety implications when relevant.

## FSH authoring

- Use valid FSH syntax and conventions for the target FHIR version and SUSHI toolchain.
- Declare the correct FHIR version and package dependencies in the IG configuration; use exact compatible versions where known.
- Use stable, appropriate canonical URLs and consistent aliases.
- Keep profiles, extensions, instances, and terminology definitions organized in the expected FSH files and folders.
- Express constraints with the narrowest appropriate FSH rule. Avoid redundant rules and unexplained constraints.
- Use `Profile`, `Extension`, `Instance`, `ValueSet`, and `CodeSystem` declarations according to their intended purposes.
- Check rule paths, slice names, cardinalities, fixed or pattern values, bindings, and references against the target FHIR definitions.
- Do not claim that FSH syntax alone establishes conformance; generated artifacts must be validated.

## Verification

For implementation work:

1. Confirm the target FHIR release, IG, and dependencies.
2. Make the smallest change that satisfies the requirement.
3. Run SUSHI and the applicable FHIR validator when available.
4. Review errors and warnings, generated StructureDefinitions, terminology bindings, and package dependencies.
5. Report what was verified, which tools and versions were used, and any unresolved issues.

If validation tools or required packages are unavailable, say so explicitly. Do not claim successful validation without running it.

## This repository

- The IG source is under `demo-at/`; FSH files are under `demo-at/input/fsh/` and are grouped into profiles, value sets, and code systems.
- Read `demo-at/sushi-config.yaml` before changing the canonical URL, publisher, or package dependencies. It currently declares FHIR R4 (`4.0.1`), Norway, and `hl7.fhir.eu.base` `2.0.0`.
- Use the existing aliases and neighboring FSH definitions before introducing new names or patterns. Keep profile constraints tied to stated requirements; do not infer clinical or Norwegian policy from example content.
- Check the config and relevant GitHub Actions workflow together when package versions or validation behavior matter. The intended modeling baseline includes EU Base and EU Core, but the config currently declares EU Base directly and the workflows install `hl7.fhir.no.basis` snapshots. Verify how EU Core and no-basis profiles are supplied, and investigate any mismatch; do not silently change dependencies.
- Keep generated publisher output distinct from source files. Do not edit generated output to fix an issue in FSH or IG configuration.
- The repository documentation is primarily Norwegian. Match the language of the requested deliverable and preserve established terminology.