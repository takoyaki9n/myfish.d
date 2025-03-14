set -l MYCONFIG_DIR (dirname (status filename))

# Set path to my functions
set -p fish_function_path $MYCONFIG_DIR/functions

# fzf
if type -q fzf
    set -U FZF_LEGACY_KEYBINDINGS 0
end

# Aliases for pbcopy & pbpaste
if set -q WSL_DISTRO_NAME
    # WSL
    alias pbcopy='powershell.exe -command "[Console]::InputEncoding = [System.Text.Encoding]::UTF8; Set-Clipboard -Value ([Console]::In.ReadToEnd())"'
    alias pbpaste='powershell.exe -command "[Console]::OutputEncoding = [System.Text.Encoding]::UTF8; Get-Clipboard"'
else if type -q xclip
    # Native Ubuntu (when xclip is installed)
    alias pbcopy='xclip -selection clipboard'
    alias pbpaste='xclip -selection clipboard -o'
end