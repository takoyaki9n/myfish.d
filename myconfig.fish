set -l MYCONFIG_DIR (dirname (status filename))

# Set path to my functions
set -p fish_function_path $MYCONFIG_DIR/functions

# fzf
if type -q fzf
    set -U FZF_LEGACY_KEYBINDINGS 0
end
