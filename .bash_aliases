# mapping eza to ls
alias ls='eza --oneline --group-directories-first'
alias lsa='eza --oneline --group-directories-first --all'
alias ll='eza --long --group-directories-first'
alias lla='eza --long --group-directories-first --all'

# Show weather in at home
alias weather='curl -s wttr.in/odder'

# Copy with rsync and show progress bar
alias cpv="rsync -avh --info=progress"

# function - mkdir and cd in to said dir
mkcd(){ mkdir -pv "$1" && cd "$1" ; }

# shows the $PATH, with each folder on a separate line.
alias path='echo -e ${PATH//:/\\n}'

# alias to map cat to batcat
# alias cat='bat -p'

#
alias zel='/usr/bin/zellij'

# Show file sizes in dir
alias filesizeInDir='du -sh * | sort -hr'

# show mounts
alias mnt='mount | grep -E ^/dev | column -t'

# rofi power menu
alias PowerMenu="rofi -show p -modi p:'~/.config/rofi/power-menu/rofi-power-menu' -font 'JetBrains Mono NF 25' -theme-str 'window {width: 8em;} listview {lines: 6;}'"
