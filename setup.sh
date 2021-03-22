NVIM_CONFIG_FOLDER=~/.config/nvim
# Create neovim config folder
mkdir -p $NVIM_CONFIG_FOLDER

# Copy files to neovim folder
ln -s $(pwd)/init.vim $NVIM_CONFIG_FOLDER/init.vim
ln -s $(pwd)/plugin ~/.config/nvim/
ln -s $(pwd)/init.vim ~/.nvimrc
