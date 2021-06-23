map <F5> :!latexmk -pdf %<CR><CR>
map <F4> :!zathura $(echo % \| sed 's/tex$/pdf/') & disown <CR><CR>
map <F6> :setlocal spell! spelllang=en_us<CR>

" Key bindings to make vim more like an IDE

inoremap <Space><Space> <Esc>/<++><Enter>"_c4l
nnoremap <Space><Space> <Esc>/<++><Enter>"_c4l
" Groff / Nroff Keybindings
autocmd BufNewFile,BufRead *.ms inoremap ;n <Esc>ggi.TL<Enter><++><Enter><Enter>.AU<Enter><++><Enter><Enter>.NH 1<Enter><++><Enter><Enter><Esc>ggjcc
autocmd BufNewFile,BufRead *.ms inoremap ;p .PP<Enter><Enter><++><Esc>ki
autocmd BufNewFile,BufRead *.ms inoremap ;b <Enter>.B<Space>""<Enter><++><Esc>k0wwa
autocmd BufNewFile,BufRead *.ms inoremap ;i <Enter>.I<Space>""<Enter><++><Esc>k0wwa

" LaTeX Keybindings
autocmd BufNewFile,BufRead *.tex inoremap ;n <Esc>:read ~/fl/templates/template.tex<CR>
autocmd BufNewFile,BufRead *.tex inoremap ;ch <Enter>\chapter{}<Enter><++><Esc>k0wwa
autocmd BufNewFile,BufRead *.tex inoremap ;s <Enter>\section{}<Enter><++><Esc>k0wwa
autocmd BufNewFile,BufRead *.tex inoremap ;ss <Enter>\subsection{}<Enter><++><Esc>k0wwa
autocmd BufNewFile,BufRead *.tex inoremap ;sss <Enter>\subsubsection{}<Enter><++><Esc>k0wwa
autocmd BufNewFile,BufRead *.tex inoremap ;bf \textbf{}<Space><++><Esc>bba
autocmd BufNewFile,BufRead *.tex inoremap ;em \emph{}<Space><++><Esc>bba
autocmd BufNewFile,BufRead *.tex inoremap ;tt \texttt{}<Space><++><Esc>bba
autocmd BufNewFile,BufRead *.tex inoremap ;code <Enter>\begin{lstlisting}<Enter>\end{lstlisting}<Enter><Enter><++><Esc>kkO
autocmd BufNewFile,BufRead *.tex inoremap ;beg <Enter>\begin{delrn}<Enter><++><Enter><Esc>i\end{delrn}<Enter><Enter><++><Esc>4k:MultipleCursorsFind<Space>delrn<Enter>c
autocmd BufNewFile,BufRead *.tex inoremap ;up <++><Esc>/\\usepackage<Enter>o\usepackage{}<Esc>i
autocmd BufNewFile,BufRead *.tex inoremap ;c \textcite{}<Space><++><Esc>bba
