set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'majutsushi/tagbar'
Plugin 'tpope/vim-surround'
Plugin 'mattn/emmet-vim'
Plugin 'Valloric/YouCompleteMe'
"Plugin 'nathanaelkane/vim-indent-guides'  "对齐线

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
"Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
"Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
"Plugin 'user/L9', {'name': 'newL9'}

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

" vim-airline
let g:airline#extensions#tabline#enabled = 1

" nerdtree
nmap <F3> :NERDTreeToggle  <CR>

" tagbar
nmap <F8> :TagbarToggle  <CR>

" syntastic
let g:syntastic_check_on_open = 1				" 打开时检查
let g:syntastic_check_on_wq = 1					" 关闭时检查
let g:syntastic_error_symbol = "✗"
let g:syntastic_warning_symbol = "⚠"
let g:syntastic_auto_loc_list=1					" 显示错误信息窗口
"let g:syntastic_disabled_filetypes=['tex']
nmap <F9> :SyntasticToggle  <CR>
let g:syntastic_mode_map = { 'passive_filetypes': ['tex',] } " 不检测tex文件语法

"vim-indent-guides
"let g:indent_guides_auto_colors = 0
"let g:indent_guides_guide_size = 1
"autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red   ctermbg=3
"autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=4

"emmetio/emmet
"let g:user_emmet_mode='n'    "only enable normal mode functions.
"let g:user_emmet_mode='inv'  "enable all functions, which is equal to
"let g:user_emmet_mode='a'    "enable all function in all mode.
"下面只对html/css启用
"let g:user_emmet_install_global = 0
"autocmd FileType html,css EmmetInstall


"Valloric/YouCompleteMe
let g:ycm_global_ycm_extra_conf='~/.vim/bundle/YouCompleteMe/third_party/ycmd/examples/.ycm_extra_conf.py'
let mapleader = ","
nnoremap <leader>jd :YcmCompleter GoToDefinitionElseDeclaration<CR>

" vim
set fileformats=unix		" 默认fileformats=unix,dos
set encoding=utf8			" 解析文件方式
set fileencodings=utf8,gb18030
"set fileencoding=utf8		" 文件编码方式
set termencoding=utf8		" 终端显示编码
set t_Co=256
set laststatus=2
set nu						" 显示行号
set mouse=a					" 使用所有鼠标方法
set relativenumber			" 显示相对行号
set smarttab
set cindent
set shiftwidth=4
set tabstop=4
set softtabstop=4
set expandtab
set smartindent
"--命令行设置--
set showcmd					" 命令行显示输入的命令
set noshowmode				" 命令行不显示vim当前模式
"--查找设置--
set incsearch				" 输入字符串就显示匹配点
"set incsearch				" 命令行显示vim当前模式
set listchars=nbsp:¶,tab:>\ ,extends:»,precedes:«,trail:•
"set listchars=eol:¬,nbsp:¶,tab:>\ ,extends:»,precedes:«,trail:•
"set listchars=nbsp:¬,eol:¶,tab:>-,extends:»,precedes:«,trail:•
set list
set hlsearch
