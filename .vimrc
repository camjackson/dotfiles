" Vundle setup stuff, do not edit, or put stuff before this
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'

" All vundle plugins go here
Plugin 'L9' " Dependency for... one of the things below
Plugin 'phildawes/racer' " Rust auto-complete
Plugin 'rust-lang/rust.vim'
Plugin 'ervandew/supertab'
Plugin 'othree/vim-autocomplpop'
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'tpope/vim-surround'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'blueshirts/darcula'
Plugin 'kien/ctrlp.vim'
Plugin 'terryma/vim-expand-region'
Plugin 'airblade/vim-gitgutter'
Plugin 'tikhomirov/vim-glsl'

call vundle#end()
filetype plugin indent on
" Vundle help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" End of vundle stuff

" Syntax highlighting and line numbers
syntax on
set number

" Column marker
:set colorcolumn=120

" Highlight search results
set hlsearch

" Autosave
au FocusLost * :wa

" Tab complete like bash, not cmd
set wildmenu

" ctrlp ignore
set wildignore+=*/target/*

" Tab == 4 spaces
filetype plugin indent on
set tabstop=4
set shiftwidth=4
set expandtab

" Fold by indent
set foldmethod=syntax
set foldlevelstart=20

" Auto-close curly braces
inoremap {<CR> {<CR>}<Esc>ko

" Autocomplete stuff as per http://vim.wikia.com/wiki/Make_Vim_completion_popup_menu_work_just_like_in_an_IDE
set completeopt=longest,menuone
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
inoremap <expr> <C-n> pumvisible() ? '<C-n>' :
  \ '<C-n><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'
inoremap <expr> <M-,> pumvisible() ? '<C-n>' :
  \ '<C-x><C-o><C-n><C-p><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'
" open omni completion menu closing previous if open and opening new menu without changing the text
inoremap <expr> <C-Space> (pumvisible() ? (col('.') > 1 ? '<Esc>i<Right>' : '<Esc>i') : '') .
            \ '<C-x><C-o><C-r>=pumvisible() ? "\<lt>C-n>\<lt>C-p>\<lt>Down>" : ""<CR>'
" open user completion menu closing previous if open and opening new menu without changing the text
inoremap <expr> <S-Space> (pumvisible() ? (col('.') > 1 ? '<Esc>i<Right>' : '<Esc>i') : '') .
            \ '<C-x><C-u><C-r>=pumvisible() ? "\<lt>C-n>\<lt>C-p>\<lt>Down>" : ""<CR>'

" More stuff needed for racer (TODO: install racer as part of dotfiles install)
set hidden
let g:racer_cmd = "/Users/cjacks/code/racer/target/release/racer"
let $RUST_SRC_PATH="/Users/cjacks/code/rust/src/"
