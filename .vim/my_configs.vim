set t_Co=256
colorscheme peaksea
"set background=light
set background=dark
set nu


" Map auto complete of (, ", ', [
inoremap $( ()<esc>i
inoremap $[ []<esc>i
"inoremap $d {}<esc>i
inoremap ${ {<esc>o}<esc>O
inoremap $} <esc>o{<esc>o}<esc>O
inoremap $' ''<esc>i
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
nnoremap <leader>yy "+yy
vnoremap <leader>y "+y

"Delete to system clipboard
nnoremap <leader>dd "+dd
vnoremap <leader>d "+d

"Quit rapide
nnoremap <leader>q :qa<cr>
nnoremap <leader>ss :mksession!<cr>

"Folding
set fdm=syntax
noremap <leader>l zo
noremap <leader>L zO
noremap <leader>h zc
noremap <leader>H zC

"Refresh all buffers
func! RefreshAllBuffers()
    set noconfirm
    bufdo e!
    set confirm
endfunc

map <leader>E :call RefreshAllBuffers()<cr>

"Red line @80 chars
set cc=80
hi ColorColumn ctermbg=153 ctermfg=black

"Creates a group ExtraWhitespace
hi ExtraWhitespace ctermbg=red guibg=red
"Highlight trailing whitespaces
autocmd Syntax * syn match ExtraWhitespace /\s\+\%#\@<!$/

"In my urxvt config, mod4+key is esc+bell + key
nmap h gT
nmap l gt
nmap H <C-w>H
nmap L <C-w>L

"Hide .o in nerd tree
let NERDTreeIgnore=['\.o$']

let g:ycm_global_ycm_extra_conf = '~/.vim/ycm_default_global_conf.py'
nnoremap <leader>jd :YcmCompleter GoToDefinitionElseDeclaration<CR>
