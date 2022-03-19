set nocompatible              " be iMproved, required

 

filetype off          " Nécessaire

 

" Ajout de Vundle au runtime path et initialisation

set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

 

" On indique à Vundle de s'auto-gérer :)

Plugin 'gmarik/Vundle.vim'  " Nécessaire

Plugin 'itchyny/lightline.vim'

"Plugin 'Lokaltog/vim-powerline'

Plugin 'powerline/powerline'

"Plugin 'altercation/vim-colors-solarized'

 

Plugin 'scrooloose/syntastic'

Plugin 'davidhalter/jedi-vim'

Plugin 'ervandew/supertab'

Plugin 'jiangmiao/auto-pairs'

Plugin 'tpope/vim-fugitive'

Plugin 'vim-scripts/comments.vim'

"Plugin 'tomasr/molokai'

"Plugin 'croaker/mustang-vim'

Plugin 'fmoralesc/vim-vitamins'

 

 

call vundle#end()            " Nécessaire

 

filetype plugin indent on

 

" --------------------------------------------------------------------

"  COULEURS:

" --------------------------------------------------------------------

set t_Co=256

" Utiliser des couleurs correctes sur un fond noir

"set background=dark

"colorscheme molokai

"colorscheme mustang

"colorscheme mod8

colorscheme vitamins

"colorscheme hybrid

"colorscheme pride

"colorscheme donbass

"colorscheme desert

 

set laststatus=2

 

let g:Powerline_symbols = "fancy"

 

syntax enable               " Coloration syntaxique

 

set ai                                   " Activer l'indentation automatique

set si                                   " Activer l'indentation intelligente

set showcmd                        " Affiche (partiellement) la commande dans la barre de statut

set showmatch                     " Afficher les brackets qui correspondent

set ignorecase                      " Recherche insensible à la casse

set incsearch                        " Recherche insensible à la casse

"set mouse=a                       " Activer la souris pour tous les modes

set number                           " Afficher les numéros de ligne

set shiftwidth=4                    " Une tabulation = 4 espaces

set tabstop=4

set expandtab                      " Transformer les tabulations en espaces

set ruler                                " Afficher la position courante

set smarttab                         " Être intelligent dans l'utilisation des tabulations

set fileencoding=utf-8          " Encoder en UTF-8

set shell=zsh                        " Votre shell

set wildmenu                    " Completion dans l'interface

set wildmode=list:longest       " Comportement de la complétion semblable à celui d'un shell

set wildignore=*.o,*~            " Ignorer les fichiers temporaires et objets

set foldmethod=indent           " Méthode pour cacher du code (donc selon l'indentation)

set nofoldenable                " Ne rien cacher par défaut

set paste

 

set background=dark

 

" Autocomplétion intelligente

set omnifunc=syntaxcomplete#Complete

 

" Désactiver les commentaires auto

autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

 

" Touche bonus que l'on peut utiliser pour mapper certaines commandes

let mapleader = ","

 

" Splitter horizontalement

map <C-w>- <Esc>:sp<CR>

" Splitter verticalement

map <C-w>\| <Esc>:vsp<CR>

 

" Aller à l'onglet suivant

nnoremap <C-Left>  :tabprevious<CR>

" Aller à l'onglet précédent

nnoremap <C-Right>  :tabnext<CR>

" Fermer l'onglet courant

nnoremap <C-c> :tabclose<CR>

" Ouvrir un nouvel onglet

nnoremap <C-t> :tabnew<CR>
