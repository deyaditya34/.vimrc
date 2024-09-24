set encoding=utf-8
set number
set relativenumber

set tabstop=4
set softtabstop=4
set shiftwidth=4

syntax enable
filetype plugin indent on

colorscheme gruvbox
set termguicolors


set nohls
set incsearch

call plug#begin()
	Plug 'prabirshrestha/vim-lsp'
	Plug 'prabirshrestha/asyncomplete.vim'
	Plug 'prabirshrestha/asyncomplete-lsp.vim'
call plug#end()

if executable('typescript-language-server')
    au User lsp_setup call lsp#register_server({
        \ 'name': 'tsserver',
        \ 'cmd': {server_info->['typescript-language-server', '--stdio']},
        \ 'allowlist': ['javascript', 'typescript'],
        \ })
endif

let g:lsp_semantic_enabled=1

nmap K :LspHover<cr>
nmap gd :LspDefinition<cr>
set signcolumn=no

