# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/juan/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

if [ -z "$DISPLAY" ] && [ -n "$XDG_VTNR" ] && [ "$XDG_VTNR" -eq 1 ]; then
  exec startx
fi

alias enw='emacs -nw'

export PATH=~/bin:$PATH
export PATH=~/Programming/pebble-dev/pebble-sdk-4.5-linux64/bin:$PATH
export PATH=~/pebble-dev/pebble-sdk-4.5-linux64/bin:$PATH
export PATH=~/.cargo/bin:$PATH
export RUST_SRC_PATH=~/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/src
export PATH=~/.gem/ruby/2.4.0/bin:$PATH
#export PATH="$PATH:$HOME/programming/esp/xtensa-esp32-elf/bin"
#export IDF_PATH=~/programming/esp/esp-idf
export PATH=~/Documents/programming/osdev/opt/cross:$PATH
export PATH=~/.local/bin:$PATH
#xrdb ~/.Xresources
