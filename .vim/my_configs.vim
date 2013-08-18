set t_Co=256
colorscheme peaksea
"set background=light
set background=dark
set nu


" Map auto complete of (, ", ', [
inoremap $( ()<esc>i
inoremap $é []<esc>i
"inoremap $d {}<esc>i
inoremap $& {<esc>o}<esc>O
inoremap $1 <esc>o{<esc>o}<esc>O
inoremap $' {}<esc>i
inoremap $" ""<esc>i
inoremap $< <><esc>i

"Map jj sur echap, plus confortable
inoremap jj <esc>

"` pas assez accessible...
onoremap " `
nnoremap " `

nmap <leader>' `.

nnoremap <leader>> :vertical resize +5<cr>
nnoremap <leader>< :vertical resize -5<cr>

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
nnoremap <leader>ss :mksession!<cr>

"Folding
set fdm=syntax
noremap <leader>l zo
noremap <leader>L zO
noremap <leader>h zc
noremap <leader>H zC

