[private]
default:
    @just --list
build:
    npm run build
ci:
    npm run ci
gitleaks:
    gitleaks git --redact .
lint:
    npm run lint
lint-fix:
    npm run lint:fix
migrate:
    node migrate.ts
prek:
    prek run --all-files
setup-fnm:
    grep -qF 'fnm env' ~/.zshrc || echo 'eval "$(fnm env --use-on-cd --shell zsh)"' >> ~/.zshrc
    source ~/.zshrc
    fnm install
test:
    npm run test
test-watch:
    npm run test:watch
zizmor:
    zizmor .
