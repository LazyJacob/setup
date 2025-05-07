# Required

## Packages 

### nvim

nvim >= 10

For ubuntu 24, we will need the unstable version

```
sudo add-apt-repository ppa:neovim-ppa/unstable
curl -fsSL https://deb.nodesource.com/setup_20.x | sudo -E bash -
sudo apt update
```

### packer

```
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```

Open packer.lua
It will throw errors

```
:so
:PackaerSync
```


### Ubuntu Packages

- GCC
- ripgrep
- nodejs

Need GCC to just get telescope working
ripgrep is used for telescope grep searching
nodejs is required for copilot

```
sudo apt-get install gcc ripgrep nodejs
```


