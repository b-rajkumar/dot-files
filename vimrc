set nu "sets line numbers
syntax on "colors the text based on type of file
set hlsearch "it coloured the searched text
set showcmd "shows the command in the right bottom corner
set ruler "shows the cursor position in the right bottom corner
set incsearch
set noswapfile

"Backup
set nobackup 

"Indentation
set expandtab
set tabstop=2 "sets no.of.spaces for a tab when a file is read '\t'
set softtabstop=2 "sets no.of.spaces for a tab when a tab is pressed while writing a file
set shiftwidth=2 "sets the no.of.spaces for intend
set autoindent
set smartindent

filetype indent on "sets intendentation according to the filetype

"Mapping
let mapleader=","
nnoremap <leader>w :w<cr>
nnoremap <leader><space> :set relativenumber!<cr>
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader># 0<C-v>G:s/^/#/<cr>:nohl<cr>``
nnoremap <leader>n# 0<C-v>G:s/#//<cr>:nohl<cr>``
nnoremap <c-u> gUiw
nnoremap L $
nnoremap H ^
nnoremap <leader>sv :source $MYVIMRC<cr>
inoremap <tab> <c-p>
inoremap <C-s> <esc>:w<cr>
nnoremap <leader>cd yyp
nnoremap <leader>m :nohl<cr>

nnoremap <C-j> <esc>:m+1<cr><esc>i
inoremap <C-j> <esc>:m+1<cr><esc>i
inoremap <C-k> <esc>:m-2<cr><esc>i
nnoremap <C-k> <esc>:m-2<cr><esc>i
"switching buffers
nnoremap <leader>nn :bnext<cr>
nnoremap <leader>np :bprev<cr>
nnoremap <leader>wq :wq<cr>
nnoremap <leader>q :q<cr>
nnoremap <leader>a maGVgg"*y'azz
nnoremap <leader>k <c-w><c-w>l
nnoremap <leader>n :NERDTree<cr>
vnoremap <C-y> "*y
inoremap f<TAB> <ESC>:s/\(.*\)/function \1() {}<cr>:nohl<cr>A<left>
inoremap ' ''<left>
inoremap " ""<left>
inoremap ( ()<left>
inoremap { {}<left>
inoremap , , 

"autocommands
augroup Comment
  autocmd!
  autocmd BufWritePre *.sh :normal gg=G``zz
  autocmd BufWritePre *.js :normal gg=G``zz
  autocmd Filetype javascript :nnoremap <leader>$ 0<C-v>G:s,^,//,<cr>:nohl<cr>`` 
  autocmd Filetype javascript :nnoremap <leader>n$ 0<C-v>G:s,^//,,<cr>:nohl<cr>`` 
augroup END
"displays all matched files when tab is pressed in command line
set wildmenu

"folding
set foldmethod=indent

