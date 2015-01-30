# Config

**Config** is a basic checklist I follow to set up a new Mac's development environment. It gets me up to speed with Git, Ruby, GitHub, and more so I can more quickly get back to coding.

## Contents

| File | Description |
| --- | --- |
| `.bash-profile` | Customizes the Terminal.app prompt and echos the currently checked out Git branch. |
| `Preferences.sublime-settings` | My Sublime Text 2 user preferences. |

## Checklist

### 1. Prep OS X

- Download and install latest version of Xcode from the Mac App Store
- Download and install Xcode command line tools

### 2. Download dependencies

- Install [rbenv](https://github.com/sstephenson/rbenv)
- Install [a Ruby version](https://github.com/sstephenson/rbenv#installing-ruby-versions) (last one I used was `2.2.0p0`)
  - Set a [global Ruby version](https://github.com/sstephenson/rbenv#rbenv-global)
- Install Rails gem: `$ gem install rails`
- Download and run the [Node.js Mac installer](http://nodejs.org/download/)
- Install Grunt command line tools: `$ npm install -g grunt-cli`
- Install Bower: `$ npm install -g bower`

### 3. Prep Terminal.app

- Load [`.bash_profile`](/master/.bash_profile)
- Tweak color scheme (last one used was [ocean-terminal](https://github.com/mdo/ocean-terminal))
  - Set font size to `16pt`.

### 4. Tweak Sublime Text 3 just right

- [Install Package Control](https://sublime.wbond.net/installation):
  - Open Sublime Text 2 and hit `Ctrl-\``, then enter the following:
```bash
import urllib.request,os,hashlib; h = '2deb499853c4371624f5a07e27c334aa' + 'bf8c4e67d14fb0525ba4f89698a6d7e1'; pf = 'Package Control.sublime-package'; ipp = sublime.installed_packages_path(); urllib.request.install_opener( urllib.request.build_opener( urllib.request.ProxyHandler()) ); by = urllib.request.urlopen( 'http://packagecontrol.io/' + pf.replace(' ', '%20')).read(); dh = hashlib.sha256(by).hexdigest(); print('Error validating download (got %s instead of %s), please try manual install' % (dh, h)) if dh != h else open(os.path.join( ipp, pf), 'wb' ).write(by)
```
- Install and load packages (`Cmd-Shift-P`):
  - [EditorConfig](http://editorconfig.org) package
  - [Emmet](http://docs.emmet.io) package
  - [Handlebars](http://handlebarsjs.com) package
  - [Less](http://lesscss.org) package
  - [Sass](http://sass-lang.com) package
  - [Spacegray theme](http://kkga.github.io/spacegray/)

- Load user settings from [`Preferences.sublime-settings`](/master/Preferences.sublime-settings)
