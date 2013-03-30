set t_Co=256
colorscheme peaksea
"set background=light
set background=dark
set nu


" Map auto complete of (, ", ', [
inoremap $f ()<esc>i
inoremap $s []<esc>i
inoremap $d {}<esc>i
inoremap $j {<esc>o}<esc>O
inoremap $q ''<esc>i
inoremap $e ""<esc>i
inoremap $t <><esc>i

"Map jj sur echap, plus confortable
inoremap jj <esc>

"` pas assez accessible...
nnoremap " `

nmap <leader>' `.

"Paste system clipboard
nnoremap <leader>p "+p
vnoremap <leader>p "+p

"Copy to system clipboard
nnoremap <leader>y "+y
vnoremap <leader>y "+y

"Delete to system clipboard
nnoremap <leader>dd "+dd
vnoremap <leader>dd "+dd

"Quit rapide
nnoremap <leader>q :qa<cr>
nnoremap <leader>ss :mksession<cr>
