set number
set wildmenu

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

syntax on
colorscheme afterglow
let g:afterglow_italic_comments=1
let g:afterglow_inherit_background=1
"let g:gruvbox_contrast_dark = "soft"
"let g:deoplete#enable_at_startup = 1
"highlight Normal ctermbg=NONE
"set laststatus=2
"set noshowmode


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

call plug#end()
