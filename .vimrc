" Pathogen
filetype off " Pathogen needs to run before plugin indent on
call pathogen#runtime_append_all_bundles()
call pathogen#helptags() " generate helptags for everything in 'runtimepath'
"filetype plugin indent on
call pathogen#infect()
call pathogen#helptags()
syntax on
filetype plugin indent on

source $VIMRUNTIME/mswin.vim
" Necessary for lot of cool vim things
set nocompatible
set tabstop=2
set smarttab
set shiftwidth=2
set autoindent
set expandtab
set wildmode=longest,list,full
set wildmenu

" Backspace should delete
set backspace=2 " make backspace work like most other apps
:nmap ; :

" For HTML
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags

" For Ruby
autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete
autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1
autocmd FileType ruby,eruby let g:rubycomplete_rails = 1
autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1

" improve autocomplete menu color
highlight Pmenu ctermbg=230 gui=bold
set t_CO=256
:colorscheme desert
let g:SuperTabDefaultCompletionType = "<C-X><C-O>"
nmap <silent> <c-n> :NERDTreeToggle<CR>
set number
map ,r :!ruby %
map ,n :!node %
