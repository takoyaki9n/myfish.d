# source my config
source $__fish_config_dir/myfish.d/myconfig.fish

# Local settings
## cargo
if [ -s "$HOME/.cargo/env" ]
    source $HOME/.cargo/env
end
