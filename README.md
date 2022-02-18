# Config

**Config** is a basic checklist I follow to set up a new Mac's development environment. It gets me up to speed so I can more quickly get back to coding.

Inspiration for this came from @mdo's [repository](https://github.com/mdo/config) of the same name.

## Contents

| File                   | Description                                                                         |
| ---------------------- | ----------------------------------------------------------------------------------- |
| `.gitconfig`           | Global Git configuration to specify my name and email, shortcuts, colors, and more. |
| `.zshrc`               | Customizes the ZSH prompt and echos the currently checked out Git branch.           |
| `vscode_settings.json` | My VSCode settings.                                                                 |

## Checklist

### 1. Download dependencies

- Install [VSCode](https://code.visualstudio.com/)
  - Install `code` command by opening command palette (Shift + CMD + P) and type "shell command" to find the "Shell Command: Install `code` command in PATH" command.
- Install [Homebrew](https://brew.sh)
- Install [Git](https://git-scm.com/download/mac).
  - `brew install git`
- Install [Volta](https://volta.sh/)
  - Install global node
  ```sh
  # Go to https://nodejs.org/en/ to find latest LTS version and add it after `@`
  volta install node@<version>
  ```
- Install [Yarn](https://yarnpkg.com/en/docs/install)
- Install Ember CLI: `npm install -g ember-cli`

### 2. SSH Key

- Create a key
  ```sh
  ssh-keygen -t rsa -b 4096
  ```
- Set up SSH Agent Forwarding

  ```sh
  # -K stores the passphrase in your keychain
  ssh-add -K ~/.ssh/id_rsa

  # Copies key to clipboard for adding to Github
  cat $HOME/.ssh/id_rsa.pub | pbcopy
  ```

- Add the [SSH key to Github](https://github.com/settings/keys)

### 3. Prep Terminal.app

- Load [`.zshrc`](.zshrc)
  - Create file and open it in VSCode and paste the contents.
  ```sh
  touch ~/.zshrc | code ~/.zshrc
  ```
  - Update with the GitHub access token.
- Run `touch ~/.hushlogin` to remove "Last Login" message.
- Load [`.gitconfig`](.gitconfig)
  - Create file and open it in VSCode and paste the contents.
  ```sh
  touch ~/.gitconfig | code ~/.gitconfig
  ```
- Tweak color scheme (last one used was [ocean-terminal](https://github.com/mdo/ocean-terminal))
  - Set font size to `16pt`.
- Install [git-open](https://github.com/paulirish/git-open)

### 4. Tweak VSCode just right

- Load settings from [`vscode_settings.json`](vscode_settings.json)
- Install extensions:

  - [Auto Close Tag](https://marketplace.visualstudio.com/items?itemName=formulahendry.auto-close-tag)
  - [Auto Rename Tag](https://marketplace.visualstudio.com/items?itemName=formulahendry.auto-rename-tag)
  - [C#](https://marketplace.visualstudio.com/items?itemName=ms-vscode.csharp)
  - [Docker](https://marketplace.visualstudio.com/items?itemName=PeterJausovec.vscode-docker)
  - [Docker Explorer](https://marketplace.visualstudio.com/items?itemName=formulahendry.docker-explorer)
  - [Duplicate action](https://marketplace.visualstudio.com/items?itemName=mrmlnc.vscode-duplicate)
  - [EditorConfig](https://marketplace.visualstudio.com/items?itemName=EditorConfig.EditorConfig)
  - [Ember Language Server](https://marketplace.visualstudio.com/items?itemName=EmberTooling.vscode-ember)
  - [Ember Module Snippets](https://marketplace.visualstudio.com/items?itemName=candidmetrics.ember-module-snippets)
  - [ESLint](https://marketplace.visualstudio.com/items?itemName=dbaeumer.vscode-eslint)
  - [GitLens](https://marketplace.visualstudio.com/items?itemName=eamodio.gitlens)
  - [Markdown Preview Enhanced](https://marketplace.visualstudio.com/items?itemName=shd101wyy.markdown-preview-enhanced)
  - [Prettier - Code formatter](https://marketplace.visualstudio.com/items?itemName=esbenp.prettier-vscode)
  - [Tailwind CSS IntelliSense](https://marketplace.visualstudio.com/items?itemName=bradlc.vscode-tailwindcss)
  - [Vim - Vim Emulation](https://marketplace.visualstudio.com/items?itemName=vscodevim.vim)

- Install themes:
  - [Base16 Ocean Dark Extended](https://marketplace.visualstudio.com/items?itemName=kleber-swf.ocean-dark-extended)

### 5. Other

- Install [Logi Tune](https://www.logitech.com/en-us/video-collaboration/software/logi-tune-software.html) for webcam
