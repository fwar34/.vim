vim9script

g:mapleader = ";"
noremap! ;g <C-c>
vnoremap ;g <Esc>

# {{{ misc
nnoremap <leader>bb <C-^>
# }}}

# {{{ LeaderF
nnoremap <leader>ff <CMD>Leaderf file<CR>
nnoremap <leader>bs <CMD>Leaderf buffer<CR>
# }}}

# {{{ 
nnoremap s <CMD>call stargate#OKvim(2)<CR>
# }}}

nnoremap <leader>dj <CMD>Dir<CR>
