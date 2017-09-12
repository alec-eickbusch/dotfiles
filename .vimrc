set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Python folding
Plugin 'tmhedberg/SimpylFold'

" Indentation for python
Plugin 'vim-scripts/indentpython.vim'

" You complete me
Bundle 'Valloric/YouCompleteMe'

" syntax check after each save
"Plugin 'scrooloose/syntastic'

"PEP8 checking
"Plugin 'nvie/vim-flake8'

"Status bar
Plugin 'bling/vim-airline'

"NERDtree
Plugin 'scrooloose/nerdtree'

"Make NERDTree work with tabs
Bundle 'jistr/vim-nerdtree-tabs'

"Fugitive
Plugin 'tpope/vim-fugitive'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

"set my leader to space
let mapleader=" "

"numbers
set number

"Python color highlighting
let python_highlight_all=1
syntax on

"Syntastic settings 
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*
" 
" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 1
" let g:syntastic_check_on_wq = 0

" Show docstrings in code
let g:SimpylFold_docstring_preview=1

" You complete me preferences
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

"Change split movement to ctrl+direction
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"Default place for new splits
set splitbelow
set splitright


" enable folding
set foldmethod=indent
set foldlevel=99

"Python indentation
au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix |

au BufNewFile,BufRead *.js,*.html,*.css
    \ set tabstop=2 |
    \ set softtabstop=2 |
    \ set shiftwidth=2 |

"Flaging unnecessary whitespace
highlight BadWhitespace ctermbg=red guibg=darkred
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

" Python encoding
set encoding=utf-8

"Status bar, will update later.
:set laststatus=2 statusline=%f\ %m\ %{&fileencoding?&fileencoding:&encoding}
