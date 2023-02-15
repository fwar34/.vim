vim9script

var plug_dir = '~/.vim/autoload/plug.vim'
var cmd = '!curl -fLo ' .. plug_dir .. ' --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
if has('win32')
    plug_dir = '~\vimfiles\autoload\plug.vim'
    cmd = '!curl.exe -fLo ' .. expand(plug_dir) .. ' --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
endif

if empty(glob(plug_dir))
    silent execute cmd
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

plug#begin()
# The default plugin directory will be as follows:
#   - Vim (Linux/macOS): '~/.vim/plugged'
#   - Vim (Windows): '~/vimfiles/plugged'
#   - Neovim (Linux/macOS/Windows): stdpath('data') . '/plugged'
# You can specify a custom plugin directory by passing it as the argument
#   - e.g. `call plug#begin('~/.vim/plugged')`
#   - Avoid using standard Vim directory names like 'plugin'

# Make sure you use single quotes

# Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

# Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

# {{{ themes
Plug 'joshdick/onedark.vim'
Plug 'fwar34/vim-color-wombat256'
# }}}

# {{{ lsp
Plug 'prabirshrestha/vim-lsp'
# Refer to vim-lsp-settings on how to easily setup language servers using vim-lsp automatically.
Plug 'mattn/vim-lsp-settings'
# }}}

# {{{
#if has('win32')
#    Plug 'Yggdroot/LeaderF'
#else
#    Plug 'Yggdroot/LeaderF', { 'do': ':LeaderfInstallCExtension' }
#endif
# }}}

Plug 'yianwillis/vimcdoc'

# {{{ motion
Plug 'monkoose/vim9-stargate'
# }}}

# {{{
Plug 'bfrg/vim-qf-preview'
augroup qfpreview
    autocmd!
    autocmd FileType qf nmap <buffer> p <plug>(qf-preview-open)
    autocmd FileType qf nmap <buffer> q <CMD>close<CR>
augroup END
# }}}

Plug 'Eliot00/auto-pairs'

# {{{
Plug 'Eliot00/git-lens.vim'
# }}}

# {{{
Plug 'habamax/vim-dir'
# augroup vimdir
#     autocmd!
#     autocmd FileType dir nmap <buffer> q <CMD>q<CR>
# augroup END
# }}}

# {{{ 改变字体显示
# echo artify#convert('Introduction', 'italic')
Plug 'sainnhe/artify.vim'
# }}}

# {{{
Plug 'kohnish/vim9-fuzzy'
# }}}

Plug 'Bakudankun/qline.vim'

Plug 'hahdookin/minifuzzy.vim'

# {{{
Plug 'imranZERO/wintweak.gvim'
# Popup menu
nnoremap <F10> <Cmd>Wintweak<cr>
# Toggle fullscreen
nnoremap <m-cr> <Cmd>WTFullScreen<cr>
# RGB Color Picker (normal & insert mode)
nnoremap <m-c> <Cmd>WTCpicker<cr>
inoremap <m-c> <Cmd>WTCpicker<cr>
# and any other wintweak functions.
# }}}


# Initialize plugin system
plug#end()
