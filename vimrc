so ~/.vim/plugins.vim

set nocompatible
set mouse=a "启用鼠标"
set title     " window窗口显示文件名
syntax  on    " 关键字上色
syntax enable " 语法高亮
set number    " 显示行号
set noerrorbells visualbell t_vb= " remove sounds effects
set scrolloff=5             " Start scrolling n lines before horizontal.
set sidescrolloff=7         " Start scrolling n chars before end of screen.
set sidescroll=1            " The minimal number of columns to scroll horizontally.
" 文件类型检测
filetype plugin indent on
syntax  on    " 关键字上色
syntax enable " 语法高亮
set number    " 显示行号
set noerrorbells visualbell t_vb= " remove sounds effects
" 格式化与缩进
set tabstop=8     " 制表符tab长度
set softtabstop=4 " 程序tab键相当于4个空格
set expandtab  " tab等于空格
set shiftwidth=4 " 自动缩进空格数
set backspace=indent,eol,start " 退格可删除缩进和原有字符
set autoindent" 与前一行同样等级缩进

" 折叠
"au BufWinLeave * silent mkview  " 保存文件的折叠状态
"au BufRead * silent loadview    " 恢复文件的折叠状态
"nnoremap <space> za             " 用空格来切换折叠状态

" UI
set t_CO=256 " 终端显示256色
set cursorline " 高亮当前行
" set cursorcolumn " 高亮当前列
" highlight CursorLine   cterm=NONE ctermbg=black ctermfg=green guibg=NONE guifg=NONE
" highlight CursorColumn cterm=NONE ctermbg=black ctermfg=green guibg=NONE guifg=NONE
set encoding=utf-8 " 编码，使汉语正常显示
set termencoding=utf-8
set fileencodings=utf-8,gb2312,gbk,gb18030

" 搜索
set hlsearch " 检索时高亮显示匹配项
set incsearch " 边输入边搜索
set ignorecase" 搜索忽略大小写
set smartcase " 智能大小写搜索

" 分屏
"" 新分割窗口在下边和右边(sp/vsp)
set splitbelow
set splitright
au VimResized * exe "normal! \<c-w>=" " 窗口改变时自动调整大小 

let mapleader = ','
let leader   = ','

" 非递归按键映射 
"" 删除一对括号
nnoremap <F8> ma%x`ax
vnoremap <leader>y "+y " 复制选中区到系统剪切板中
vnoremap <C-c> "+y
vnoremap <C-x> "+d
vnoremap <C-v> "+p
inoremap <C-v> <C-r><C-o>+
inoremap jj <Esc>
"" 滚动Speed up scrolling of the viewport slightly
nnoremap <C-e> 2<C-e>
nnoremap <C-y> 2<C-y>
"" 针对屏幕行移动
nnoremap k gk
nnoremap gk k
nnoremap j gj
nnoremap gj j

" normal模式按键映射
nmap Y y$ " 复制到行末
"" 窗口移动
nmap <C-J> <C-W><C-J> 
nmap <C-K> <C-W><C-K>
nmap <C-H> <C-W><C-H>
nmap <C-L> <C-W><C-L>
"" 关闭当前的TabBar
nmap <C-x> :bd<cr>
"" 关闭方向键, 强迫自己用 hjkl
map <Left> <Nop>
map <Right> <Nop>
map <Up> <Nop>
map <Down> <Nop>
"" 自动保存 需要在.bash_profile 设置 stty -ixon支持
nmap <C-s> :w!<cr>
imap <C-s> <esc>:w!<cr>
"" 调整分屏宽度
nmap    w=  :resize +3<CR>
nmap    w-  :resize -3<CR>
nmap    w,  :vertical resize -3<CR>
nmap    w.  :vertical resize +3<CR>

" 非递归按键映射
"" F2 行号开关，用于鼠标复制代码用
function! HideNumber()
  if(&relativenumber == &number)
    set relativenumber! number!
  elseif(&number)
    set number!
  else
    set relativenumber!
  endif
  set number?
endfunc
nnoremap <F2> :call HideNumber()<CR>

" 命令模式按键映射
cnoremap <C-a> <Home>
cnoremap <C-e> <End>
cnoremap <C-p> <Up>
cnoremap <C-n> <Down>

" v模式按键映射
vmap <Tab> >" v模式tab缩进
vmap <S-Tab>" v模式tab缩进
