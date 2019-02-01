# Path to Oh My Fish install.
set -q XDG_DATA_HOME
  and set -gx OMF_PATH "$XDG_DATA_HOME/omf"
  or set -gx OMF_PATH "$HOME/.local/share/omf"

# Load Oh My Fish configuration.
source $OMF_PATH/init.fish
set -x -U GOPATH $HOME/go
set -x -U GOPATH $HOME/go

alias fishrc "subl ~/.config/fish/config.fish"
alias bashrc "subl ~/.bashrc"
alias gitconfig "subl ~/.gitconfig"
alias c "xclip"
alias v "xclip -o"
alias til "code /home/sangeet/hugo-blog/content/til/"
alias blog "code /home/sangeet/hugo-blog/content/posts/"
alias evolve "code /home/sangeet/Octobus/evolve/"

if test -d /usr/local/cuda/bin
    set PATH /usr/local/cuda/bin $PATH
end
set -x DYLD_LIBRARY_PATH /usr/local/cuda/lib /usr/local/cuda /usr/local/cuda/extras/CUPTI/lib
set -x LD_LIBRARY_PATH $DYLD_LIBRARY_PATH

set PATH $HOME/bin $PATH

# a set of lua exports for torch dnn library
set -x LUA_PATH '/home/sangeet/.luarocks/share/lua/5.1/?.lua;/home/sangeet/.luarocks/share/lua/5.1/?/init.lua;/home/sangeet/torch/install/share/lua/5.1/?.lua;/home/sangeet/torch/install/share/lua/5.1/?/init.lua;./?.lua;/home/sangeet/torch/install/share/luajit-2.1.0-beta1/?.lua;/usr/local/share/lua/5.1/?.lua;/usr/local/share/lua/5.1/?/init.lua'
set -x LUA_CPATH '/home/sangeet/.luarocks/lib/lua/5.1/?.so;/home/sangeet/torch/install/lib/lua/5.1/?.so;./?.so;/usr/local/lib/lua/5.1/?.so;/usr/local/lib/lua/5.1/loadall.so'
set PATH /home/sangeet/torch/install/bin $PATH
set -x LD_LIBRARY_PATH /home/sangeet/torch/install/lib $LD_LIBRARY_PATH
set -x DYLD_LIBRARY_PATH /home/sangeet/torch/install/lib $DYLD_LIBRARY_PATH
set -x LUA_CPATH '/home/sangeet/torch/install/lib/?.so;' $LUA_CPATH