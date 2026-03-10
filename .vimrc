" Only do this when compiled with support for autocommands
if has("autocmd")
    " Use file type detection and file-based automatic indenting
    filetype plugin indent on

    " Use actual tab chars in Makefiles
    autocmd Filetype make set tabstop=8 shiftwidth=8 softtabstop=0 noexpandtab
endif

syntax on

set showmatch

set tabstop=4

set shiftwidth=4

set softtabstop=4

set autoread

set smartindent

set number
    
set relativenumber

set cursorline

set expandtab

call plug#begin()

Plug 'ycm-core/YouCompleteMe'

Plug 'vim-airline/vim-airline'

Plug 'sheerun/vim-polyglot'

"for nord theme:
Plug 'arcticicestudio/nord-vim'

Plug 'https://github.com/tpope/vim-fugitive'

" fzf native plugin
Plug 'junegunn/fzf'
" fzf.vim
Plug 'junegunn/fzf.vim'

"Plug 'sainnhe/edge'
Plug 'NLKNguyen/papercolor-theme'

" for tokyo night:
Plug 'ghifarit53/tokyonight-vim'

call plug#end()

colorscheme nord

highlight Comment ctermfg=gray

highlight LineNr term=bold cterm=NONE ctermfg=red ctermbg=NONE

highlight Visual cterm=bold ctermbg=Blue ctermfg=NONE

highlight EndOfBuffer ctermfg=red
