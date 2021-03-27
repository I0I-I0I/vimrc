set ttimeoutlen=10 "Понижаем задержку ввода escape последовательностей
let &t_SI.="\e[5 q" "SI = режим вставки
let &t_SR.="\e[4 q" "SR = режим замены
let &t_EI.="\e[2 q" "EI = нормальный режим

"colorscheme option
set t_Co=256
syntax on

"fruity
"devC++
"monokain

colorscheme monokain

"set background=dark
"////////////////////////////////////////////////////


"emmet option
let g:user_emmet_leader_key='<C-k>'


set nocompatible              " be iMproved, required
filetype off                  " required

set clipboard=unnamed

 " Настройки табов для Python, согласно рекоммендациям
set tabstop=4
set shiftwidth=4

set smarttab
set expandtab "Ставим табы пробелами
set softtabstop=4 "4 пробела в табе
 " Автоотступ
"set autoindent

let python_highlight_all = 1

 " Перед сохранением вырезаем пробелы на концах (только в .py файлах)
  " В .py файлах включаем умные отступы после ключевых слов
autocmd BufRead *.py set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class


"set nu "Включаем нумерацию строк
set mousehide "Спрятать курсор мыши когда набираем текст
"set mouse=a "Включить поддержку мыши
set termencoding=utf-8 "Кодировка терминала
set novisualbell "Не мигать
  " Удобное поведение backspace
set backspace=indent,eol,start whichwrap+=<,>,[,]
  " Вырубаем черточки на табах
set showtabline=1

  " Переносим на другую строчку, разрываем строки
set wrap
set linebreak

  " Вырубаем .swp и ~ (резервные) файлы
set nobackup
set noswapfile
set encoding=utf-8 " Кодировка файлов по умолчанию

set fileencodings=utf8,cp1251

set clipboard=unnamed
set ruler

set hidden

 " Выключаем звук в Vim
set visualbell t_vb=


" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'flazz/vim-colorschemes'
Plugin 'mattn/emmet-vim'
Plugin 'tpope/vim-surround'
Plugin 'xolox/vim-colorscheme-switcher'
Plugin 'xolox/vim-misc'


set rtp+=$HOME/.local/lib/python2.7/site-packages/powerline/bindings/vim/

" Always show statusline
set laststatus=2


" " All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
