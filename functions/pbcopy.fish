function pbcopy -d 'Copy to the Clipboard'
    set -l pbcopy (which pbcopy 2> /dev/null)
    switch (uname)
        case Linux
            set pbcopy 'xsel' '--clipboard' '--input'
    end
    $pbcopy $argv
end