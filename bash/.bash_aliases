# some more ls aliases
alias ll='ls -lsh'
alias la='ls -A'
alias l='ls -CF'

alias bc="bc -l"

alias mkdir="mkdir -pv"

alias path="echo -e ${PATH//:/\\n}"
alias now="date +"%T""
alias nowdate="date +"%d-%m-%Y""

alias c="clear"

if [ $UID -ne 0 ]; then
    alias reboot="sudo reboot"
    alias update="sudo apt upgrade"
fi

alias z='nohup tabbed -f -r 2 zathura -e id'
alias v='vim'
