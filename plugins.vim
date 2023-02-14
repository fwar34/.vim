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

# {{{
Plug 'prabirshrestha/vim-lsp'
# Refer to vim-lsp-settings on how to easily setup language servers using vim-lsp automatically.
Plug 'mattn/vim-lsp-settings'
# }}}

# {{{
if !has('win32')
	Plug 'Yggdroot/LeaderF', { 'do': ':LeaderfInstallCExtension' }
endif
# }}}

# Initialize plugin system
plug#end()
