"colorscheme option
set t_Co=256
syntax on

"monokain
"darkglass

color monokain

set background=dark
"////////////////////////////////////////////////////////////

"Настройки курсора
let &t_EI.="\e[2 q" "EI = нормальный режим
let &t_SI.="\e[5 q" "SI = режим вставки
let &t_SR.="\e[3 q" "SR = режим замены


"binds vim
"Вход в normal mode
imap <C-a> <Esc>
vmap <C-a> <Esc>
nmap <C-a> <Esc>

"Pasted mode
nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
set showmode

"Настройка окон
nnoremap <silent> <C-left> :tabnext<CR>
nnoremap <silent> <C-right> :tabnext<CR>
nnoremap <C-up> :tabnew<Space>
nnoremap <silent> <C-down> :tabclose<CR>


"emmet binds
let g:user_emmet_leader_key='<C-k>'


set nocompatible              " be iMproved, required
filetype off                  " required

set clipboard=unnamed


"Поддержка русского языка
set langmap=ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯ;ABCDEFGHIJKLMNOPQRSTUVWXYZ,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz

 " Настройки табов для Python, согласно рекоммендациям
set tabstop=4
set shiftwidth=4
set smarttab
set expandtab "Ставим табы пробелами
set softtabstop=4 "4 пробела в табе

" Автоотступ
"set autoindent
let python_highlight_all = 1

" Перед сохранением вырезаем пробелы на концах
autocmd BufWritePre * %s/\s\+$//e
 " В .py файлах включаем умные отступы после ключевых слов
autocmd BufRead *.py set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class
autocmd BufRead *.js set smartindent cinwords=if,else,for,while,function,class


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


" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"Установщик плагинов
Plugin 'VundleVim/Vundle.vim'


"Colorscheme
Plugin 'flazz/vim-colorschemes'
"Plugin 'xolox/vim-colorscheme-switcher'


"HTML/CSS
Plugin 'mattn/emmet-vim'


"Скобки
Plugin 'tpope/vim-surround'
Plugin 'jiangmiao/auto-pairs'


"Перемещение по файлам
Plugin 'junegunn/fzf', { 'do': { -> fzf#install()  }  }
Plugin 'junegunn/fzf.vim'


"Autocomplete
Plugin 'vim-scripts/AutoComplPop'
Plugin 'davidhalter/jedi'
Plugin 'davidhalter/jedi-vim'


set rtp+=$HOME/.local/lib/python2.7/site-packages/powerline/bindings/vim/

" Always show statusline
set laststatus=1


" " All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
