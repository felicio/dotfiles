umask 22
PATH="/usr/local/bin:/bin:/sbin:/usr/bin:/usr/sbin"

# Sources
. /etc/bash.functions
. /etc/vm.conf
. ${HOME}/.config/bash/aliases
. ${HOME}/.config/bash/functions
. ${HOME}/.npm-credentials
. ${HOME}/.config/bash/exports

# Subroutines
__configure_git() {
  . ${HOME}/git-completion.bash
  . ${HOME}/git-prompt.sh

  export GIT_PS1_SHOWDIRTYSTATE=1
  export PS1='\W $(__git_ps1 "(%s)")\$ '
}

__configure_npm() {
  . ~/npm-completion.sh
}

__configure_cmake() {
  export PATH="/Applications/CMake.app/Contents/bin:${PATH}"
}

__configure_mysql() {
  export PATH="${PATH}:/usr/local/mysql/bin"
  local SERVICE_PATH="/Library/LaunchDaemons/com.oracle.mysql.mysqld.plist"

  alias mysqlstart="sudo launchctl bootstrap system $SERVICE_PATH"
  alias mysqlstop="sudo launchctl bootout system $SERVICE_PATH"
}

__configure_sass() {
  export SASS_LIBSASS_PATH=/Users/Felicio/Documents/Developer/Web/libsass
  local style="expanded"
  local newlines="--unix-newlines"

  alias sass="sass --sourcemap=none -t $style"
  alias sassmin="sass --sourcemap=none -t compressed"
}

__configure_python() {
	export WORKON_HOME="$HOME/.virtualenvs/python2"
	# TODO
}

__configure_python3_6() {
  export WORKON_HOME="$HOME/.virtualenvs"
  export VIRTUALENVWRAPPER_PYTHON="`which python3.6`"
	export VIRTUALENVWRAPPER_VIRTUALENV="/Library/Frameworks/Python.framework/Versions/3.6/bin/virtualenv"
	export VIRTUALENVWRAPPER_VIRTUALENV_CLONE="/Library/Frameworks/Python.framework/Versions/3.6/bin/virtualenv-clone"

	source "/Library/Frameworks/Python.framework/Versions/3.6/bin/virtualenvwrapper.sh"
}

__configure_go() {
  export PATH=${PATH}:/usr/local/go/bin
}

__configure_git
#__configure_cmake
#__configure_mysql
#__configure_sass
#__configure_python3_6
#__configure_go
#__configure_npm

# Setting PATH for Python 3.6
# The original version is saved in .profile.pysave
#PATH="/Library/Frameworks/Python.framework/Versions/3.6/bin:${PATH}"
#export PATH

# Setting PATH for Python 2.7
# The original version is saved in .profile.pysave
#PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
#export PATH

# Setting PATH for Python 3.5
# The original version is saved in .profile.pysave
#PATH="/Library/Frameworks/Python.framework/Versions/3.5/bin:${PATH}"
#export PATH

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Arcanist
export PATH=${PATH}:${HOME}/arcanist/bin
. ${HOME}/arcanist/resources/shell/bash-completion
