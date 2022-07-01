vim9script
#--------------------------------------------------------------------------
# 显示相关
#--------------------------------------------------------------------------
set shortmess=atcI   # 启动的时候不显示那个援助乌干达儿童的提示
set number              # 显示行号
set go=             # 不要图形按钮

syntax on           # 语法高亮
syntax enable
set showcmd         # 输入的命令显示出来，看的清楚些
set novisualbell    # 不要闪烁(不明白)
#set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ %{strftime(\#%d/%m/%y\ -\ %H:%M\#)}   #状态行显示的内容
set laststatus=2    # 启动显示状态行(1),总是显示状态行(2)

set fencs=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936
set termencoding=utf-8
set helplang=en

if has('autocmd')
    au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

# vim 自身命令行模式智能补全
set nocompatible

#禁止vim换行后自动添加的注释符号
augroup Format-Options
    autocmd!
    #autocmd BufEnter * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
    # This can be done as well instead of the previous line, for setting formatoptions as you choose:
    autocmd BufEnter * setlocal formatoptions=crqn2l1j
    #让vim显示行尾的空格
    #autocmd BufEnter * highlight WhitespaceEOL ctermbg=red guibg=red
    #autocmd BufEnter * match WhitespaceEOL /\s\+$/
augroup END

# dirvish 不能设置 autochdir
set autochdir
# 可以在normal,visual模式使用鼠标
set mouse=a
set splitright
# 相对行号
set relativenumber
# set cursorline
# vim 自身命令行模式智能补全
set wildmenu
# 高亮dos的特殊符号,如^M
set fileformats=unix,dos,mac
set wildignorecase
set pastetoggle=<F9>
# 禁止光标闪烁
set gcr=a:block-blinkon0
set hidden
# 打开这个在非 tmux 中背景是蓝色的，所以只在 tmux 中设置
# if vim.env.TMUX ~= nil or vim.env.ALACRITTY_LOG ~= nil then
#     set termguicolors
# end
# 输入的命令显示出来，看的清楚些
# 内部工作编码
set encoding=utf-8
# 文件默认编码
set fileencoding=utf-8
# 打开文件时自动尝试下面顺序的编码
# set fileencodings=utf-8,chinese,latin-1
set fileencodings=ucs-bom,utf-8,gbk,gb18030,big5,euc-jp,latin1
# 设置当文件被改动时自动载入
set autoread
set completeopt=menu,menuone,noselect,noinsert,preview
# 终端下可以和windows共享clipboard
set clipboard=unnamedplus
set nobackup
set nowritebackup
set autowrite
# 不显示模式N/I/V
# set noshowmode
# 打开状态栏标尺
set ruler
# 在处理未保存或只读文件的时候，弹出确认
set confirm
# 自动缩进
set autoindent
# 智能的选择对起方式
set smartindent
# C的对齐
set cindent
set cinoptions=g0,(0,W4,l1,N-s,E-s,t0,j1,J1
# tab使用空格代替
set expandtab
# 在行和段开始处使用制表符
set smarttab
set noswapfile
# 保存 undo 历史。必须先行创建 .undo_history/
set undodir=~/.undo_history/
set undofile
set hlsearch
set incsearch
# 行内替换
set gdefault
# 字符间插入的像素行数目
set linespace=1
# 使回格键（backspace）正常处理indent, eol, start等
set backspace=indent,eol,start
# 允许backspace和光标键跨越行边界
set whichwrap+=,h,l,<,>,[,],~
set selection=exclusive
set selectmode=mouse,key
# 通过使用: commands命令，告诉我们文件的哪一行被改变过
set report=0
# 光标移动到buffer的顶部和底部时保持3行距离
set scrolloff=1
set sidescrolloff=5
# 设置环境保存项
# 设置这个选项与 neovim-session-manager 冲突
# set sessionoptions=blank,globals,localoptions,tabpages,folds,help,options,resize,winpos,winsize,unix,slash 
set sessionoptions=blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal
set number
# 允许折叠
set foldenable
# 手动折叠
set foldmethod=manual
# Tab键的宽度
set tabstop=4
# 统一缩进为4
set softtabstop=4
set shiftwidth=4
# set cmdheight=2

set updatetime=300

set ignorecase
set smartcase
# Windows 禁用 ALT 操作菜单（使得 ALT 可以用到 Vim里）
set winaltkeys=no
# 关闭自动换行
set nowrap
# 打开功能键超时检测（终端下功能键为一串 ESC 开头的字符串）
set ttimeout
# 功能键超时检测 50 毫秒
set ttimeoutlen=50
# 允许 Vim 自带脚本根据文件类型自动设置缩进等
filetype plugin indent on
# 语法高亮设置
syntax enable
syntax on
# 显示最后一行
set display=lastline
# 延迟绘制（提升性能）
set lazyredraw
# 错误格式
# set errorformat+=[%f:%l]\\ ->\\ %m,[%f:%l]:%m
# 设置分隔符可视
# set listchars=tab:\\|\\ ,trail:.,extends:>,precedes:<
# 设置 tags：当前文件所在目录往上向根目录搜索直到碰到 .tags 文件
# 或者 Vim 当前目录包含 .tags 文件
set tags=./.tags;,.tags
# 如遇Unicode值大于255的文本，不必等到空格再折行
set formatoptions+=m
# 合并两行中文时，不在中间加空格
set formatoptions+=B
# 允许代码折叠
set foldenable
# 代码折叠默认使用缩进
set fdm=indent
# 默认打开所有缩进
set foldlevel=99

# set wildignore=*.so,*.swp,*.zip,*.exe,.git,.hg,.svn,*.pyc,*.o,*.out,*.jpg,*.jpeg,*.png,*.gif,**/tmp/**,*.DS_Store,**/node_modules/**,**/bower_modules/**,**/debian/**
# 文件搜索和补全时忽略下面扩展名
set suffixes=.bak,~,.o,.h,.info,.swp,.obj,.pyc,.pyo,.egg-info,.class
set wildignore=*.o,*.obj,*~,*.exe,*.a,*.pdb,*.lib # stuff to ignore when tab completing
set wildignore+=*.so,*.dll,*.swp,*.egg,*.jar,*.class,*.pyc,*.pyo,*.bin,*.dex
set wildignore+=*.zip,*.7z,*.rar,*.gz,*.tar,*.gzip,*.bz2,*.tgz,*.xz # MacOSX/Linux
set wildignore+=*DS_Store*,*.ipch
set wildignore+=*.gem
set wildignore+=*.png,*.jpg,*.gif,*.bmp,*.tga,*.pcx,*.ppm,*.img,*.iso
set wildignore+=*.so,*.swp,*.zip,*/.Trash/**,*.pdf,*.dmg,*/.rbenv/**
set wildignore+=*/.nx/**,*.app,*.git,.git
set wildignore+=*.wav,*.mp3,*.ogg,*.pcm
set wildignore+=*.mht,*.suo,*.sdf,*.jnlp
set wildignore+=*.chm,*.epub,*.pdf,*.mobi,*.ttf
set wildignore+=*.mp4,*.avi,*.flv,*.mov,*.mkv,*.swf,*.swc
set wildignore+=*.ppt,*.pptx,*.docx,*.xlt,*.xls,*.xlsx,*.odt,*.wps
set wildignore+=*.msi,*.crx,*.deb,*.vfd,*.apk,*.ipa,*.bin,*.msu
set wildignore+=*.gba,*.sfc,*.078,*.nds,*.smd,*.smc
set wildignore+=*.linux2,*.win32,*.darwin,*.freebsd,*.linux,*.android
# 设置显示制表符等隐藏字符
# set list
