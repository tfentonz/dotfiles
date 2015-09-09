set -o vi

alias be="bundle exec"
alias ber="bundle exec ruby"
alias berc="bundle exec rails c"
alias brb='/System/Library/Frameworks/ScreenSaver.framework/Resources/ScreenSaverEngine.app/Contents/MacOS/ScreenSaverEngine'
alias clear="osascript -e 'if application \"Terminal\" is frontmost then tell application \"System Events\" to keystroke \"k\" using command down'"
alias mou="open -a Mou"
alias mvi="mvim"
alias mvidiff="mvimdiff"
alias svnedit='vim $(svn st | grep ^[AM] | cut -c9- | sort)'
alias tree='tree -I node_modules'

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
complete -o default -o nospace -W "$(/usr/bin/env ruby -ne 'puts $_.split(/[,\s]+/)[1..-1].reject { |host| host.match(/\*|\?/) } if $_.match(/^\s*Host\s+/);' < $HOME/.ssh/config)" scp sftp ssh
