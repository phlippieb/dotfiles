" VUNDLE
" https://github.com/VundleVim/Vundle.vim

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'git://github.com/apple/swift.git', {'rtp': 'utils/vim/','name': 'Swift-Syntax'}
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'ervandew/supertab'
Plugin 'itchyny/lightline.vim'
Plugin 'sjl/badwolf'
Plugin 'tpope/vim-sleuth.git'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'junegunn/fzf.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'jiangmiao/auto-pairs'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" END VUNDLE

set hls
syntax on

"set background=dark
"colorscheme badwolf

" Lightline (https://github.com/itchyny/lightline.vim)
" Auto-selected
set laststatus=2
if !has('gui_running')
  set t_Co=256
endif
set noshowmode

set backspace=eol,start,indent
set whichwrap+=<,>,h,l
set linebreak

set ignorecase
set smartcase

set magic

set noerrorbells
set novisualbell

set expandtab
set shiftwidth=3
set tabstop=3
set smartindent
set ai
set si
"mouse enabled. to copy to clipb, highlight w/ <shift> held, to paste use <shift><insert>
"set mouse=a

func! StartConqueTermBelow()
   ConqueTermSplit bash
   resize -20
endfu
command! CC call StartConqueTermBelow()

" Relative line numbers
set number relativenumber
" Highlight current line
:hi cursorlinenr ctermfg=red
 
" Pressing space in normal mode inserts a single space and returns to normal
" mode.
nmap <space> i <esc>r

" clear search highlights by pressing ctrl+l
nnoremap <silent> <C-l> :nohl<CR><C-l>

" map `K` to 'split line' (similar to how `J` means 'join line')
:nnoremap K i<CR><Esc>

au BufNewFile,BufFilePre,BufRead *.md set filetype=markdown

" Tab sortcuts: 
nnoremap <C-k> :tabprevious<CR>
nnoremap <C-j> :tabnext<CR>

" Simplified split navigation -- Just Ctrl + Direction
" nnoremap <C-J> <C-W><C-J>
" nnoremap <C-K> <C-W><C-K>
" nnoremap <C-L> <C-W><C-L>
" nnoremap <C-H> <C-W><C-H>

" More natural split location
set splitbelow
set splitright

" FZF
set rtp+=/usr/local/opt/fzf
" fzf.vim
nnoremap <leader>p :History<CR>
nnoremap <leader>t :Files<CR>
nnoremap <leader>b :Buffers<CR>
