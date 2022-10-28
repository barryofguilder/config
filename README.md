# Config

**Config** is a basic checklist I follow to set up a new Mac's development environment. It gets me up to speed so I can more quickly get back to coding.

Inspiration for this came from @mdo's [repository](https://github.com/mdo/config) of the same name.

## Contents

| File                   | Description                                                                         |
| ---------------------- | ----------------------------------------------------------------------------------- |
| `.gitconfig`           | Global Git configuration to specify my name and email, shortcuts, colors, and more. |
| `.vimrc`               | Customizes VIM with some basic config.                                              |
| `.zshrc`               | Customizes the ZSH prompt and echos the currently checked out Git branch.           |
| `vscode_settings.json` | My VSCode settings.                                                                 |

## Checklist

### SSH key

- Create a key and make sure to set a passphrase
  ```sh
  ssh-keygen -t rsa -b 4096
  ```
- Set up SSH Agent Forwarding and store the passphrase in your keychain
  ```sh
  ssh-add -K ~/.ssh/id_rsa
  ```
- Add the [SSH key to Github](https://github.com/settings/keys)
  - Use the following command to copy the key to your clipboard:
    ```sh
    cat $HOME/.ssh/id_rsa.pub | pbcopy
    ```

### Download dependencies

- Install Xcode Command Line Tools
  ```sh
  xcode-select --install
  ```
- Install [VSCode](https://code.visualstudio.com/)
- Install [Homebrew](https://brew.sh)
- Install [Git](https://git-scm.com/download/mac).
  ```sh
  brew install git
  ```
- Install [Volta](https://volta.sh/)
- Install the latest Node LTS version
  ```sh
  volta install node
  ```
- Install Ember CLI
  ```sh
  npm install -g ember-cli
  ```

### Tweak VSCode just right

- Install `code` command by opening command palette (Shift + CMD + P) and type "shell command" to find the "Shell Command: Install `code` command in PATH" command.
- Load settings from [`vscode_settings.json`](vscode_settings.json)
- Install extensions:
  - [Auto Close Tag](https://marketplace.visualstudio.com/items?itemName=formulahendry.auto-close-tag)
  - [Auto Rename Tag](https://marketplace.visualstudio.com/items?itemName=formulahendry.auto-rename-tag)
  - [Docker](https://marketplace.visualstudio.com/items?itemName=PeterJausovec.vscode-docker)
  - [Docker Explorer](https://marketplace.visualstudio.com/items?itemName=formulahendry.docker-explorer)
  - [Duplicate action](https://marketplace.visualstudio.com/items?itemName=mrmlnc.vscode-duplicate)
  - [EditorConfig](https://marketplace.visualstudio.com/items?itemName=EditorConfig.EditorConfig)
  - [Ember Module Snippets](https://marketplace.visualstudio.com/items?itemName=candidmetrics.ember-module-snippets)
  - [ESLint](https://marketplace.visualstudio.com/items?itemName=dbaeumer.vscode-eslint)
  - [GitLens](https://marketplace.visualstudio.com/items?itemName=eamodio.gitlens)
  - [Markdown Preview Enhanced](https://marketplace.visualstudio.com/items?itemName=shd101wyy.markdown-preview-enhanced)
  - [Prettier - Code formatter](https://marketplace.visualstudio.com/items?itemName=esbenp.prettier-vscode)
  - [Stable Ember Language Server](https://marketplace.visualstudio.com/items?itemName=lifeart.vscode-ember-unstable)
  - [Tailwind CSS IntelliSense](https://marketplace.visualstudio.com/items?itemName=bradlc.vscode-tailwindcss)
  - [Vim - Vim Emulation](https://marketplace.visualstudio.com/items?itemName=vscodevim.vim)
- Install themes:
  - [Base16 Ocean Dark Extended](https://marketplace.visualstudio.com/items?itemName=kleber-swf.ocean-dark-extended)

### Prep Terminal

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
- Load [`.vimrc`](.vimrc)
  - Create file and open it in VSCode and paste the contents.
    ```sh
    touch ~/.vimrc | code ~/.vimrc
    ```
- Create an SSH config file so that your SSH passphrase is pulled from your keychain

  - Create the file
    ```sh
    touch ~/.ssh/config | code ~/.ssh/config
    ```
  - Paste the following contents into the file and save
    ```
    Host *
      UseKeychain yes
    ```

- Tweak color scheme (last one used was [ocean-terminal](https://github.com/mdo/ocean-terminal))
  - Set font size to `16pt`.

### Configure macOS

- Enable key repeating
  ```sh
  defaults write -g ApplePressAndHoldEnabled -bool false
  ```
- Change key repeat speed in Keyboard System Preferences.
- Get rid of the floating thumbnail for screen shots.
  - Open Spotlight (CMD + Space) and search for "Screenshot.app".
  - Click the "Options" dropdown and de-select "Show floating thumbnail".
  - Press the Escape key to quit the app.

### Other apps

- Install [Logi Tune](https://www.logitech.com/en-us/video-collaboration/software/logi-tune-software.html) for webcam
- Install [MeetingBar](https://apps.apple.com/us/app/meetingbar/id1532419400)

### Prettier Configuration

You can have Prettier format your files on save for your projects.

- When you have a project open in VSCode, create a `.vscode` directory at the root of the project, then add a `settings.json` file in it.
- Add the following content to it removing any that aren't needed:
  ```json
  {
    "[css]": {
      "editor.defaultFormatter": "esbenp.prettier-vscode",
      "editor.formatOnSave": true
    },
    "[handlebars]": {
      "editor.defaultFormatter": "esbenp.prettier-vscode",
      "editor.formatOnSave": true
    },
    "[html]": {
      "editor.defaultFormatter": "esbenp.prettier-vscode",
      "editor.formatOnSave": true
    },
    "[javascript]": {
      "editor.defaultFormatter": "esbenp.prettier-vscode",
      "editor.formatOnSave": true
    },
    "[json]": {
      "editor.defaultFormatter": "esbenp.prettier-vscode",
      "editor.formatOnSave": true
    },
    "[markdown]": {
      "editor.defaultFormatter": "esbenp.prettier-vscode",
      "editor.formatOnSave": true
    },
    "[typescript]": {
      "editor.defaultFormatter": "esbenp.prettier-vscode",
      "editor.formatOnSave": true
    },
    "[yaml]": {
      "editor.defaultFormatter": "esbenp.prettier-vscode",
      "editor.formatOnSave": true
    }
  }
  ```
