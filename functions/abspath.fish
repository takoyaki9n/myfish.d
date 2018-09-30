function abspath -d "display absolute path"
    echo (cd (dirname $argv[1]); and pwd)/(basename $argv[1])
end