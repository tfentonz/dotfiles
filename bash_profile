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
