# command shortcuts
alias ls='ls --color'
alias la='ls -a'
alias ll='ls -lahH'
alias npmgc='npm ls -gp --depth=0 | awk -F/ "/node_modules/ && !/\/npm$/ {print $NF}" | xargs npm -g rm'
alias md5sum='md5 -r'

# go aliases
alias du='duf'
alias dus='du -s'

# rust aliases
alias cat='bat -A --terminal-width -1'
alias el='eza --tree --level=2 --long'
alias ell='eza --header --long --git --group --created --modified --inode --grid'
alias find='fd'
alias hex='hexyl --border=none'
