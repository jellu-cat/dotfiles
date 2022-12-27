CONFIG="$HOME/.config"
PWD="$(pwd)"

echo "$PWD"
echo "$CONFIG"

mkdir -v $CONFIG

ln -s $PWD/bspwm $CONFIG
ln -s $PWD/feh/.fehbg $HOME
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
ln -s $PWD/lf $CONFIG
ln -s $PWD/xplr $CONFIG

ln -s $PWD/bash/.bash* $HOME
ln -s $PWD/Xmodmap/.* $HOME
ln -s $PWD/xinit/.* $HOME
ln -s $PWD/dirs/* $CONFIG

ln -s $PWD/stalonetray/.stalonetrayrc $HOME
ln -s $PWD/starship/starship.toml $CONFIG

sudo ln -s $PWD/libinput/* /etc/X11/xorg.conf.d/

mkdir ~/{desktop,downloads,templates,public,documents,music,pictures,videos}

xdg-user-dirs-update

