# Mac-Themes-Setup-for-Developers

## Show hidden Mac files
* To show hidden files, type `defaults write com.apple.finder AppleShowAllFiles YES`, followed by ` killall Finder` to restart the Finder.

## Change the Mac's default screenshot folder
By default, screenshots are saved on your desktop. I prefer keeping a clean desktop.
* Create a folder for your screenshots, for example, /Users/username/Documents/Screenshots. Drag the Screenshots folder in to the left panel in Finder to bookmark it.
* Change the default location of your screenshots with `defaults write com.apple.screencapture location /Users/username/Documents/Screenshots`

## Color Schemes for iTerm2
Felix Krause has a beautiful setup. [We will be following his guide](https://github.com/KrauseFx/what-terminal-is-felix-using). 

* [Install iTerm 2](https://www.google.ca/url?sa=t&rct=j&q=&esrc=s&source=web&cd=1&cad=rja&uact=8&ved=0ahUKEwjd1qSE7NPZAhVn5IMKHUvhDbYQFggpMAA&url=https%3A%2F%2Fwww.iterm2.com%2F&usg=AOvVaw1Yj_9jTyrGNrAOhT8FsuYl)
* [Install oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh)
	* `sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"`
* [Install Powerline-shell](https://github.com/b-ryan/powerline-shell) to get the cool path bars.
	* `pip install powerline-shell`
		* If you have the error "command not found: pip", use `brew install python`
		* If you have the error "Permission denied: '/Library/Python/2.7/...", use `sudo chown -R $USER /Library/Python/2.7`
		* If you have the errors "matplotlib 1.3.1 requires nose, which is not installed. matplotlib 1.3.1 requires tornado, which is not installed.", use `sudo -H pip install --ignore-installed matplotlib`.
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
	* Change the ZSH_THEME in your `.zshrc` to `ZSH_THEME="agnostor"`

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
	* My other favorite color schemes are in this repo. Double click a scheme to install. 
	* [More schemes can be found here.](https://github.com/mbadolato/iTerm2-Color-Schemes)

## Git Shortcuts
* After you've set up Oh My ZSH, in `~/.zshrc`, add
`alias fkbranch="git branch --merged | grep -v \"\*\" | grep -v develop | xargs -n 1 git branch -d"`.
This will allow the command `fkbranch` to remove all local branches that have been merged to develop.

## Color Themes for Terminal
* Though I prefer iTerm, if you prefer Terminal, feel free to copy `.bash_profile` & `TermTheme.scpt` into your home folder. Now you can switch to a random themes by typing the alias `l`.

## Color Themes for Xcode
* Add the themes to Applications -> Xcode.app/Contents/SharedFrameworks/DVTKit.framework/Versions/A/Resources/FontAndColorThemes

## Color Themes for RubyMine & IntelliJ IDEA
1. Go to `File | Import Settings...` and specify the theme directory or the settings.jar file. Click OK in the dialog that appears.

2. Restart IntelliJ IDEA or RubyMine

3. Go to `Preferences | Editor | Colors & Fonts` and select one of the new color themes.

## Copying keychain (i.e. Safari passwords)
* Export by ~/Library/Keychains
** See https://support.apple.com/kb/PH20120?locale=en_US

## Essential Software
* Xcode
* RubyMine
* Sourcetree
* Sublime
* Slack
* IntelliJIdea
* Homebrew
* CocoaPods
* iTerm 2
* Atom

* Skype
* Notability
* VLC Player
* Chrome
* Flux
* LICEcap
* Postman
* ShiftIt
