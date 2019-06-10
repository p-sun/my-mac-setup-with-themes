# Mac Themes and Setup for Developers

## Show hidden Mac files
* To show hidden files, type `defaults write com.apple.finder AppleShowAllFiles YES`, followed by ` killall Finder` to restart the Finder.

## Change the Mac's default screenshot folder
By default, screenshots are saved on your desktop. I prefer keeping a clean desktop.
* Create a folder for your screenshots, for example, /Users/username/Documents/Screenshots. Drag the Screenshots folder in to the left panel in Finder to bookmark it.
* Change the default location of your screenshots with `defaults write com.apple.screencapture location /Users/username/Documents/Screenshots`

## Color Schemes for iTerm2
Felix Krause has a beautiful setup. [We will be following his guide](https://github.com/KrauseFx/what-terminal-is-felix-using). 

* [Install iTerm 2](https://www.google.ca/url?sa=t&rct=j&q=&esrc=s&source=web&cd=1&cad=rja&uact=8&ved=0ahUKEwjd1qSE7NPZAhVn5IMKHUvhDbYQFggpMAA&url=https%3A%2F%2Fwww.iterm2.com%2F&usg=AOvVaw1Yj_9jTyrGNrAOhT8FsuYl)
	* Once installed, go to iTerm2 -> Make iTerm2 Default Term
* [Install oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh)
	* `sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"`
	* Set zsh as your default shell with `chsh -s /bin/zsh`
* [Install Powerline-shell](https://github.com/b-ryan/powerline-shell) to get the cool bars that tell you which directory and git branch you're on.


```
git clone https://github.com/b-ryan/powerline-shell
cd powerline-shell
python setup.py install
```

* Go to your root user directory, change the ZSH_THEME in your `.zshrc` to `ZSH_THEME="agnostor"`
* Add the following to your `.zshrc`:

```
function powerline_precmd() {
  PS1="$(powerline-shell --shell zsh $?)"
}

function install_powerline_precmd() {
  for s in "${precmd_functions[@]}"; do
    if [ "$s" = "powerline_precmd" ]; then
      return
    fi
  done
  precmd_functions+=(powerline_precmd)
}

if [ "$TERM" != "linux" ]; then
    install_powerline_precmd
fi
```

* [Install Powerline fonts](https://github.com/powerline/fonts)
	* Open `install.sh` with iTerm2.
	* In iTerm2, go to Preferences -> Profiles -> Text -> Change Font -> Pick `Meslo LG M for Powerline`
* Customize the bars in Powerline-shell:
	* Powerline-shell is customizable through the use of a config file. You can generate the config file with
```
powerline-shell --generate-config > ~/.powerline-shell.json
```

* Then you can edit `.powerline-shell.json` in your user directory to add or remove bars in iTerm2. I like these settings:

```
{
   "segments": [
   "cwd",
   "git"
  ],
  "cwd": {
    "max_depth": 3
  }
}
```
* Quit iTerm2 and restart it to see the new Powerline Shell.
* To set the scheme to `SolarizedDark`, chose the scheme from Preferences -> Profiles -> Colors -> Color presets.
	* My other favorite color schemes are in this repo. Double click a scheme to install. Grape is my current favourite.
	* [More schemes can be found here.](https://github.com/mbadolato/iTerm2-Color-Schemes)

## Oh My ZSH Autocomplete
* Download zsh-autosuggestions

`git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions`

`nano ~/.zshrc find plugins=(git)`

* Append `zsh-autosuggestions & zsh-syntax-highlighting` to `plugins()` like this

`plugins=(git zsh-autosuggestions zsh-syntax-highlighting)`


## Visual Studio Code
To setup the zsh shell inside the terminal inside Visual Studio Code:
* Install [Nerdfonts](https://github.com/Homebrew/homebrew-cask-fonts) with Homebrew
```
brew tap homebrew/cask-fonts                # you only have to do this once!
brew cask install font-meslo-nerd-font
```
* Code -> Preferences -> Settings -> click the curley braces icon on the top right to edit the `settings.json`. Assuming yours started off blank, add these lines to use the zsh shell inside the integrated terminal inside VSCode.
```
{
    "terminal.external.osxExec": "iTerm.app",
    "terminal.integrated.shell.osx": "/bin/zsh",
    "terminal.integrated.fontFamily": "MesloLGM Nerd Font"
}
```

### 

## Color Themes

### Color Themes for Terminal
* Though I prefer iTerm, if you prefer Terminal, feel free to copy `.bash_profile` & `TermTheme.scpt` into your home folder. Now you can switch to a random themes by typing the alias `l`.

### Color Themes for Xcode
* Add the themes to Applications -> Xcode.app/Contents/SharedFrameworks/DVTKit.framework/Versions/A/Resources/FontAndColorThemes

### Color Themes for RubyMine & IntelliJ IDEA
1. Go to `File | Import Settings...` and specify the theme directory or the settings.jar file. Click OK in the dialog that appears.

2. Restart IntelliJ IDEA or RubyMine

3. Go to `Preferences | Editor | Colors & Fonts` and select one of the new color themes.

## Essential Software

### Essential AppStore Apps
* Xcode
* GIPHY Capture 
* Notability

### Essential Terminal
* iTerm 2
* Homebrew
* CocoaPods

### Essential Development
* Slack
* RubyMine
* Sourcetree
* Sublime
* IntelliJIdea
* Atom
* VSCode

### Misc Productivity
* Skype
* VLC Player
* Chrome
* Flux
* Postman
* ShiftIt

## ZSH Shortcuts
After you've set up Oh My ZSH, in `~/.zshrc`, add aliases to add some shortcuts you can use in terminal to replace commonly used commands.
* `alias gco="git checkout"` so you can write `gco -b feature/home_page` instead of `git checkout -b feature/home_page`
* `alias fkbranch="git branch --merged | grep -v \"\*\" | grep -v develop | xargs -n 1 git branch -d"`.
This will allow the command `fkbranch` to remove all local branches that have been merged to develop.
* `alias cdm="cd /Users/psun/Documents/My_Project_Folter" sets up an easy alias for jumping into the directory of your current project

## Copying keychain (i.e. Safari passwords)
* Export by ~/Library/Keychains
** See https://support.apple.com/kb/PH20120?locale=en_US
