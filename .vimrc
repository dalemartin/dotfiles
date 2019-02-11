set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/dotfiles/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
"Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" This plugin handles Vundle git submodules automatically
Plugin 'tpope/vim-fugitive'

" Badwolf color scheme
Plugin 'badwolf'

" This plugin allows surrounding text with characters like (text), {text}, etc.
Plugin 'surround.vim'

" Spell checking plugin
Plugin 'SpellCheck'

" A Vim Plugin for Lively Previewing LaTeX PDF Output
Plugin 'xuhdev/vim-latex-live-preview'

" Latex plugin
"Plugin 'LaTeX-Suite-aka-Vim-LaTeX'

" Minimalistic statusline plugin
Plugin 'itchyny/lightline.vim'

" Snippets plugin
Plugin 'UltiSnips'

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

" Don't use fish shell, use bash
set shell=/bin/bash

" Use evince for LaTeX previewing
let g:livepreview_previewer = 'evince'
" Auto refresh time for vim-latex-live-preview (1000 recommended)
"autocmd Filetype tex setl updatetime = 1000
" Only update latex preview on disk write by preventing update on cursor hold
let g:livepreview_cursorhold_recompile = 0

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

" In many terminal emulators the mouse works just fine, thus enable it.
if has('mouse')
  set mouse=a
endif

" enable full-color support
if $COLORTERM == 'gnome-terminal'
    set t_Co=256
endif

" Color scheme
colorscheme badwolf
" colorscheme northpole

" lightline plugin statusline set
set laststatus=2

" Show commands in the statusline as they are typed
set showcmd

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if &t_Co > 2 || has("gui_running")
  syntax on
  set hlsearch
endif

" Only do this part when compiled with support for autocommands.
if has("autocmd")

  " Enable file type detection.
  " Use the default filetype settings, so that mail gets 'tw' set to 72,
  " 'cindent' is on in C files, etc.
  " Also load indent files, to automatically do language-dependent indenting.

  " Put these in an autocmd group, so that we can delete them easily.
  augroup vimrcEx
  au!

  " For all text files set 'textwidth' to 78 characters.
  autocmd FileType text setlocal textwidth=78

  " When editing a file, always jump to the last known cursor position.
  " Don't do it when the position is invalid or when inside an event handler
  " (happens when dropping a file on gvim).
  autocmd BufReadPost *
    \ if line("'\"") >= 1 && line("'\"") <= line("$") |
    \   exe "normal! g`\"" |
    \ endif

  augroup END

else

  set autoindent		" always set autoindenting on

endif " has("autocmd")

" Turn on number and relativenumber
set number
set relativenumber

" Underline spelling errors
hi clear SpellBad " clear old highlighting settings
hi SpellBad cterm=underline ctermfg=red
"set spell

" enable searching visually selected text using //
vnoremap // y/\V<C-r>=escape(@",'/\')<CR><CR>

" Set default indent
set tabstop=2
set shiftwidth=2
set expandtab

" Tab completion
set wildmode=longest,list,full
set wildmenu

" Key bindings
cnoremap lmk w \| !latexmk -pdf %:p <CR> \| <CR>

