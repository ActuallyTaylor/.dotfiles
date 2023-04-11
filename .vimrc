"GENERAL SETTINGS
set nocompatible
filetype on
filetype plugin on
filetype indent on
syntax on
set number
set shiftwidth=4
set tabstop=4
set expandtab
set smarttab
set nowrap
set incsearch
set ignorecase
set showcmd
set showmode
set showmatch
set hlsearch
set history=1000
set wildmenu
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsxs
set wildmode=list:longest
set mouse=a
set title
set completeopt=noinsert,menuone,noselect
set backspace=indent,eol,start

set undodir=~/.vim/backup
set undofile
set undoreload=10000

" ALE Presettings
let g:ale_completion_enabled = 1

" PLUGINS
call plug#begin()

Plug 'dense-analysis/ale'
Plug 'preservim/nerdtree'
Plug 'catppuccin/vim', { 'as': 'catppuccin' }

call plug#end()

" THEME
" We are detecting the OS because on macOS iTerm2 takes care of all of the
" colors for us.
"let os = substitute(system('uname'), "\n", "", "")
"if os == "Linux"
"set termguicolors
":colorscheme catppuccin_macchiato
"endif

" STATUS LINE
set statusline=
set statusline+=\ %F\ %M\ %Y\ %R
set statusline+=%=
set statusline+=\ ascii:\ %b\ hex:\ 0x%B\ row:\ %l\ col:\ %c\ percent:\ %p%%
set laststatus=2

" MAPPING
map <F2> <Esc>:NERDTree<CR>

" Control VIM splits using CTRL+j, CTR+k, CTRL+h, CTRL+l.
" CTRL+j: Move to window below
" CTRL+k: Move to the window above
" CTRL+l: Move to the window to the left
" CTRL+h: Move to the window on the right
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

" Resize split windows using arrow keys
" CTRL+UP: Move split vertically up
" CTRL+DOWN: Move split vertically down
" CTRL+RIGHT: Move split to the right
" CTRL+LEFT: Move split to the left 
noremap <c-down> <c-w>+
noremap <c-up> <c-w>-
noremap <c-right> <c-w>>
noremap <c-left> <c-w><

let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_SR = "\<Esc>]50;CursorShape=2\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"
