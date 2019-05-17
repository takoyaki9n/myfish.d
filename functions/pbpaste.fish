function pbpaste -d 'Paste from the Clipboard'
    set -l pbpaste (which pbpaste 2> /dev/null)
    switch (uname)
        case Linux
            set pbpaste 'xsel' '--clipboard' '--output'
    end
    $pbpaste $argv
end