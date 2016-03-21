set -o vi

alias ascii="man ascii | col -b | grep -A 55 'The octal set'"
alias be="bundle exec"
alias ber="bundle exec ruby"
alias berc="bundle exec rails c"
alias brb='/System/Library/Frameworks/ScreenSaver.framework/Resources/ScreenSaverEngine.app/Contents/MacOS/ScreenSaverEngine'
alias clear="osascript -e 'if application \"Terminal\" is frontmost then tell application \"System Events\" to keystroke \"k\" using command down'"
alias g=git
alias mou="open -a Mou"
alias mvi=mvim
alias mvidiff="mvimdiff"
alias tree='tree -I node_modules'
alias utcdate='TZ=utc date'

# pretty print json
alias jsontool='python -m json.tool'

# subversion
alias sd='svn diff'
alias ss='svn status'
alias svnedit='vim $(svn st | grep ^[AM] | cut -c9- | sort)'

export EDITOR=vim
export VISUAL=vim
export SVN_EDITOR=vi

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# powerline
powerline-daemon -q

function _update_ps1() {
  PS1="$(~/powerline-shell.py --colorize-hostname $? 2>/dev/null)"
}

[ "$TERM" != "linux" ] && {
  PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"
}

# ssh tab completion
complete -o default -o nospace -W "$(gawk '/^\s*Host\s+[^*?]/ { sub(/^\s*Host\s+/, ""); gsub(/\s+/, "\n"); print }' $HOME/.ssh/config)" scp sftp ssh

# tmuxinator tab completion
complete -o default -o nospace -W "$(cd $HOME/.tmuxinator; ls -1 | sed -e 's/\.yml$//')" mux

# functions
cdp () {
  TEMP_PWD=`pwd`
  while ! [ -f Gemfile ]; do
    cd ..
  done
  OLDPWD=$TEMP_PWD
  unset TEMP_PWD
}
