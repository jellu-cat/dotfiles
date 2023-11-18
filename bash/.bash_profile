export PATH="$HOME/.local/bin:$PATH"

setxkbmap latam -option 'caps:ctrl_modifier'
xcape -e '#66=Escape'

eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

if [ -e /home/jellu/.nix-profile/etc/profile.d/nix.sh ]; then . /home/jellu/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer
