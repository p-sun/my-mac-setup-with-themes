# Mac-Themes-Setup-for-Developers

## Randomize terminal themes with 'l'!
* To show hidden files, type `defaults write com.apple.finder AppleShowAllFiles YES`, followed by ` killall Finder` to restart the Finder.
* Double click the themes to install.

## iTerm
* [Install iTerm 2](https://www.google.ca/url?sa=t&rct=j&q=&esrc=s&source=web&cd=1&cad=rja&uact=8&ved=0ahUKEwjd1qSE7NPZAhVn5IMKHUvhDbYQFggpMAA&url=https%3A%2F%2Fwww.iterm2.com%2F&usg=AOvVaw1Yj_9jTyrGNrAOhT8FsuYl)
* [Install oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh)
* Open the `~/.zshrc` file and replace the theme name to agnoster `ZSH_THEME="agnoster"`.
* [Install Powerline fonts for the agnoster theme](https://github.com/powerline/fonts)
* In iTerm2, go to Preferences -> Profiles -> Text -> Change Font -> Pick `inconsolata for Powerline`
* My favorite color schemes are in this repo. [More schemes can be found here.](https://github.com/mbadolato/iTerm2-Color-Schemes)
* Double click a scheme to install. Then chose the scheme from Preferences -> Profiles -> Colors -> Color presets.

## Terminal
* Though I prefer iTerm, if you prefer Terminal, feel free to copy `.bash_profile` & `TermTheme.scpt` into your home folder. Now you can switch to a random themes by typing the alias `l`.

## Xcode
* Add the themes to Applications -> Xcode.app/Contents/SharedFrameworks/DVTKit.framework/Versions/A/Resources/FontAndColorThemes

## RubyMine & IntelliJ IDEA
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
