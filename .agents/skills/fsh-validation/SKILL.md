---
name: fsh-validation
description: Use when validating FSH or SUSHI in this repository, diagnosing FSH/SUSHI errors or warnings, or changing the validation workflow. Distinguish static FSH checks from SUSHI compilation and IG Publisher validation.
---

# FSH and SUSHI Validation

Use this skill for validation work in `demo-at`. Verify what was run and report which stage produced each result; a successful check at one stage does not establish conformance at later stages.

## Sources of truth

- Read `demo-at/sushi-config.yaml` for the configured FHIR release and package dependencies.
- Read `.github/workflows/validate-fsh.yml` for the actual CI triggers, tool installation, options, and failure behavior. Workflow details can change; do not rely on older prose documentation when it conflicts with the workflow.
- Check package declarations against packages installed by the workflow. At present, SUSHI config declares `hl7.fhir.eu.base` `2.0.0`, while the validation workflow installs FHIR R4 core and a `hl7.fhir.no.basis` `2.2.2` snapshot. Flag this difference and establish whether it is intentional before changing dependencies or interpreting build results.

## Validation stages

1. **FSH validator:** The workflow runs `fsh-validator --all` from `demo-at/input/fsh/`. Use this for FSH-level checks and report its diagnostics separately.
2. **SUSHI:** The workflow's SUSHI build is an optional manual-dispatch input. It attempts `sushi . --require-latest` from `demo-at/`, then retries without that flag on failure. Do not describe SUSHI as running on every pull request.
3. **IG Publisher:** This is a separate build/publishing workflow. Passing FSH validation or SUSHI alone does not prove that the full IG Publisher build succeeds.

## Failure interpretation

- Inspect the complete relevant log and identify the file, rule/path, and validation stage before suggesting a fix.
- Separate errors from warnings. Explain whether an error is caused by FSH syntax, a FHIR definition, a package/dependency problem, SUSHI generation, or IG Publisher.
- The validation workflow currently uses `continue-on-error: true` for SUSHI, and its `fail_on_sushi_errors` input defaults to false. A green workflow can therefore coexist with reported SUSHI errors. Check the logs and workflow summary rather than relying on the overall job status.
- The workflow is configured for pull requests affecting `demo-at/input/fsh/**` or `demo-at/sushi-config.yaml`; its push trigger is commented out. Verify the file before claiming a trigger is active.
- Run only checks supported by the available local environment. Do not install tools or packages without checking repository guidance and dependency requirements first. State any stages that could not be run.

## Fixes and reporting

- Make the smallest source change that addresses the diagnostic. Do not suppress a warning or alter a dependency merely to make output appear clean without understanding the compatibility impact.
- After changing FSH, rerun the narrow relevant validator when available; run SUSHI when a build/configuration issue is in scope.
- Report the exact checks run, their outcomes, remaining warnings/errors, and any mismatch between local configuration and CI setup.