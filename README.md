# Typescript-Template

Github template for typescript projects

[![TypeScript](https://img.shields.io/badge/TypeScript-3178C6)](https://www.typescriptlang.org)
[![ESLint](https://img.shields.io/badge/ESLint-4B32C3)](https://eslint.org)
[![Vitest](https://img.shields.io/badge/Vitest-6E9F18)](https://vitest.dev)
[![just](https://img.shields.io/badge/just-F5A623)](https://just.systems)
[![zizmor](https://img.shields.io/badge/zizmor-0A7B83)](https://docs.zizmor.sh)
[![gitleaks](https://img.shields.io/badge/gitleaks-D32F2F)](https://gitleaks.io)
[![prek](https://img.shields.io/badge/prek-6B4FBB)](https://prek.j178.dev)
[![markdownlint](https://img.shields.io/badge/markdownlint-555555)](https://github.com/DavidAnson/markdownlint)

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
