"" Base set up
set number
set wildmenu
set mouse=a
set numberwidth=1
set clipboard=unnamed
set showcmd
set relativenumber
set showmatch
set encoding=utf-8
set sw=2
set smartcase
set title

let g:coc_disable_startup_warning = 1

"" Nerd tree set up
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split =  4
let g:netrw_altv = 1
let g:netrw_winsize = 25

augroup ProjectDrawer
  autocmd!
  autocmd VimEnter * :Vexplore
augroup END

"" Eslint config

let g:ale_fixers = {
      \ 'javascript': ['eslint']
      \}

let g:ale_sign_error = '❌'
let g:ale_sign_warning = '⚠️'
let g:ale_fix_on_save = 1

"" Color scheme set up
syntax on
colorscheme afterglow
let g:afterglow_italic_comments=1
let g:afterglow_inherit_background=1


if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

Plug 'junegunn/vim-easy-align'

Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'sheerun/vim-polyglot'

Plug 'danilo-augusto/vim-afterglow'

Plug 'ctrlpvim/ctrlp.vim'

Plug 'preservim/nerdtree'

Plug 'w0rp/ale'

Plug 'moll/vim-node'

Plug 'elzr/vim-json'

call plug#end()
