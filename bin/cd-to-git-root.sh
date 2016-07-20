# this is an alias you can drop in your .bashrc (or .profile or .bash_profile or .zshrc or whatever) that'll let 
# you use the command `cdp` to cd to the root of your project.

alias cdp='git rev-parse --show-toplevel 2&> /dev/null && cd $(git rev-parse --show-toplevel 2&> /dev/null) || echo "Not a git repository." && test'