# New system setup steps

1. In the terminal, generate an ssh key for the new user

```
ssh-keygen
```

2. Copy your new ssh key to your clipboard

```
pbcopy < ~/.ssh/id_rsa.pub
```

For non mac systems you will have to copy the ssh key from the above path using your preferred method

3. Add the new ssh key to your github account at the following url

[https://github.com/settings/ssh/new](https://github.com/settings/ssh/new)

4. Clone the repo

```
git clone git@github.com:Azzapop/.dotfiles.git
```


### The plan

* Directories to categorize files e.g. git, vim, zsh
* File extensions based on their use e.g. .sym for symlink, .bev for brew formulas
* Shell script will iterate over things and install everyhting correctly
* Test all this on old laptop
* Write a better README/instruction manual

brew cask install caffeine

brew cask install dropbox

brew cask install evernote

brew cask install firefox

brew cask install google-chrome

brew cask install google-drive

brew cask install iterm2

brew cask install kindle

brew cask install omnigraffle

brew cask install skype

brew cask install slack

brew cask install spectacle

brew cask install spotify

brew cask install sublime

brew cask install the-unarchiver

brew cask install utorrent

brew cask install virtualbox

brew install macvim

brew install dockutil

brew cask install intellij-idea

brew install gpg

brew cask install java

brew install jq

pip3 install visidata

npm install -g firebase-tools

brew install exa

brew install geth
