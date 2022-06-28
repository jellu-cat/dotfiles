"""""""""""""""""""""""""""""""""""""""""
" => Vim as a Word Processor
"""""""""""""""""""""""""""""""""""""""""
func! WordProcessor()
    map j gj
    map k gk

    " regarding the text fromatting
    setlocal formatoptions=1
    setlocal noexpandtab
    setlocal wrap
    setlocal linebreak

    " regarding spelling
    setlocal spell spelllang=es
    set complete+=s
endfu
com! WP call WordProcessor()
autocmd FileType html call WordProcessor()
