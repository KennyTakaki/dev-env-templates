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