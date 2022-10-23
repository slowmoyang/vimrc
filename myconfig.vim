set encoding=utf-8
set nu
set cursorline

set syntax=on
au BufReadPost .gitconfig set syntax=dosini
au BufReadPost zuliprc set syntax=dosini
au BufReadPost .pylintrc set syntax=dosini
au BufReadPost .clang-format set syntax=yaml
au BufReadPost *.blg set syntax=log



set colorcolumn=80
highlight ColorColumn ctermbg=darkgray

set softtabstop=4
set tabstop=4
set shiftwidth=4
set expandtab

autocmd FileType python setlocal softtabstop=4 tabstop=4 shiftwidth=4 expandtab
autocmd Filetype cpp setlocal expandtab tabstop=2 shiftwidth=2
autocmd FileType yaml setlocal expandtab tabstop=4 shiftwidth=4
autocmd Filetype tex setlocal expandtab tabstop=2 shiftwidth=2


nnoremap <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" persistent undo
" NOTE: need to mkdir ~/.vim/tmp/undo
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
try
    set undodir=~/.vim/tmp/undo
    set undofile
catch
endtry

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Parenthesis/bracket
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vnoremap
"   - v: visual mode
"   - nore: no recursive
"   - map: mapping
" https://vim.fandom.com/wiki/Mapping_keys_in_Vim_-_Tutorial_(Part_1)
" {cmd} {attr} {lhs} {rhs}
vnoremap $1 <esc>`>a)<esc>`<i(<esc>
vnoremap $2 <esc>`>a]<esc>`<i[<esc>
vnoremap $3 <esc>`>a}<esc>`<i{<esc>
vnoremap $$ <esc>`>a"<esc>`<i"<esc>
vnoremap $q <esc>`>a'<esc>`<i'<esc>
vnoremap $e <esc>`>a`<esc>`<i`<esc>

" Map auto complete of (, ", ', [
inoremap $1 ()<esc>i
inoremap $2 []<esc>i
inoremap $3 {}<esc>i
inoremap $4 {<esc>o}<esc>O
inoremap $q ''<esc>i
inoremap $e ""<esc>i


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" terminal
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" To map <Esc> to exit terminal-mode: >
tnoremap <Esc> <C-\><C-n>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <Leader>y "*y
map <Leader>p "*p
