function pbpaste -d 'Paste from the Clipboard'
    set -l pbpaste (which pbpaste)
    switch (uname)
        case Linux
            set pbpaste 'xsel --clipboard --output'
    end
    $pbpaste $argv
end