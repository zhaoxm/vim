call plug#begin()

Plug 'preservim/nerdtree', { 'on': 'NERDTreeToggle' } |
            \ Plug 'Xuyuanp/nerdtree-git-plugin' |

Plug 'itchyny/lightline.vim'

Plug 'catppuccin/nvim', { 'as': 'catppuccin' }

Plug 'ycm-core/YouCompleteMe', { 'do': './install.py --all' }

Plug 'github/copilot.vim'

Plug 'easymotion/vim-easymotion'

call plug#end()
" You can revert the settings after the call like so:
"   filetype indent off   " Disable file-type-specific indentation
"   syntax off            " Disable syntax highlighting

let mapleader=" "
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

" EasyMotion 快捷键设置
let g:EasyMotion_startofline = 0  " 设置为 1 可以在行首使用 EasyMotion
nmap <leader><leader> <Plug>(easymotion-prefix)
