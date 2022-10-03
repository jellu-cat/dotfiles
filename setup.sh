CONFIG="$HOME/.config"
PWD="$(pwd)"

mkdir -v $CONFIG

## mkdir -vp $CONFIG/{bspwm,feh,git,i3,kitty,mpv,nvim,redshift,rofi,stalonetray,starship,sxhkd,gtk-3.0}

pwd

ln -s $PWD/bspwm $CONFIG
ln -s $PWD/feh $CONFIG
ln -s $PWD/git $CONFIG
ln -s $PWD/i3 $CONFIG
ln -s $PWD/kitty $CONFIG
ln -s $PWD/mpv $CONFIG
ln -s $PWD/redshift $CONFIG
ln -s $PWD/rofi $CONFIG
ln -s $PWD/stalonetray $CONFIG
ln -s $PWD/starship $CONFIG
ln -s $PWD/sxhkd $CONFIG
ln -s $PWD/gtk-3.0 $CONFIG
