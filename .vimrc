if has('python3')
endif
let g:ycm_path_to_python_interpreter = '/usr/bin/python'

set nocompatible              " non compatibile con vi
filetype off                  " spegni il rilevamento automatico del tipo di file

" Vundle setup
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Plugin Vundle
Plugin 'VundleVim/Vundle.vim'

" Plugin per il supporto ai linguaggi
Plugin 'sheerun/vim-polyglot'

" Plugin per il supporto al linguaggio C#
Plugin 'OmniSharp/omnisharp-vim'

" Plugin di base
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'airblade/vim-gitgutter'
Plugin 'junegunn/fzf', {'dir': '~/.fzf', 'do': './install --all'}
Plugin 'junegunn/fzf.vim'

" Plugin aggiuntivi
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-unimpaired'
Plugin 'jiangmiao/auto-pairs'
Plugin 'mhinz/vim-startify'
Plugin 'tpope/vim-dispatch'
Plugin 'fatih/vim-go', {'do': ':GoUpdateBinaries'}
Plugin 'elixir-editors/vim-elixir'
Plugin 'vim-ruby/vim-ruby'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'leafgarland/typescript-vim'
Plugin 'Vimjas/vim-python-pep8-indent'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'plasticboy/vim-markdown'
Plugin 'godlygeek/tabular'
Plugin 'honza/vim-snippets'
Plugin 'Valloric/YouCompleteMe'

call vundle#end()              " fine della configurazione Vundle
filetype plugin indent on      " attiva il rilevamento automatico del tipo di file e i plugin



set encoding=utf-8
set termencoding=utf-8
language messages it_IT.utf-8

" Mappature personalizzate per tasti italiani
nnoremap ; :
nnoremap , ;
nnoremap . ,
nnoremap è `
nnoremap ù \
nnoremap + =
nnoremap è `
nnoremap à ~
nnoremap ò [
nnoremap è {
nnoremap é ]
nnoremap § #
nnoremap ç \
nnoremap ° `

" Impostazioni di base
set number                      " mostra i numeri di riga
set expandtab                   " usa spazi al posto delle tabulazioni
set tabstop=4                   " dimensione della tabulazione
set shiftwidth=4                " dimensione dello spazio di indentazione
set smartindent                 " attiva l'indentazione intelligente
set autoindent                  " attiva l'indentazione automatica
set cursorline                  " evidenzia la riga corrente
set hlsearch                    " evidenzia tutte le corrispondenze durante la ricerca
set incsearch                   " ricerca incrementale
set showmatch                   " mostra la corrispondenza della parentesi
set ignorecase                  " ignorare il caso durante la ricerca
set smartcase                   " considera il caso se la ricerca contiene maiuscole
set nowrap                      " non avvolgere le linee lunghe
set undofile                    " abilita il salvataggio dello stato di undo in un file

" Plugin configuration

" NERDTree
autocmd vimenter * NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" FZF
set rtp+=~/.fzf
command! -bang -nargs=* FZF call fzf#vim#command(<q-args>, <bang>0)

" OmniSharp configuration
let g:OmniSharp_server_stdio = 1
let g:OmniSharp_selector_ui = 'nerdtree'

" Configurazione di YouCompleteMe
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
let g:ycm_key_invoke_completion = '<C-Space>'
let g:ycm_auto_trigger = 1
let g:ycm_min_num_of_chars_for_completion = 1
let g:ycm_collect_identifiers_from_comments_and_strings = 1
let g:ycm_seed_identifiers_with_syntax = 1

" Aggiungi ulteriori impostazioni per il completamento specifico dei linguaggi
let g:ycm_semantic_triggers = {
    \   'python': ['.', '[', '('],
    \   'c,cpp,objc,objcpp': ['->', '.', '(', '[', '::'],
    \   'java': ['.'],
    \   'go': ['.'],
    \   'cs': ['.'],
    \   'javascript': ['.', '[', '('],
    \   'typescript': ['.', '[', '('],
    \   'perl': ['->', '::'],
    \   'php': ['->', '::'],
    \   'ruby': ['.'],
    \   'lua': ['.'],
    \   'scala': ['.'],
    \   'vim': ['.'],
    \   'elixir': ['.'],
    \   'javascript.jsx': ['.', '[', '('],
    \   'typescript.tsx': ['.', '[', '('],
    \ }

" Imposta i path degli interpreter per i linguaggi specifici
let g:ycm_path_to_python_interpreter = '/usr/bin/python'
let g:ycm_path_to_nodejs_interpreter = '/usr/bin/node'