"""
" General
"""
" override VI compatiblity
set nocompatible

" enable plugins
execute pathogen#infect()

" enable filetype plugins
filetype plugin on
filetype indent on

" set the number of lines of history
set history=1000

" set to auto read when a file is changed
set autoread

" remap the leader key from the annoying '\' to something sensible
let mapleader=","
let g:mapleader=","

" :w!! sudo saves the current file
cmap w!! w !sudo tee % >/dev/null

"""
" User Interface
"""
" set 7 lines to the cursor
set so=7

" Turn on wild menu
set wildmenu

" Ignore compiled files
set wildignore=*.o,*~,.swp
if has("win16") || has("win32")
    set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.DS_Store
else
    set wildignore+=.git\*,.hg\*,.svn\*
endif

" show current position
set ruler

" turn realative line numbers on
set relativenumber 
" set number 

" Show (partial) command in status line.
set showcmd

" hide buffers instead of closing them
set hidden

" make backspace work as it should
set backspace=eol,start,indent
" set whichwrap+=<,>,h,l

" ignore case when searching
set ignorecase

" except when searching for an uppercase letter
set smartcase

" highlight search results
set hlsearch

" makes search act like search in modern browsers
set incsearch 

" don't redraw while executing macros (good performance config)
set lazyredraw 

" for regular expressions turn magic on
set magic

" show matching brackets when text indicator is over them
set showmatch 

" how many tenths of a second to blink when matching brackets
set matchtime=2

" no annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=

" This is a sequence of letters which describes how
" automatic formatting is to be done.
"
" letter    meaning when present in 'formatoptions'
" ------    ---------------------------------------
" c         Auto-wrap comments using textwidth, inserting
"           the current comment leader automatically.
" q         Allow formatting of comments with "gq".
" r         Automatically insert the current comment leader
"           after hitting <Enter> in Insert mode. 
" t         Auto-wrap text using textwidth (does not apply
"           to comments)
set formatoptions=c,q,r,t 

"""
" Colors and Font
"""
" enable syntax highlighting with the solarized theme
syntax enable
set background=dark
"colorscheme solarized

" set utf8 as encoding and en_US as language
set encoding=utf8

" use unix as filetype
set ffs=unix,dos,mac

"""
" File, backup and undo
"""
set undodir=~/.vim/undodir
set undofile
set undolevels=1000 "maximum number of changes that can be undone
set undoreload=10000 "maximum number lines to save for undo on a buffer reload

"""
" text, tab, indent
"""
" use spaces instead of tabs
" to insert a real tab, use ctrl-V <tab>
set expandtab

" use smarttab
set smarttab

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

" linebreak on 119 characters
"set textwidth=119

" auto indent
set autoindent

" smart indent
" set smartindent

" Use global register for copy and paste
set clipboard+=unnamed

"""
" Moving around
"""
" <space> is search and <c-space> is backwards search
map <space> /
map <c-space> ?

" map 0 to first non-blank character
map 0 ^

" disable highlight on <C-L>
nnoremap <C-L> :nohlsearch<CR><C-L>

" return to last edit position when opening files
autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif
" remember info about open buffers on close
set viminfo^=%

" disable arrow keys in normal mode
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

" disable arrow keys in insert mode
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>

"""
" Spell checking
"""
" pressing <leader>ss will toggle and untoggle spell checking
map <leader>ss :setlocal spell!<cr>

" Shortcuts using <leader>
map <leader>sn ]s
map <leader>sp [s
map <leader>sa zg
map <leader>s? z=
 
" Start interactive EasyAlign in visual mode (e.g. vip<Enter>)
vmap <Enter> <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. <Leader>aip)
nmap <Leader>a <Plug>(EasyAlign)
