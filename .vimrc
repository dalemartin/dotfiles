" Turn on number and relativenumber
set number
set relativenumber

" Turn on highlighted search
set hlsearch

" Color scheme
colorscheme badwolf
" colorscheme northpole

" enable full-color support
if $COLORTERM == 'gnome-terminal'
    set t_Co=256
endif

" enable searching visually selected text using //
vnoremap // y/\V<C-r>=escape(@",'/\')<CR><CR>
