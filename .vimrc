" vim-plug
call plug#begin()

Plug 'preservim/nerdtree', { 'on': 'NERDTreeToggle' } |
            \ Plug 'Xuyuanp/nerdtree-git-plugin' |

Plug 'itchyny/lightline.vim'

Plug 'catppuccin/nvim', { 'as': 'catppuccin' }

Plug 'ycm-core/YouCompleteMe', { 'do': './install.py --all' }

Plug 'github/copilot.vim'

Plug 'easymotion/vim-easymotion'

Plug 'tpope/vim-fugitive'

Plug 'airblade/vim-gitgutter'

call plug#end()
" You can revert the settings after the call like so:
"   fileType indent off   " Disable file-type-specific indentation
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

" NERDTree
let g:NERDTreeWinSize = 50
autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p
" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
" Open the existing NERDTree on each new tab.
autocmd BufWinEnter * if &buftype != 'quickfix' && getcmdwintype() == '' | silent NERDTreeMirror | endif

" 启用 Git 插件
let g:loaded_git = 1

" 在状态栏中显示 Git 分支和状态
set statusline+=%{fugitive#statusline()}

" 设置 Git 分支和状态的颜色
highlight GitBranch guifg=#8FBCBB
highlight GitModified guifg=#D08770
highlight GitAdded guifg=#A3BE8C
highlight GitUntracked guifg=#BF616A
highlight GitDeleted guifg=#BF616A
highlight GitRenamed guifg=#EBCB8B
highlight GitUnmerged guifg=#D08770
highlight GitIgnored guifg=#4C566A
