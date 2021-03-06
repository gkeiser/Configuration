execute pathogen#infect()
syntax on
set nu
filetype plugin indent on

au FileType go nmap <Leader>dt <Plug>
set tabstop=4
set shiftwidth=4
set expandtab
" change the mapleader from \ to ,
let mapleader=","
let g:go_fmt_command = "goimports"
"Show a list of interfaces which is implemented by the type under your cursor
"with <leader>s
"au FileType go nmap <Leader>s <Plug>(go-implements)
""Show type info for the word under your cursor with <leader>i (useful if you have disabled auto showing type info via g:go_auto_type_info)
au FileType go nmap <Leader>i <Plug>(go-info)
"Open the relevant Godoc for the word under the cursor with <leader>gd or open
"it vertically with <leader>gv
"au FileType go nmap <Leader>gd <Plug>(go-doc)
"au FileType go nmap <Leader>gv <Plug>(go-doc-vertical)
""Or open the Godoc in browser
au FileType go nmap <Leader>gb <Plug>(go-doc-browser)
"Run commands, such as go run with <leader>r for the current file or go build
"and go test for the current package with <leader>b and <leader>t. Display a
"beautiful annotated source code to see which functions are covered with
"<leader>c.
au FileType go nmap <leader>r <Plug>(go-run)
au FileType go nmap <leader>b <Plug>(go-build)
au FileType go nmap <leader>t <Plug>(go-test)
au FileType go nmap <leader>co <Plug>(go-coverage)
""By default the mapping gd is enabled which opens the target identifier in
"current buffer. You can also open the definition/declaration in a new vertical, horizontal or tab for the word under your cursor:
au FileType go nmap <Leader>ds <Plug>(go-def-split)
au FileType go nmap <Leader>dv <Plug>(go-def-vertical)
au FileType go nmap <Leader>dt <Plug>(go-def-tab)
" Ali: to indent json files on save
autocmd FileType json autocmd BufWritePre <buffer> %!python -m json.tool
"Rename the identifier under the cursor to a new name
"au FileType go nmap <Leader>e <Plug>(go-rename)

" Trigger configuration. Do not use <tab> if you use
" https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsSnippetsDir        = '~/.vim/snippets/'
"let g:UltiSnipsSnippetDirectories = ['UltiSnips', 'snippets']

let g:UltiSnipsExpandTrigger       = '<C-CR>'
let g:UltiSnipsJumpForwardTrigger  = '<A-d>'
let g:UltiSnipsJumpBackwardTrigger = '<A-a>'
command Js :%!python -mjson.tool
