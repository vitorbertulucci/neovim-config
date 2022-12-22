NVIM_CONFIG_FOLDER=~/.config/nvim
# Create neovim config folder
mkdir -p $NVIM_CONFIG_FOLDER

# Copy files to neovim folder
ln -s $(pwd)/init.lua $NVIM_CONFIG_FOLDER/init.lua
ln -s $(pwd)/after ~/.config/nvim/
ln -s $(pwd)/lua ~/.config/nvim/
