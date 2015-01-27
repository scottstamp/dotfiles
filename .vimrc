" Automatic reload
autocmd! bufwritepost .vimrc source %

set nocompatible    " ensure viM
call pathogen#infect()
call pathogen#helptags()

filetype plugin indent on
syntax enable

set autoindent
set backspace=indent,eol,start
set ttimeout
set ttimeoutlen=60

set incsearch

set hlsearch

set laststatus=2

let mapleader = ","
let g:mapleader = ","

" =========================================================
" Vundle.vim
" =========================================================
" filetype off
" set the runtime path to include Vundle and initialize
" set rtp+=~/.vim/bundle/Vundle.vim
" call vundle#rc()

" let Vundle manage Vundle, required
" Bundle 'gmarik/Vundle.vim'
" Git wrapper
" Bundle 'tpope/vim-fugitive'
" GitHub helper for vim-fugitive
" Bundle 'tpope/vim-rhubarb'
" Automatically adjust shiftwidth and expandtab
" Bundle 'tpope/vim-sleuth'
" UNIX helpers (awesome name, :D)
" Bundle 'tpope/vim-eunuch'
" Comment shortcuts
" Bundle 'tpope/vim-commentary'
" (Ruby) Rails wrapper
" Bundle 'tpope/vim-rails'
" (Ruby) bundler wrapper
" Bundle 'tpope/vim-bundler'
" Whitespace highlighting
" Bundle 'ntpeters/vim-better-whitespace'
" Powerline
" Bundle 'powerline/powerline', {'rtp': 'powerline/bindings/vim/'}
" Airline
" Plugin 'bling/vim-airline'

" set laststatus=2
" set encoding=utf-8
" let g:Powerline_symbols='fancy'

" =========================================================

" Color scheme
set t_Co=256
colorscheme monokai

" Better clipboard func
set pastetoggle=<F2>
set clipboard=unnamed

" Mouse and backspace fix
set mouse=a
set bs=2

" Map explore to F3
noremap <F3> :Sexplore<CR>
vnoremap <F3> :Sexplore<CR>
inoremap <F3> :Sexplore<CR>

" Bind nohl
" Removes highlight of last search
noremap <C-n> <esc>:nohl<CR>
vnoremap <C-n> <esc>:nohl<CR>
inoremap <C-n> <esc>:nohl<CR>

" Save bound to Ctrl+Z
noremap <C-Z> :update<CR>
vnoremap <C-Z> <C-C>:update<CR>
inoremap <C-Z> <C-O>:update<CR>

" Quick save
noremap <C-Z> :update<CR>
vnoremap <C-Z> <C-C>:update<CR>
inoremap <C-Z> <C-O>:update<CR>

" Deploy production
noremap <leader><C-p> :!bundle exec cap production deploy<CR>

" Deploy production
noremap <leader><C-d> :!bundle exec cap development deploy<CR>

" Run production
noremap <leader>p :!bundle exec cap development deploy:thin:start<CR>

" Run development
map <leader>d :!bundle exec cap development deploy:thin:start<CR>

" Quick quit
" noremap <leader>e :quit<CR> 	" Quit current window
" vnoremap <leader>e :quit<CR>	" Quit current window
" inoremap <leader>e :quit<CR>	" Quit current window
" noremap <leader>E :qa!<CR>	    " Quit all windows
" vnoremap <leader>E :qa!<CR>	    " Quit all windows
" inoremap <leader>E :qa!<CR> 	" Quit all windows

" Bind Ctrl+<movement> keys to move around windows
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

" Tab nav
map <leader>n <esc>:tabprevious<CR>
map <leader>m <esc>:tabnext<CR>

" Map sort function to a key
vnoremap <leader>s :sort<CR>

" Easier block moving
vnoremap < <gv  " better indentation
vnoremap > >gv	" better indentation

" Document formatting cues (line width, etc)
set number  	" show line numbers
set tw=129       " width of document (used by gd)
set nowrap  	" don't automatically wrap on load
set fo-=t	    " don't automatically wrap text when typing
set colorcolumn=130
highlight ColorColumn ctermbg=234

" Easier formatting of paragraphs
" (press Q to auto-wrap)
vmap Q gq
nmap Q gqap


" =========================================================
" IntelliScroll up/down (thanks bairui/Barry Arthur)
" =========================================================
func! IntelliScrollDown()
   let fwl = line('w0')
   let lwl = line('w$')
   let lbl = line('$')
   if (lbl-lwl) >= (lwl - fwl)
       return "\<c-f>"
   else
       return "\<c-d>"
   endif
endfunc

func! IntelliScrollUp()
    return "\<c-u>"
endfunc

noremap <expr> <PageDown> IntelliScrollDown()
noremap <expr> <c-f> IntelliScrollDown()
noremap <expr> <S-Down> IntelliScrollDown()

noremap <expr> <PageUp> IntelliScrollUp()
noremap <expr> <c-b> IntelliScrollUp()
noremap <expr> <S-Up> IntelliScrollUp()
" =========================================================

" Useful settings
set history=700
set undolevels=700

" Real programmers don't use TABs but spaces (lol, opinionated?)
set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround
set expandtab

" Make search case-insensitive
set hlsearch
set incsearch
set ignorecase
set smartcase

" Disable backup and swap files - they trigger too many
" events for filesystem watchers
set nobackup
set nowritebackup
set noswapfile

" Setup Pathogen to manage your plugins
" $ mkdir -p ~/.vim/autoload ~/.vim/bundle
" $ curl -so ~/.vim/autoload/pathogen.vim https://raw.github.com/tpope/vim-pathogen/master/autoload/pathogen.vim
" Now you can install any plugin into a .vim/bundle/plugin-name/ folder.
call pathogen#helptags()

" vim-powerline
set laststatus=2

" ctrlp (Python)
" let g:ctrlp_max_height=30
" set wildignore+=*.pyc
" set wildignore+=*_build/*
" set wildignore+=*/coverage/*

" python-mode (Python)
" map <leader>g :call RopeGotoDefinition()<CR>
" let ropevim_enable_shortcuts = 1
" let g:pymode_rope_goto_def_newwin = "vnew"
" let g:pymode_rope_extended_complete = 1
" let g:pymode_breakpoint = 0
" let g:pymode_syntax = 1
" let g:pymode_syntax_builtin_objs = 0
" let g:pymode_syntax_builtin_funcs = 0
" map <leader>b Oimport ipdb; ipdb.set_trace() # BREAKPOINT<C-c>
