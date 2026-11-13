# Typescript-Template

Github template for typescript projects

## Setup

- Install Homebrew
- Install `Brewfile`
  - `brew install bundle`
- Setup `fnm`
  - `just setup-fnm`
- Install dependencies
  - `npm install`
- Run renaming (migration) script
  - `just migrate`

## Commands

- `just build` - compile typescript (`npm run build`)
- `just test` - run unit tests (`npm run test`)
- `just test-watch` - run unit tests in watch mode (`npm run test:watch`)
- `just lint` - lint src and test code (`npm run lint`)
- `just lint-fix` - lint and fix src and test code (`npm run lint:fix`)
- `just ci` - unit tests, linting, and compiling typescript (`npm run ci`)
- `just zizmor` - audit GitHub Actions workflows
- `just gitleaks` - scan git history for secrets
- `just prek` - run pre-commit hooks on all files

## CI

The workflow in `.github/workflows/typescript.yml` runs on pushes and pull requests to `main`. It has a single job, `code-check-and-unit-test`

1. zizmor
2. gitleaks
3. Node (npm)

Actions are pinned to commit SHAs. Update the pins when bumping an action version.
