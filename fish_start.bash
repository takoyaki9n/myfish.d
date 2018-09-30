# Skip fish
# env NO_FISH= bash
if [[ -z ${NO_FISH+x} ]]; then
    WHICH_FISH=`which fish`
    exec env SHELL=$WHICH_FISH $WHICH_FISH -i
fi