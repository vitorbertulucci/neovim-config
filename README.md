This is my personal Neovim configuration file. Feel free to copy and use it as you wish. Any feedbacks are welcome too!

## Requirements

- Install Git
- Install [neovim](https://github.com/neovim/neovim)
- Install [packer](https://github.com/wbthomason/packer.nvim)

## Setup

Simply run `./setup.sh`. This command will create symbolic links with this project files and folders with your system's nvim folders, so that you can centralize all further updates in a single location.

Another thing here is that you can split your `init.lua` file in some short and specific plugin config files. Just create a new file inside `after/plugin/your-plugin-config.lua` and put your plugin configuration there.

I also like to add an alias to my shell config file, e.g. `~./zshrc` to use `vim` command to open `nvim`.

```
# ~/.zshrc file
alias vim=nvim
```

And then, open the `lua/tito/packer.lua` and execute `:PackerSync` to install all plugins.

That's it!

And thanks to [ThePrimeagen](https://www.youtube.com/channel/UC8ENHE5xdFSwx71u3fDH5Xw) for the vim tips, I really learn a lot from this guy.
