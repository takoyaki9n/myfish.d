set -l MYCONFIG_DIR (dirname (status filename))

# Set path to my functions
set -p fish_function_path $MYCONFIG_DIR/functions

# fzf
set -U FZF_LEGACY_KEYBINDINGS 0

# autojump
begin
    set --local AUTOJUMP_PATH $HOME/.autojump/share/autojump/autojump.fish
    if test -e $AUTOJUMP_PATH
        source $AUTOJUMP_PATH
    end
end

# OS specific settings
switch (uname)
    case Linux # Linux
        source $MYCONFIG_DIR/linux.fish
    case Darwin # OSX
        source $MYCONFIG_DIR/osx.fish
    case FreeBSD NetBSD DragonFly
    case '*'
end