set SCRIPT_DIR (dirname (status --current-filename))

# Set path to my functions
set -x fish_function_path $fish_function_path $SCRIPT_DIR/functions

# OS specific settings
switch (uname)
case Linux # Linux
    source $SCRIPT_DIR/linux.fish
case Darwin # OSX
    source $SCRIPT_DIR/osx.fish
case FreeBSD NetBSD DragonFly
case '*'
end