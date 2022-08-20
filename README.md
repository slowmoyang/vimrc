# oh-my-vim

## setup
### install neovim
#### Centos7
```zsh
cd ~/tmp
git clone -b stable https://github.com/neovim/neovim
cd neovim
make CMAKE_BUILD_TYPE=RelWithDebInfo CMAKE_EXTRA_FLAGS="-DCMAKE_INSTALL_PREFIX=$HOME/opt/neovim"
make install
export PATH="$HOME/opt/neovim/bin:$PATH"
```
#### macOS
```zsh
brew install neovim
```

### setup vimrc
```zsh
# https://github.com/junegunn/vim-plug#unix-linux
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
git clone git@github.com:slowmoyang/vimrc.git ~/config/vimrc
mkdir -vp ~/.vim/tmp/undo
```

### install plugins
```vim
PlugInstall
```

### install language servers
```vim
CocInstall coc-pyright
CocInstall coc-snippets
CocInstall coc-vimtex
CocInstall coc-clangd
```

## Tips
### Terminal
- `:vs|:te`
    - https://github.com/neovim/neovim/issues/3192#issuecomment-430422524
- `tnoremap <Esc> <C-\><C-n>`
    - https://til.hashrocket.com/posts/wa1bvrgjdd-escaping-terminal-mode-in-an-nvim-terminal
