# Generere IG og publisere på GitHub Pages

Denne workflow-filen er konfigurert for å automatisk bygge og publisere en FHIR implementasjonsguide (IG) ved bruk av GitHub Actions. Nedenfor følger en detaljert forklaring av scriptet og hvordan det kan tilpasses.

## Forklaring av Workflow

### Workflow-navn og -trigger

```yaml
name: ig-gh-pages

on:
  workflow_dispatch:
```

Workflow navnet er `ig-gh-pages` og er satt opp til å trigges manuelt via GitHub brukergrensesnittet.

### Miljøvariabler

```yaml
env:
  IG_SHORTNAME: demo-at
```

Setter miljøvariabelen `IG_SHORTNAME` til `demo-at`, som representerer mappen og kortnavnet til implementasjonsguiden.

Workflowen krever også `contents: write`-tillatelse for å kunne publisere til `gh-pages`-branchen.

### Jobb: Publish

```yaml
jobs:
  publish:
    runs-on: ubuntu-latest
    container: hl7fhir/ig-publisher-base:latest 
```

Kjører jobben `publish` på en Ubuntu-latest runner, og bruker en Docker-container for HL7 FHIR IG Publisher.

#### Steg

- **Checkout og Node.js**

  ```yaml
  - uses: actions/checkout@v7
  - name: Setup Node.js
    uses: actions/setup-node@v7
    with:
      node-version: "22"
  ```

  Sjekker ut repository-koden og installerer Node.js.

- **Installer FHIR-pakker**

  ```yaml
  - name: Install FHIR packages
    run: |
      npm --registry https://packages.simplifier.net install hl7.fhir.r4.core@4.0.1
      npm --registry https://packages.simplifier.net install hl7.fhir.eu.base@2.0.1
      curl -L -o hl7.fhir.no.basis-2.2.2-snapshots.tgz https://raw.githubusercontent.com/HL7Norway/resources/main/snapshots/hl7.fhir.no.basis-2.2.2-snapshots.tgz
      npm install hl7.fhir.no.basis-2.2.2-snapshots.tgz
  ```

  Installerer FHIR R4 4.0.1, EU Base 2.0.1 og den lokale no-basis 2.2.2-snapshoten. Workflowen kopierer deretter no-basis-pakken til FHIR-pakkecachen.

- **Kjør IG Publisher med SUSHI**

  Workflowen installerer SUSHI globalt, laster ned siste `publisher.jar`, og kjører:

  ```bash
  cd demo-at
  java -jar ./input-cache/publisher.jar publisher -ig ig.ini
  ```

- **Deploy til GitHub Pages**

  ```yaml
  - name: 🚀 Deploy to GitHub-Pages
    uses: peaceiris/actions-gh-pages@v4
    with:
      github_token: ${{ secrets.GITHUB_TOKEN }}
      publish_dir: ${{ env.IG_SHORTNAME }}/output
      destination_dir: currentbuild
      commit_message: "${{ env.IG_SHORTNAME }}: build triggered by ${{ github.actor }} for commit ${{ github.sha }}"
  ```

  Publiserer den genererte HTML-siden til `gh-pages`-branchen under `currentbuild` for hosting med GitHub Pages.

## Tilpasning for eget bruk

For å tilpasse dette scriptet til eget bruk, kan du gjøre følgende endringer:

1. **Oppdater miljøvariabler**
  Endre verdien av `IG_SHORTNAME` til navnet på din egen implementasjonsguide.

2. **Oppdater pakkeversjoner**
  Hvis du bruker andre FHIR-pakker, oppdater versjonene i kommandoene for `npm` og `curl` slik at de samsvarer med `sushi-config.yaml`.

## Nyttige Ressurser

- [GitHub Actions Documentation](https://docs.github.com/en/actions)
- [FHIR IG Publisher Documentation](https://confluence.hl7.org/display/FHIR/IG+Publisher+Documentation)
- [Best Practices for Using GitHub Actions](https://docs.github.com/en/actions/learn-github-actions/best-practices-for-using-github-actions)

For å se hele scriptet i sin helhet, besøk [ig-gh-pages.yml](https://github.com/HL7Norway/ig-mal/blob/main/.github/workflows/ig-gh-pages.yml).
