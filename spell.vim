" autocmd BufRead,BufNewFile *.md setlocal spell
autocmd FileType markdown setlocal spell
autocmd FileType tex setlocal spell

" https://coreyja.com/vim-spelling-suggestions-fzf/
" https://gitlab.com/mcepl/vim-fzfspell/-/blob/master/plugin/fzfspell.vim
function! FzfSpellSink(word)
  exe 'normal! "_ciw'.a:word
endfunction

function! FzfSpell()
  let suggestions = spellsuggest(expand("<cword>"))
  return fzf#run(fzf#wrap({'source': suggestions,
              \ 'sink': function("FzfSpellSink")}))
endfunction

nnoremap z= :call FzfSpell()<CR>
