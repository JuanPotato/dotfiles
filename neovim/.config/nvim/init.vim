"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/home/hasan/.local/share/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('/home/hasan/.local/share/dein')
  call dein#begin('/home/hasan/.local/share/dein')

  " Let dein manage dein
  " Required:
  call dein#add('/home/hasan/.local/share/dein/repos/github.com/Shougo/dein.vim')

  " Rust syntax

  " Monokai theme
  call dein#add('crusoexia/vim-monokai')
  
  " Autoformat for different langs
  call dein#add('Chiel92/vim-autoformat')
  
  " Dein command
  call dein#add('haya14busa/dein-command.vim')

  " Graphviz
  call dein#add('wannesm/wmgraphviz.vim')

  " Setup for rust
  " Rust Syntax with rust.vim
  call dein#add('rust-lang/rust.vim')

  " Completion Manager
  call dein#add('ncm2/ncm2')
  " Rust completetion
  call dein#add('ncm2/ncm2-racer')
  " C/C++ completion
  call dein#add('ncm2/ncm2-pyclang')
  " Python completion
  call dein#add('ncm2/ncm2-jedi')


  " Language Server that has good stuff 
  call dein#add('autozimu/LanguageClient-neovim', {
      \ 'rev': 'next',
      \ 'build': 'bash install.sh',
      \ })

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

if dein#check_install()
  call dein#install()
endif

"End dein Scripts-------------------------




filetype plugin indent on
syntax enable

noremap <F2> :w<CR>
noremap <F3> :Autoformat<CR>
noremap <F4> "+p
noremap <F5> :edit<CR>

map <ScrollWheelUp> <C-Y>
map <ScrollWheelDown> <C-E>

set clipboard^=unnamed
set mouse=a
set t_Co=256 
colorscheme monokai

set tabstop=4 " visual <TAB>
set softtabstop=4 " tab key
set shiftwidth=4 " actual tab key
set expandtab " tabs as spaces
set smarttab " more tabs as spaces

"" set number " current line number
set relativenumber " relative line numbers elsewhere
set showcmd " show last command in bottom right
set cursorline " highlight current line

set winaltkeys=no
let s:printable_ascii = map(range(32, 126), 'nr2char(v:val)')
call remove(s:printable_ascii, 92)
for s:char in s:printable_ascii
  execute "imap <A-" . s:char . "> <Esc>" . s:char
  execute "nmap <A-" . s:char . "> <Esc>" . s:char
endfor
unlet s:printable_ascii s:char

ca w!! w !sudo tee %
command Config tabe ~/.config/nvim/init.vim
ca source! source ~/.config/nvim/init.vim


" Required for operations modifying multiple buffers like rename.
set hidden

" LanguageClient
let g:LanguageClient_serverCommands = {
    \ 'rust': ['rustup', 'run', 'beta', 'rls'],
    \ 'c': ['ccls', '--log-file=/tmp/cc.log'],
    \ 'cpp': ['ccls', '--log-file=/tmp/cc.log'],
    \ 'cuda': ['ccls', '--log-file=/tmp/cc.log'],
    \ 'objc': ['ccls', '--log-file=/tmp/cc.log'],
    \ }

" \ 'python': ['pyls'],

let g:LanguageClient_diagnosticsDisplay={}

" Error
let g:LanguageClient_diagnosticsDisplay[1] = { 'signText': '>>' }
" Warns, Info, Hint
for i in [2, 3, 4]
    let g:LanguageClient_diagnosticsDisplay[i] = { 'signText': '--' }
endfor


" ncm2
let g:ncm2_pyclang#library_path = '/usr/lib64/libclang.so'

hi ALEError   ctermbg=1 
hi ALEWarning ctermbg=3
hi ALEInfo    ctermbg=4

highlight link ALEError SpellBad
highlight link ALEWarning SpellCap
highlight link ALEInfo ALEWarning 

highlight link ALEErrorSign Error     
highlight link ALEStyleErrorSign ALEErrorSign
highlight link ALEWarningSign Todo           

highlight link ALEStyleWarningSign ALEWarningSign
highlight link ALEInfoSign ALEWarningSign     
highlight link ALESignColumnWithErrors Error
highlight link ALEStyleError ALEError
highlight link ALEStyleWarning ALEWarning




" Die time
" Disable Arrow keys in Normal mode
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

" Disable Arrow keys in Insert mode
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>

