## About This Project Template

This repository provides a pre-configured project template designed to accelerate the development process. It includes essential tools, development best practices, and scripts for building, testing, linting, and deploying modern applications in a monorepo structure.

## Project Template Overview

This project template serves as a foundation for TypeScript-based monorepos using the following stack:

- 🧰 Tooling: pnpm, TurboRepo, TypeScript, ESLint, Prettier
- 📦 Monorepo management: Workspaces managed via pnpm
- ⚙️ Infrastructure-as-Code: AWS CDK
- 🧪 Quality: Gitleaks, Markdownlint, Husky Git hooks
- 🐳 Dev Environment: DevContainer for consistent setup
- 🚀 CI/CD ready: GitHub Actions integration supported

It is intended to provide a reproducible, maintainable, and scalable development environment for both frontend and infrastructure code.

## Repository Structure

This template follows a modular monorepo structure:

to be written

## Built-in Best Practices

This template includes:

- Enforced code standards via ESLint + Prettier
- Pre-commit checks with Husky
- Secret scanning with Gitleaks
- Workspace-aware builds and caching with TurboRepo
- Reproducible environments using DevContainer

These configurations aim to reduce setup time, enforce consistency, and catch common mistakes early in the development process.

## Customization

This template is designed to be easily extendable. You can:

- Add new packages under `packages/`
- Introduce additional linting or formatting rules
- Integrate other CI/CD pipelines or deployment tools
- Swap out infrastructure providers as needed (e.g., from AWS CDK to Terraform)

Feel free to tailor it to your team’s workflow or project requirements.

## Development Environment Tools

### Core Development Tools

| Tool    | Configured Version   | Version Check Command | Purpose                                   |
| ------- | -------------------- | --------------------- | ----------------------------------------- |
| Node.js | 22.13 (devcontainer) | node --version        | JavaScript/TypeScript runtime environment |
| pnpm    | 10.13.1              | pnpm --version        | Package manager                           |
| npm     | -                    | npm --version         | Node.js package manager                   |
| Git     | latest               | git --version         | Version control                           |
| Python  | 3.12 (devcontainer)  | python3 --version     | Python development environment            |
| AWS CLI | latest               | aws --version         | AWS operations                            |

### Build & Development Tools

| Tool       | Version | Version Check Command | Purpose               |
| ---------- | ------- | --------------------- | --------------------- |
| Turbo      | ^2.5.5  | pnpm turbo --version  | Monorepo build system |
| TypeScript | -       | pnpm tsc --version    | Type-safe JavaScript  |

### Code Quality & Linting Tools

| Tool              | Version | Version Check Command            | Purpose                      |
| ----------------- | ------- | -------------------------------- | ---------------------------- |
| ESLint            | ^9.32.0 | pnpm eslint --version            | JavaScript/TypeScript linter |
| Prettier          | ^3.6.2  | pnpm prettier --version          | Code formatter               |
| TypeScript ESLint | ^8.38.0 | pnpm eslint --version            | TypeScript ESLint rules      |
| Markdownlint      | ^0.18.1 | pnpm markdownlint-cli2 --version | Markdown linter              |

### Git Hooks & Security Tools

| Tool     | Version | Version Check Command | Purpose              |
| -------- | ------- | --------------------- | -------------------- |
| Husky    | ^9.1.7  | pnpm husky --version  | Git hooks management |
| Gitleaks | 8.18.1  | gitleaks version      | Secret detection     |

### ESLint Plugins

| Plugin                    | Version | Purpose                                     |
| ------------------------- | ------- | ------------------------------------------- |
| eslint-config-prettier    | ^10.1.8 | Avoid conflicts between Prettier and ESLint |
| eslint-plugin-prettier    | ^5.5.3  | Run Prettier as ESLint rule                 |
| eslint-plugin-react       | ^7.37.5 | ESLint rules for React                      |
| eslint-plugin-react-hooks | ^5.2.0  | ESLint rules for React Hooks                |

### Available Scripts

| Script             | Command        | Description                           |
| ------------------ | -------------- | ------------------------------------- |
| Development Server | pnpm dev       | Start application in development mode |
| Build              | pnpm build     | Production build                      |
| Lint               | pnpm lint      | Run code linting                      |
| Format             | pnpm format    | Run code formatting                   |
| Test               | pnpm test      | Run tests                             |
| Type Check         | pnpm typecheck | TypeScript type checking              |
| Markdown Lint      | pnpm lint:md   | Lint Markdown files                   |

```
root
├── apps/
│   ├── web/             # Frontend (Next.js, etc.)
│   ├── api/             # API Server (Hono, etc.)
│   └── admin/           # Admin panel or other apps
├── packages/
│   ├── infra/           # CDK code (AWS CDK)
│   ├── ui/              # Shared UI component library
│   └── utils/           # Common utility functions
├── .vscode/             # devcontainer and VSCode settings
├── .devcontainer/       # devcontainer.json, etc.
├── .gitignore
├── .npmrc
├── pnpm-workspace.yaml
├── package.json         # Root package.json (scripts & dependencies)
└── tsconfig.base.json   # Base TypeScript configuration
```

use following command in packages/infra dir.

```
cdk init app --language typescript
```
