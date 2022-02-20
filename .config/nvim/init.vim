set syntax
set tabstop=4 softtabstop=4
set shiftwidth=4
set nu
set clipboard+=unnamedplus
set nowrap
set smartcase
set colorcolumn=80
"highlight ColorColumn ctermbg=darkblue guibg=darkblue
highlight Normal ctermbg=black

call plug#begin('~/.config/nvim/plugged')
Plug 'morhetz/gruvbox'
Plug 'jremmen/vim-ripgrep'
Plug 'leafgarland/typescript-vim'
Plug 'vim-utils/vim-man'
call plug#end()

"colorscheme torte
colorscheme gruvbox
set background=dark


"findfilesglobally
set path+=**
" Display all mathing files when we tab complete
set wildmenu

map I :! pdflatex --shell-escape %<CR><CR>
map S :! zathura $(echo % \| sed 's/tex$/pdf/') & disown <CR><CR>
au VimEnter * :silent !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Escape'
au VimLeave * :silent !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Caps_Lock'
