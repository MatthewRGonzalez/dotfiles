syntax on

set mouse=a
syntax on

set mouse=a
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch 
set spell spelllang=en_us
set background=light
set nocompatible
set hidden
set encoding=utf-8

   

call plug#begin('~/.vim/plugged')


Plug 'tpope/vim-surround'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
Plug 'ycm-core/YouCompleteMe'
    " Theme
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'arcticicestudio/nord-vim'
Plug 'cormacrelf/vim-colors-github'
Plug 'junegunn/goyo.vim' 
Plug 'junegunn/limelight.vim'
Plug 'mhinz/vim-startify'
Plug 'Yggdroot/indentLine'    
    " Files    
Plug 'preservim/nerdtree'
Plug 'mbbill/undotree'   
Plug 'vim-ctrlspace/vim-ctrlspace'
Plug 'ctrlpvim/ctrlp.vim'

    " Tex
Plug 'lervag/vimtex'

    "For R 
Plug 'jalvesaq/Nvim-R'
Plug 'ncm2/ncm2'
Plug 'roxma/nvim-yarp'
Plug 'gaalcaras/ncm-R'

    "Misc
Plug 'Raimondi/delimitMate'
Plug 'PsychoLlama/vim-gol', { 'on': 'GOL' }


Plug 'ncm2/ncm2-bufword'
Plug 'ncm2/ncm2-path'

call plug#end()

colorscheme nord


let g:CtrlSpaceDefaultMappingKey = "<C-space> "

let g:tex_flavor = 'latex'
let g:vimtex_view_method = 'mupdf'

let g:nord_cursor_line_number_background = 1
let g:nord_uniform_status_lines = 1
let g:nord_bold_vertical_split_line = 1

let g:airline_theme='nord'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline#extensions#ctrlspace#enabled = 1

let g:CtrlSpaceStatuslineFunction =
   \  "airline#extensions#ctrlspace#statusline()"

let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1


set autochdir
let NERDTreeChDirMode=2


let g:limelight_conceal_ctermfg = 'grey'
autocmd VimEnter * Limelight
""#autocmd VimEnter * if !argc() | NERDTree | endif  " Load NERDTree only if vim is run without arguments
set completeopt=noinsert,menuone,noselect



autocmd FileType r inoremap <buffer> > <Esc>:normal! a%>%<CR>a 
autocmd FileType rnoweb inoremap <buffer> > <Esc>:normal! a%>%<CR>a 
autocmd FileType rmd inoremap <buffer> > <Esc>:normal! a%>%<CR>a 


"map <leader>nt :tabnew<cr>    " To create a new tab.
"map <leader>to :tabonly<cr>     " To close all other tabs (show only the current tab).
"map <leader>tc :tabclose<cr>    " To close the current tab.
"map <leader>tm :tabmove<cr>     " To move the current tab to next position.
"map <leader>tn :tabn<cr>        " To swtich to next tab.
"map <leader>tp :tabp<cr>        " To switch to previous tab.
map <silent> <C-n> :NERDTreeToggle<CR>


let g:python3_host_prog ='/usr/local/bin/python3'





nmap <C-s> <Plug>MarkdownPreview
    "What is nmap for stop preview? 
