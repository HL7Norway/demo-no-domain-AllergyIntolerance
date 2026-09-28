# AllergyIntolerance Worklist

## Completed

- [x] Reaction severity is supported separately from overall criticality with a Norwegian definition.
- [x] Reaction and manifestation are Must Support; manifestation has a Norwegian definition, and the Helse-NIM KJ 7497 recommendation is recorded.
- [x] Reviewed Helse-NIM end date against FHIR R4: `AllergyIntolerance` has no `abatement[x]`. Removed the invalid rules; this mapping is not implemented as a core element.
- [x] Replace the profile's `Dummy-tekst` description with a final profile description.

## Open

- [ ] Decide whether the Helse-NIM end date is required for this IG. If so, design and define an extension; do not map it to `lastOccurrence`, which means the date of the last reaction.
- [ ] Finalize agent terminology. The profile's `code` binding to KJ 7514 is preferred, not required; determine how to guide use of KJ 7514 for other agents, KJ 7852 for allergens, and medicine product/active-substance identifiers (FEST, with IDMP when available). Clarify the role of `reaction.substance` as well as `code`.
- [ ] Decide whether/how to bind or demonstrate KJ 7497 for drug-allergy reaction types. The current profile records the recommendation, while the peanut food-allergy example uses SNOMED CT manifestations.
- [ ] Decide whether a translation extension is needed.
- [ ] Decide whether compatibility with no-basis profiles is in scope and, if so, which constraints need to be added manually.
- [ ] Run `fsh-validator` and SUSHI with the configured dependencies; local validation has not been completed because the tools/packages were unavailable. *Espen kjører denne "hjemme" på Mac'en*.

## Notes

- Helse-NIM `Innholdsstatus` describes missing or absent allergy-list information; it is not a field on an individual `AllergyIntolerance` instance.
- The KJ 7514/KJ 7852 combination question is tracked under agent terminology above. The ValueSets distinguish code systems, so assess overlap by system and code, not code text alone.
