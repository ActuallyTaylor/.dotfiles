"GENERAL SETTINGS

set nocompatible " Disable compatibility with VI

" Setup files to have syntax highlighting 
filetype plugin on
filetype indent on

" Remap Ctrl-C and Ctrl-v to use the system clipboard for yanking and pasting
map <C-c> "*y
map <C-v> "*p

" Make the end of the lines wrap
set ww+=<,>,[,]

lua require('init')

