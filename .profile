[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
#export PATH="$PATH:/usr/local/share/npm/bin"

# ignore duplicates in history
export HISTIGNORE="&:ls:[bf]g:exit"
export HISTCONTROL=ignoreboth
export HISTFILESIZE=10000
export HISTTIMEFORMAT='%F %T '

# http://www.aloop.org/2012/01/19/flush-commands-to-bash-history-immediately/
export PROMPT_COMMAND='history -a'
# export PIP_DOWNLOAD_CACHE=~/Dropbox/dotfiles/pip/cache

# colored grep
export GREP_OPTIONS='--color=auto'
export GREP_COLOR='1;33'

# colored ls
export CLICOLOR=1
export LSCOLORS='Gxfxcxdxdxegedabagacad'

export PS1="\[$(tput setaf 3)\]> \[$(tput sgr0)\]\t \[$(tput setaf 6)\]\u\[$(tput sgr0)\]@\[$(tput setaf 6)\]\h \[$(tput setaf 3)\]\[\$(parse_git_branch)\] \[$(tput setaf 6)\]\w\n\[$(tput setaf 3)\]>\[$(tput sgr0)\] "

# This gets us the virtualenvwrapper commands
export WORKON_HOME="$HOME/Virtualenvs"
if [ -z "$VIRTUALENVWRAPPER_PYTHON" ]; then
    source virtualenvwrapper_lazy.sh
fi

if [ -f $(brew --prefix)/etc/bash_completion ]; then
    source $(brew --prefix)/etc/bash_completion
fi

alias l='ls'
alias ll='ls -alPGkpW'
alias lsl='ls -halF'
alias lsx='ls | grep [w-]x[r-]'
alias symlinks='find . type l exec ls {} \;'
alias readonlys='find -L . ! -perm -u+wr -exec ls -al {} \;'
alias executables='find -L . ! -perm +111 -exec ls -al {} \;'
alias dropbox_conflicts='find . | grep "conflicted"'
alias rmpyc="find . -name '*.pyc' -exec rm {} \;"

alias testnet='wget -O /dev/null http://cachefly.cachefly.net/100mb.test'
alias pyccohere='find * -name "*.py" -print0 | xargs -0 pycco --path'
alias ssh-keys='ssh-add -l'
alias mirror='wget -mk -e robots=off -w 1'
alias up2date='brew update && brew upgrade && brew cleanup'
alias http!='python -m SimpleHTTPServer 8080'
alias smtp!='python -m smtpd -n -c DebuggingServer localhost:1025'
alias backup='tar -zcvf'
alias untar='tar -zxvf'
alias flushdns='dscacheutil -flushcache'

alias elasticlaunch="elasticsearch -f -D es.config=/usr/local/opt/elasticsearch/config/elasticsearch.yml"

function __gitdir {
	if [ -z "${1-}" ]; then
		if [ -n "${__git_dir-}" ]; then
			echo "$__git_dir"
		elif [ -d .git ]; then
			echo .git
		else
			git rev-parse --git-dir 2>/dev/null
		fi
	elif [ -d "$1/.git" ]; then
		echo "$1/.git"
	else
		echo "$1"
	fi
}
export -f __gitdir


function parse_git_branch {
    local g="$(__gitdir)"
    [ -n "$g" ] || return
    ref=$(git symbolic-ref HEAD 2> /dev/null) || return
    echo "("${ref#refs/heads/}")"
}
export -f parse_git_branch

shopt -s 'cdspell'


# python stuff
function py {
    case "$1" in
        "run")
            shift;
            python -b -tt manage.py runserver 0.0.0.0:8080 "$@"
            ;;
        "ds")
            python -b -tt manage.py shell
            ;;
        "s")
            shift;
            python -b -tt "$@"
            ;;
        "schema")
            shift;
            python -b -tt manage.py schemamigration "$@"
            ;;
        "dbup")
            shift;
            python -b -tt manage.py migrate "$@"
            ;;
        "data")
            shift;
            python -b -tt manage.py datamigration "$@"
            ;;
        "search")
            shift;
            python -b -tt manage.py update_index "$@"
            ;;
        "rebuild")
            shift;
            python -b -tt manage.py rebuild_index "$@"
            ;;
        "m")
            shift;
            python -b -tt manage.py "$@"
            ;;
    esac
}
export -f py

function cd {
    builtin cd "$@" && ls -F
}
