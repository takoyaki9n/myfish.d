# source my config
source $__fish_config_dir/myfish.d/myconfig.fish

# Local settings
## envs
### cargo
# if [ -s "$HOME/.cargo/env" ]
#     source $HOME/.cargo/env
# end
### pyenv
# set -x PYENV_ROOT $HOME/.pyenv
# set -x PATH $PYENV_ROOT/bin $PATH
# if command -v pyenv 1>/dev/null 2>&1
#     # https://angristan.xyz/how-to-use-nvm-rbenv-pyenv-goenv-with-fish-shell/
#     source (pyenv init - | psub)
# end