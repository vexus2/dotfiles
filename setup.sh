ln -s /Users/vexus2/Dropbox/dotfiles/.emacs.el $HOME/.emacs.el
ln -s /Users/vexus2/Dropbox/dotfiles/.screenrc $HOME/.screenrc
ln -s /Users/vexus2/Dropbox/dotfiles/.zshrc $HOME/.zshrc
ln -s /Users/vexus2/Dropbox/dotfiles/.zsh $HOME/.zsh
ln -s /Users/vexus2/Dropbox/dotfiles/.gitignore $HOME/.gitignore
ln -s /Users/vexus2/Dropbox/dotfiles/.gdbinit $HOME/.gdbinit
ln -s /Users/vexus2/Dropbox/dotfiles/.vim $HOME/.vim
ln -s /Users/vexus2/Dropbox/dotfiles/.vimrc $HOME/.vimrc
ln -s /Users/vexus2/Dropbox/dotfiles/import.scala $HOME/import.scala
ln -s /Users/vexus2/Dropbox/dotfiles/.vrapperrc $HOME/.vrapperrc
IFS=:
GIT=false
for d in $PATH
do test -x $d/git && GIT=true
done
if $GIT
then
  echo "git found!"
  git config --global user.name "vexus2"
  git config --global user.email "rinrin900@gmail.com"
  git config --global core.excludesfile "$HOME/.gitignore"
  ln -s /Users/vexus2/Dropbox/dotfiles/.gitconfig $HOME/.gitconfig
else echo "no git"
fi
