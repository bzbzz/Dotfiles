" Obsidian Vim configuration file

" Unmap space to prevent conflicts
unmap <Space>

" map j and k to to visual moves
noremap j gj
noremap k gk

" TODO: need to fix the pasting to also include c-c
noremap <Space>p "0p

" Does not work :(
"inoremap <C-h> <Left>
"inoremap <C-j> <Down>
"inoremap <C-l> <Right>
"inoremap <C-k> <Up>

" ----------------------------------------------------------------------------
" Folding Commands
" https://vimhelp.org/fold.txt.html#fold-commands
" ----------------------------------------------------------------------------
exmap togglefold obcommand editor:toggle-fold
nmap zo :togglefold<CR>
exmap unfoldall obcommand editor:unfold-all
nmap zR :unfoldall<CR>
exmap foldall obcommand editor:fold-all
nmap zM :foldall<CR>

" ----------------------------------------------------------------------------
" Sidebar Management
" ----------------------------------------------------------------------------

" Toggle left side bar
exmap toggleLeftSideBar obcommand app:toggle-left-sidebar
nmap <C-n> :toggleLeftSideBar<CR>

" Toggle right side bar
exmap toggleRightSideBar obcommand app:toggle-right-sidebar
nmap <C-,> :toggleRightSideBar<CR>

" Focus the file explorer
exmap focusFileExplorer obcommand file-explorer:open
nmap <C-h> :focusFileExplorer<CR>

" ----------------------------------------------------------------------------
" Editor Features
" ----------------------------------------------------------------------------

" Insert code block
exmap insertCodeBlock obcommand editor:insert-codeblock
nmap <Space>bc :insertCodeBlock<CR>

" Insert math block
exmap insertMathBlock obcommand editor:insert-mathblock
nmap <Space>bm :insertMathBlock<CR>

" Toggle spell check
exmap toggleSpellcheck obcommand editor:toggle-spellcheck
nmap <Space>sc :toggleSpellcheck<CR>

" ----------------------------------------------------------------------------
" Open operations
" ----------------------------------------------------------------------------

" Open file explorer
exmap telescope obcommand switcher:open
nmap <Space>ff :telescope<CR>

" Open omnisearch all files
exmap globalSearch obcommand omnisearch:show-modal
nmap <Space>gg :globalSearch<CR>

" Open omnisearch in file
exmap infileSearch obcommand omnisearch:show-modal-infile
nmap <Space>fd :infileSearch<CR>

" Open command palette
exmap openPalette obcommand command-palette:open
nmap <Space>op :openPalette<CR>

exmap openSettings obcommand app:open-settings
nmap <Space>os :openSettings<CR>

" Open graph
exmap openGraph obcommand graph:open
nmap <Space>og :openGraph<CR>
 

" ----------------------------------------------------------------------------
" Tab Management
" ----------------------------------------------------------------------------

" Close current tab
exmap closeTab obcommand workspace:close
nmap <Space>x :closeTab<CR>

" Go to next tab
exmap nextTab obcommand workspace:next-tab
nmap L :nextTab<CR>

" Go to previous tab
exmap previousTab obcommand workspace:previous-tab
nmap H :previousTab<CR>

" Open link in new tab
exmap openLeaf obcommand editor:open-link-in-new-leaf
nmap gf :openLeaf<CR>

" ----------------------------------------------------------------------------
" File Editing
" ----------------------------------------------------------------------------

" Edit file title
exmap editTitle obcommand workspace:edit-file-title
nmap <Space>t :editTitle<CR>

" Delete file
exmap deleteFile obcommand app:delete-file
nmap <Space>d :deleteFile<CR>



" Yank to system clipboard
set clipboard=unnamedplus
