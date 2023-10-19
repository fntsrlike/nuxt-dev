# Nuxt 3 Minimal Starter

Look at the [Nuxt 3 documentation](https://nuxt.com/docs/getting-started/introduction) to learn more.

## Setup

**Prerequisites**

- Node.js - v18.18.0 or newer
- PNPM - v8.9.0 or newer
- Terminal

If you are using macOS, recommend to
- use Homebrew install `corepack`.
- use `packgeManager` in `package.json` to specific PNPM version.
- use `use-node-version` in `.npmrc` to  specific Node.js version.

**Install the dependencies**

```bash
pnpm install

```

## Development

### Editor
Recommend [Visual Studio Code](https://code.visualstudio.com/).

- Install VS Code extenstions (You can install them by executive `./scripts/install-vs-code-extenstions.sh`):
  - Vue.volar
- Turn on [Volar takeover mode](https://vuejs.org/guide/typescript/overview.html#volar-takeover-mode)
  - Call VS Code command palette by `Cmd + Shift + P`
  - Type `built` and select `Extensions: Show Built-in Extensions`.
  - Type `typescript` after `@builtin` in the extension search box
  - Click the little gear icon of `TypeScript and JavaScript Language Features`, and select `Disable (Workspace)`.
  - Reload the workspace. Takeover mode will be enabled when you open a Vue or TS file.

### Start the development server

defualt host on http://localhost:3000

```bash
pnpm run dev
```

## Production

Build the application for production:

```bash
pnpm run build
```

Locally preview production build:

```bash
pnpm run preview
```

Check out the [deployment documentation](https://nuxt.com/docs/getting-started/deployment) for more information.
