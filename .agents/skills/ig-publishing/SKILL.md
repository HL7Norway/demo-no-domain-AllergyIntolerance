---
name: ig-publishing
description: Use when building, publishing, or troubleshooting this repository's FHIR IG, GitHub Pages, PlantUML generation, or FTP/SFTP deployment workflows. Check the workflow before describing triggers or deployment behavior.
---

# IG Build and Publishing

Use this skill for the delivery workflows around the `demo-at` Implementation Guide. Keep source changes, generated build output, and deployed artifacts distinct.

## Build and GitHub Pages

- Read `demo-at/ig.ini`, `demo-at/sushi-config.yaml`, and `.github/workflows/ig-gh-pages.yml` before changing build or publishing behavior.
- The current workflow is manually triggered. It sets `IG_SHORTNAME` to `demo-at`, runs the HL7 IG Publisher in `hl7fhir/ig-publisher-base:latest`, installs SUSHI, and publishes `demo-at/output` to the `gh-pages` branch under `currentbuild`.
- Check that workflow-installed FHIR packages agree with `sushi-config.yaml`. The workflow currently installs R4 core and a Norwegian no-basis snapshot, while the SUSHI config declares EU Base. Treat this as a potential mismatch; do not silently rewrite dependencies or assume the published build uses the declared package.
- Diagnose in order: workflow trigger and environment, package setup, SUSHI/IG Publisher log, generated `demo-at/output`, then the gh-pages publishing step. Do not hand-edit generated output as a source fix.
- Do not claim the site is published unless the workflow completed and the destination branch/path is confirmed.

## Other delivery workflows

- `.github/workflows/plant-uml.yml` is manually triggered and renders diagrams from `demo-at/input/images` using the PlantUML GitHub Action. Confirm the source path and generated changes before reporting success.
- `.github/workflows/deploy-to-ftp.yml` checks out the `gh-pages` branch and supports FTP, SFTP, and rsync-over-SSH. It is manually triggered and offers a dry-run option.
- For remote deployment, use the dry-run first and inspect the target directory and method. The non-dry-run commands use deletion/synchronization behavior; make sure the destination is intended before deployment.
- Never request, expose, or place credentials in chat, source files, or logs. Refer to the workflow's GitHub Actions secrets by name only, and avoid printing secret values.

## Reporting

State which workflow was run, the source revision if available, the artifact or destination path, and whether publication/deployment actually completed. Distinguish a successful IG build from a successful upload or Pages deployment.