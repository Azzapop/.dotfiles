ln -s ~/.dotfiles/.gitconfig ~/.gitconfig
ln -s ~/.dotfiles/.gitignore_global ~/.gitignore_global

brew install rbenv
gem install bundler
bundle config build.nokogiri '-- --use-system-libraries=true --with-xml2-include=/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX10.12.sdk/usr/include/libxml2/'

brew install node
brew install yarn

brew install python3

brew install fortune
brew install postgres
brew install heroku
brew install rtv
brew install autoenv
brew install thefuck
brew install trash

brew install macvim --with-override-system-vim
ln -s ~/.dotfiles/.vimrc ~/.vimrc
ln -s ~/.dotfiles/.vim ~/.vim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall

curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh
ln -s ~/.dotfiles/.zshrc ~/.zshrc
rm -rf ~/.oh-my-zsh/custom
ln -s ~/.dotfiles/zsh-custom ~/.oh-my-zsh/custom

chsh -c /bin/zsh
