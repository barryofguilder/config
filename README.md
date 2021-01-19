# Config

**Config** is a basic checklist I follow to set up a new Mac's development environment. It gets me up to speed so I can more quickly get back to coding.

Inspiration for this came from @mdo's [repository](https://github.com/mdo/config) of the same name.

## Contents

| File | Description |
| --- | --- |
| `.gitconfig` | Global Git configuration to specify my name and email, shortcuts, colors, and more. |
| `.zshrc` | Customizes the ZSH prompt and echos the currently checked out Git branch. |
| `vscode_settings.json` | My VSCode settings. |

## Checklist

### 1. Download dependencies
- Install [VSCode](https://code.visualstudio.com/)
- Install [Homebrew](https://brew.sh)
- Install [Git](https://git-scm.com/download/mac).
  - `brew install git`
- Install [nodenv](https://github.com/nodenv/nodenv#homebrew-on-macos)
- Install [Yarn](https://yarnpkg.com/en/docs/install)
- Install Ember CLI: `npm install -g ember-cli`

### 2. Prep Terminal.app

- Load [`.zshrc`](.zshrc)
  - Update `.zshrc` with the GitHub access token.
- Run `touch ~/.hushlogin` to remove "Last Login" message.
- Load [`.gitconfig`](.gitconfig) contents into the global `~/.gitconfig`
- Tweak color scheme (last one used was [ocean-terminal](https://github.com/mdo/ocean-terminal))
  - Set font size to `16pt`.
- Install [git-open](https://github.com/paulirish/git-open)

### 3. Tweak VSCode just right

- Load settings from [`vscode_settings.json`](vscode_settings.json)
- Install extensions:
  - [Auto Rename Tag](https://github.com/formulahendry/vscode-auto-rename-tag.git)
  - [C#](https://marketplace.visualstudio.com/items?itemName=ms-vscode.csharp)
  - [Docker](https://marketplace.visualstudio.com/items?itemName=PeterJausovec.vscode-docker)
  - [Docker Explorer](https://github.com/formulahendry/vscode-docker-explorer.git)
  - [Duplicate action](https://marketplace.visualstudio.com/items?itemName=mrmlnc.vscode-duplicate)
  - [EditorConfig](https://marketplace.visualstudio.com/items?itemName=EditorConfig.EditorConfig)
  - [Ember Language Server](https://github.com/emberwatch/vscode-ember)
  - [Ember Module Snippets](https://github.com/candidmetrics/ember-module-snippets)
  - [ESLint](https://marketplace.visualstudio.com/items?itemName=dbaeumer.vscode-eslint)
  - [Git Commits](https://github.com/Exelord/git-commits)
  - [Prettier](https://marketplace.visualstudio.com/items?itemName=esbenp.prettier-vscode)
  - [Tailwind CSS IntelliSense](https://github.com/bradlc/vscode-tailwindcss.git)

- Install themes:
  - [Base16 Ocean Dark Extended](https://marketplace.visualstudio.com/items?itemName=kleber-swf.ocean-dark-extended)
