function xopen -d 'Open file'
    set -l xopen (which open)
    switch (uname)
        case Linux
            set xopen 'xdg-open'
        case Darwin
            set xopen 'open'
    end
    $xopen $argv
end