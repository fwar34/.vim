vim9script

g:mapleader = ";"
noremap! ;g <C-c>
vnoremap ;g <Esc>

# {{{ misc
nnoremap <leader>bb <C-^>
nnoremap <leader>xx <CMD>nohl<CR>
nnoremap <leader>a ^
nnoremap <leader>e $
nnoremap <leader>mm %
# }}}

# {{{
inoremap <C-f> <Right>
inoremap <C-b> <Left>
inoremap <C-a> <Esc>I
inoremap <C-e> <End>
inoremap <leader>o <Esc>o
inoremap <leader>O <Esc>O
# }}}

# {{{ LeaderF
nnoremap <leader>ff <CMD>Leaderf file<CR>
nnoremap <leader>bs <CMD>Leaderf buffer<CR>
# }}}

# {{{ 
nnoremap s <CMD>call stargate#OKvim(2)<CR>
# }}}

# {{{ vista
nnoremap <leader>ii <CMD>Vista finder<CR>
nnoremap <leader>tl <CMD>Vista finder!<CR>
nnoremap <leader>jj <CMD>Vista!!<CR>
# }}}

nnoremap <leader>dj <CMD>Dir<CR>
