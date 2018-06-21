# loads virtualenvwrapper
#export WORKON_HOME=$HOME/.virtualenvs
#export VIRTUALENVWRAPPER_PYTHON=/usr/local/opt/python/libexec/bin/python
#export VIRTUALENVWRAPPER_VIRTUALENV=/usr/local/bin/virtualenv
#export PROJECT_HOME=$HOME/devs
#export VIRTUALENVWRAPPER_SCRIPT=/usr/local/bin/virtualenvwrapper.sh
#source /usr/local/bin/virtualenvwrapper_lazy.sh

#### GPG config
#export GPG_TTY=$(tty)
#
### Setup the gpg agent
### See https://github.com/pstadler/keybase-gpg-github
#if test -f ~/.gnupg/.gpg-agent-info -a -n "$(pgrep gpg-agent)"; then
#  source ~/.gnupg/.gpg-agent-info
#  export GPG_AGENT_INFO
#  GPG_TTY=$(tty)
#  export GPG_TTY
#else
#  eval $(gpg-agent --daemon --write-env-file ~/.gnupg/.gpg-agent-info)
#fi


## after installing SDKMAN:
export SDKMAN_DIR="/Users/raphael/.sdkman"
[[ -s "/Users/raphael/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/raphael/.sdkman/bin/sdkman-init.sh"

