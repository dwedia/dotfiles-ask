# alias for dotfiles git  ### Not configured yet
# alias config='/usr/bin/git --git-dir=/home/ramiraz/.cfg/ --work-tree=/home/ramiraz/'

# mapping exa to ls
alias ls='exa --oneline --group-directories-first'
alias lsa='exa --oneline --group-directories-first --all'
alias ll='exa --long --group-directories-first'
alias lla='exa --long --group-directories-first --all'

# Show weather in at home
alias weather='curl -s wttr.in/odder'

# Copy with rsync and show progress bar
alias cpv="rsync -avh --info=progress"

# function - mkdir and cd in to said dir
mkcd(){ mkdir -pv "$1" && cd "$1" ; }

# shows the $PATH, with each folder on a separate line.
alias path='echo -e ${PATH//:/\\n}'

# alias to map cat to batcat
alias cat='bat -p'

#
alias zel='/usr/bin/zellij'

# Show file sizes in dir
alias filesizeInDir='du -sh * | sort -hr'

# show mounts
alias mnt='mount | grep -E ^/dev | column -t'
alias config='/usr/bin/git --git-dir=/home/ramiraz/.dotfilesGIT/ --work-tree=/home/ramiraz'
