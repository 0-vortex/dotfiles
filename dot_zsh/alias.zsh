# command replacements
alias cat='bat -A --terminal-width -1'
alias du='duf'
alias find='fd'

# command shortcuts
alias ls='ls --color'
alias la='ls -a'
alias ll='ls -lahH'
alias lal='ls -al'

alias d='dirs -v'
alias dus='du -s'
alias el='eza --tree --level=2 --long'
alias ell='eza --header --long --git --group --created --modified --inode --grid'
alias npmgc='npm ls -gp --depth=0 | awk -F/ "/node_modules/ && !/\/npm$/ {print $NF}" | xargs npm -g rm'

# 3rd party requirements
alias md5sum='md5 -r'
