# Config

**Config** is a basic checklist I follow to set up a new Mac's development environment. It gets me up to speed so I can more quickly get back to coding.

Inspiration for this came from @mdo's [repository](https://github.com/mdo/config) of the same name.

## Contents

| File | Description |
| --- | --- |
| `.bash-profile` | Customizes the Terminal.app prompt and echos the currently checked out Git branch. |
| `.editorconfig` | The editor config file I use everywhere. |
| `.gitconfig` | Global Git configuration to specify my name and email, shortcuts, colors, and more. |
| `.inputrc` | Customizes keyboard mappings for tab completion. |
| `vscode_settings.json` | My VSCode settings. |

## Checklist

### 1. Prep OS X

- Download and install latest version of Xcode from the Mac App Store.
- Download and install Xcode Command Line Tools from <https://developer.apple.com/downloads/>.
- Install [Git](https://git-scm.com/download/mac).

### 2. Download dependencies

- Install [VSCode](https://code.visualstudio.com/)
- Install [Homebrew](https://brew.sh)
- Download and run the [Node.js Mac installer](https://nodejs.org/en/download/)
- Install [Yarn](https://yarnpkg.com/en/docs/install)
- Install Ember CLI: `$ npm install -g ember-cli`

### 3. Prep Terminal.app

- Load [`.bash_profile`](.bash_profile)
- Load [`.inputrc`](.inputrc)
- Load [`.gitconfig`](.gitconfig) contents into the global `~/.gitconfig`
- Tweak color scheme (last one used was [ocean-terminal](https://github.com/mdo/ocean-terminal))
  - Set font size to `16pt`.
- Install [git-open](https://github.com/paulirish/git-open)
- Install [git-recent](https://github.com/paulirish/git-recent)

### 4. Tweak VSCode just right

- Load settings from [`vscode_settings.json`](vscode_settings.json)
- Install extensions:
  - [C#](https://marketplace.visualstudio.com/items?itemName=ms-vscode.csharp)
  - [Docker](https://marketplace.visualstudio.com/items?itemName=PeterJausovec.vscode-docker)
  - [Duplicate action](https://marketplace.visualstudio.com/items?itemName=mrmlnc.vscode-duplicate)
  - [EditorConfig](https://marketplace.visualstudio.com/items?itemName=EditorConfig.EditorConfig)
  - [Ember JS code snippets](https://marketplace.visualstudio.com/items?itemName=phanitejakomaravolu.EmberES6Snippets)
  - [ESLint](https://marketplace.visualstudio.com/items?itemName=dbaeumer.vscode-eslint)
  - [Prettier](https://marketplace.visualstudio.com/items?itemName=esbenp.prettier-vscode)

- Install themes:
  - [Base16 Ocean Dark Extended](https://marketplace.visualstudio.com/items?itemName=kleber-swf.ocean-dark-extended)
