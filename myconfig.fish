set -l MYCONFIG_DIR (dirname (status filename))

# Set path to my functions
set -p fish_function_path $MYCONFIG_DIR/functions

# fzf
if type -q fzf
    set -U FZF_LEGACY_KEYBINDINGS 0
end

# pbcopy & pbpaste (Linux only)
if type -q xclip
    function pbcopy
        xclip -selection clipboard
    end

    function pbpaste
        xclip -selection clipboard -o
    end
end
