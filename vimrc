syntax enable " syntax highlighting

" Theme
colorscheme tender

" Leader Commands
let mapleader=","

" Remove the delay when escaping from insert-mode
set timeoutlen=1000 ttimeoutlen=0

" Indents
set smartcase   " search intelligently
set smartindent
set autoindent

" Searching
set hlsearch  " highlight searches, and search incrementaly
set incsearch
map <F2> <esc>:noh<cr><esc>
set wrapscan

" Tabbing
set tabstop=2 " Soft Tabs, 2 Spaces
set shiftwidth=2
set expandtab
highlight SpecialKey ctermfg=1  " highlight actual tabs
set list
set listchars=tab:>>

autocmd FileType make setlocal noexpandtab

" line numbers + ruler
set number
set ruler

set noeb " turn off notifications
set visualbell
set t_vb=

set backspace=indent,eol,start " backspace continues on previous line

" get rid of swap files. we have git.
set nobackup 
set nowb
set noswapfile

set so=10 " leave some text at the top / bottom of the screen

set whichwrap+=<,>,h,l,[,] " wrap arrow keys around lines

set textwidth=80
nnoremap 0 ^
au BufRead,BufNewFile *.md setlocal textwidth=80

" Key-bindings: Tabs
imap <F1> <nop>
nmap <F1> <nop>
set pastetoggle=<F5>
map <F7> <esc>:tabp<cr>  " map F7 F8 and F9 to previous, next, and new tab
map <F8> <esc>:tabn<cr>
map <F9> <esc>:tabe<cr>

"remap jj to escape in insert mode
inoremap jj <Esc>

" File Types
au BufNewFile,BufRead *.coffee set filetype=coffee
au BufRead,BufNewFile {Gemfile,Rakefile,Vagrantfile,Thorfile,config.ru} set ft=ruby
au BufNewFile,BufRead *.json set ai filetype=javascript

augroup mkd
autocmd BufNewFile,BufRead *.mkd      set ai formatoptions=tcroqn2 comments=n:> filetype=markdown
autocmd BufNewFile,BufRead *.md       set ai formatoptions=tcroqn2 comments=n:> filetype=markdown
autocmd BufNewFile,BufRead *.markdown set ai formatoptions=tcroqn2 comments=n:> filetype=markdown
augroup END

set clipboard=unnamed

" FZF
" ctrl-[a-z], alt-[a-z], f[1-4], or any single character
nnoremap <silent> <Leader><Leader> :FZF -m<CR>
let g:fzf_action = {
  \ 'ctrl-m': 'e',
  \ 'ctrl-t': 'tabedit',
  \ 'alt-j':  'botright split',
  \ 'alt-k':  'topleft split',
  \ 'alt-h':  'vertical topleft split',
  \ 'alt-l':  'vertical botright split' }

" Vim-Go Customizations
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1

" Plugins
call plug#begin('~/.vim/plugged')
Plug 'fatih/vim-go'
Plug 'ervandew/supertab'
Plug 'scrooloose/nerdcommenter'
Plug 'tpope/vim-markdown'
Plug 'tpope/vim-surround'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'terryma/vim-multiple-cursors'
Plug 'jacoborus/tender'
call plug#end()
