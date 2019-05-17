function trash -d 'Move to trash'
    set -l trash (which trash 2> /dev/null)
    switch (uname)
        case Darwin
            set trash 'rmtrash'
    end
    $trash $argv
end