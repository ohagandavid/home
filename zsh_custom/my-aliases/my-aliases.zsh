alias emacs="emacsclient -t"
alias E="SUDO_EDITOR=\"emacsclient -t -a emacs\" sudoedit"
alias grep="grep --exclude-dir={.git,.hg,.svn,build,.metadata,CVS} --exclude-from=\"$HOME/.grep_suppress\" --color=auto"
alias reloadZRC="dir=$(pwd); cd; \source $HOME/.zshrc; cd $dir"
