# Config

**Config** is a basic checklist I follow to set up a new Mac's development environment. It gets me up to speed so I can more quickly get back to coding.

Inspiration for this came from @mdo's [repository](https://github.com/mdo/config) of the same name.

## Contents

| File | Description |
| --- | --- |
| `.bash-profile` | Customizes the Terminal.app prompt and echos the currently checked out Git branch. |
| `.editorconfig` | The editor config file I use everywhere. |
| `.inputrc` | Customizes keyboard mappings for tab completion. |
| `atom_config.cson` | My Atom user preferences. |

## Checklist

### 1. Prep OS X

- Download and install latest version of Xcode from the Mac App Store
- Download and install Xcode command line tools

### 2. Download dependencies

- Install [Atom](https://atom.io)
- Install [Homebrew](https://brew.sh)
- Download and run the [Node.js Mac installer](https://nodejs.org/en/download/)
- Install [Yarn](https://yarnpkg.com/en/docs/install)
- Install Ember CLI: `$ npm install -g ember-cli`

### 3. Prep Terminal.app

- Load [`.bash_profile`](.bash_profile)
- Load [`.inputrc`](.inputrc)
- Tweak color scheme (last one used was [ocean-terminal](https://github.com/mdo/ocean-terminal))
  - Set font size to `16pt`.

### 4. Tweak Atom just right

- Load user configuration from [`atom_config.cson`](atom_config.cson)
- Install packages:
  - [atom-handlebars](https://atom.io/packages/atom-handlebars)
  - [editorconfig](https://atom.io/packages/editorconfig)
  - [ember-tabs](https://atom.io/packages/ember-tabs)
  - [emmet](https://atom.io/packages/emmet)
  - [file-icons](https://atom.io/packages/file-icons)
  - [linter-eslint](https://atom.io/packages/linter-eslint)
  - [platformio-ide-terminal](https://atom.io/packages/platformio-ide-terminal)

- Install themes:
  - [base16-syntax](https://atom.io/themes/base16-syntax)
