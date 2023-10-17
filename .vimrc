call plug#begin()

Plug 'preservim/nerdtree', { 'on': 'NERDTreeToggle' } |
            \ Plug 'Xuyuanp/nerdtree-git-plugin' |

Plug 'itchyny/lightline.vim'

Plug 'catppuccin/nvim', { 'as': 'catppuccin' }

Plug 'ycm-core/YouCompleteMe', { 'do': './install.py --all' }

Plug 'github/copilot.vim'

call plug#end()
" You can revert the settings after the call like so:
"   filetype indent off   " Disable file-type-specific indentation
"   syntax off            " Disable syntax highlighting

syntax on
filetype indent on
set laststatus=2
set relativenumber
set background=dark
colorscheme catppuccin 
set encoding=UTF-8
set noswapfile
set mouse=a
set ignorecase
