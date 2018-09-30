set FISH_CONFIG_DIR (dirname (status --current-filename))

# source my config
source $FISH_CONFIG_DIR/myfish.d/myconfig.fish

# Local settings
## envs
### cargo
# if test -s ~/.cargo/env
#     source $HOME/.cargo/env
# end
### pyenv
# set -x PYENV_ROOT $HOME/.pyenv
# set -x PATH $PYENV_ROOT/bin $PATH
# if command -v pyenv 1>/dev/null 2>&1
#     # https://angristan.xyz/how-to-use-nvm-rbenv-pyenv-goenv-with-fish-shell/
#     source (pyenv init - | psub)
# end