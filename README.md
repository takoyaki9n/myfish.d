# myfish.d
My fish config.

## Install
```bash
cd ~/.config/fish
git clone git@github.com:takoyaki9n/myfish.d.git
fisher add < ~/.config/fish/myfish.d/fishfile
cp ~/.config/fish/myfish.d/config.default.fish ~/.config/fish/config.fish
cat ~/.config/fish/myfish.d/fish_start.bash >> ~/.bashrc
```
If you are using OSX, make sure that your `.profile` or `.bash_profile` is sourcing `.bashrc`.