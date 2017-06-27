set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'nvie/vim-flake8'
Plugin 'jonathanfilip/vim-lucius'
Plugin 'altercation/vim-colors-solarized'
Plugin 'lifepillar/vim-solarized8'
Plugin 'tssm/fairyfloss.vim'
Plugin 'mtglsk/wikipedia.vim'
Plugin 'morhetz/gruvbox'
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'Shougo/vimproc.vim'
Plugin 'Shougo/unite.vim'
Plugin 'davidhalter/jedi-vim'
Plugin 'leafgarland/typescript-vim'
Plugin 'Chiel92/vim-autoformat'
Plugin 'vim-syntastic/syntastic'
" Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

set splitbelow
set splitright

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Enable folding
set foldmethod=indent
set foldlevel=99
autocmd FileType py setlocal foldmethod=indent
"autocmd FileType py setlocal foldlevel=indent

" Enable folding with the spacebar
nnoremap <space> za

let g:SimpylFold_docstring_preview=1

" set t_Co=256
" let termguicolors

let python_highlight_all=1
syntax on

"set background=light
colorscheme lucius
LuciusLight
call togglebg#map("<F5>")

"if (exists('+colorcolumn'))
"       set colorcolumn=80
"       highlight ColorColumn ctermbg=9
"endif

autocmd BufNewFile,BufRead *.py source ~/.vim/vimrc-python
autocmd BufNewFile,BufRead *.js source ~/.vim/vimrc-web
autocmd BufNewFile,BufRead *.html source ~/.vim/vimrc-web
autocmd BufNewFile,BufRead *.css source ~/.vim/vimrc-web
autocmd BufNewFile,BufRead *.rb source ~/.vim/vimrc-ruby
autocmd BufNewFile,BufRead *.ts source ~/.vim/vimrc-typescript


set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_python_checkers = ['flake8']
"let g:syntastic_python_pylint_args = ''
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_mode_map = {
    \ "mode": "active",
    \ "passive_filetypes": ["py"] }
