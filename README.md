# 

```zsh
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
git clone git@github.com:slowmoyang/vimrc.git ~/config/vimrc
mkdir -vp ~/.vim/tmp/undo
```


```vim
CocInstall coc-pyright
CocInstall coc-snippets
CocInstall coc-vimtex
CocInstall coc-clangd
```

## Terminal
- `:vs|:te`
    - https://github.com/neovim/neovim/issues/3192#issuecomment-430422524
- `tnoremap <Esc> <C-\><C-n>`
    - https://til.hashrocket.com/posts/wa1bvrgjdd-escaping-terminal-mode-in-an-nvim-terminal
