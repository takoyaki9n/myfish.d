# source my config
source $__fish_config_dir/myfish.d/myconfig.fish

if status is-interactive
	set -U MACHINE_NAME "PutYourName"

	bass source "$HOME/.cargo/env"
end
