"--基本设置
set nocp "关闭vi兼容
set shortmess=atI  "不帮助乌干达儿童了
set noeb "关闭出错的提示声音
set ambiwidth=double "避免“——”非常短，“★”显示不出来
set scrolloff=6 "保持到底部6行差距"
set magic "除了$ . * ^之外都要反斜杠转义

"--行列设置
set nu   "显示行号
set ru   "右下角显示行列
" set cul "高亮行
" set cuc "高亮列

"--文件编码
set enc=utf-8 "设置默认编码utf-8
set termencoding=utf-8 "终端编码
set fileencodings=utf-8,ucs-bom,gbk,cp936,gb2312,gb18030 "文件编码
set helplang=cn  "帮助文档语言为中文


"--缩进
set ts=4 "一个tab 2个空格
set sw=4 "自动缩进时 2个空格
set et   "将tab置为空格
set smarttab "一个backspace删除tab生成的2个空格
set autoindent   "自动缩进


"--处理临时文件
set confirm "未保存时候给予确认
set nobackup "不生成临文件
set noswapfile "不生成swap文件

"--backspace设置
set backspace=2 " 使回格键（backspace）正常处理indent, eol, start等
set whichwrap+=<,>,h,l  " 允许backspace和光标键跨越行边界

"--搜索相关
set is "实时搜索(没按回车就开始搜)
set hls "搜索结果语法高亮，:noh关闭高亮

"--断行设置
set tw=78 "78列就转行的强迫症
set lbr   "不允许单词这段
set fo+=mB "m允许汉字断行，B将两行合并一行汉字不要加空格

"--括号匹配
set sm "高亮匹配的括号
set matchtime=1 "单位十分之一秒

"--命令行设置
set showcmd    " 命令行显示输入的命令
set showmode   " 命令行显示vim当前模式
set report=0   "告诉我们哪一行被改过
set laststatus=2

"--主题
syntax enable "打开语法高亮
syntax on "语法高亮
set background=dark
"colorscheme solarized
let g:solarized_termcolors=256

"--补全
filetype plugin indent on "补全前提
set wildmenu   "命令模式用 Tab 补全单行菜单形式显示
set completeopt=longest,menu "只在补全下拉菜单中显示

" 设置leader key
let mapleader=','
" use Ctrl+h/j/l/k 切换窗口
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l
" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('/Users/leon/.vim/plugged')
" 文件树
Plug 'preservim/nerdtree'
Plug 'airblade/vim-gitgutter'
Plug 'preservim/tagbar'
call plug#end()

"git gutter"
nmap <F6> :GitGutterSignsToggle<CR>
let g:gitgutter_signs = 0
nmap ]h <Plug>GitGutterNextHunk
nmap [h <Plug>GitGutterPrevHunk

"NERDTree
nnoremap <leader>f :NERDTreeFind<cr>
nnoremap <leader>t :NERDTreeToggle<cr>
" set width
let NERDTreeWinSize=38
" show hidden files
let NERDTreeShowHidden=1
" not show files listed
let NERDTreeIgnorf= ['\.git$', '\.hg$', '\.svn$', '\.stversions$', '\.pyc$', '\.pyo$', '\.swp$', '\.DS_Store$', '\.sass-cache$', '__pycache__$', '\.egg-info$', '\.ropeproject$']
nnoremap <silent> <Leader>ag :Ag <C-R><C-W><CR>
nnoremap <silent> <c-p> :Files <CR>
" Tag相关设置
"nmap <F8> :TagbarToggle<CR>
nnoremap <leader>b :TagbarToggle<CR>
let g:deoplete#enable_at_startup = 1
set completeopt-=preview
" 将vi中的内容粘贴到系统中
nmap <leader>p "*p
nmap <leader>y "*y
" set mouse on
set mouse=a
" show cmmand
set showcmd
set encoding=utf-8
