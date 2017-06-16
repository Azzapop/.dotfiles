brew install fortune
brew install postgres

pip3 install thefuck

ln -s ~/.dotfiles/.gitconfig ~/.gitconfig
ln -s ~/.dotfiles/.gitignore_global ~/.gitignore_global

brew install macvim --with-override-system-vim
ln -s ~/.dotfiles/.vimrc ~/.vimrc
ln -s ~/.dotfiles/.vim ~/.vim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
ln -s ~/.dotfiles/.zshrc ~/.zshrc
rm -rf ~/.oh-my-zsh/custom
ln -s ~/.dotfiles/zsh-custom ~/.oh-my-zsh/custom

source ~/.zshrc
