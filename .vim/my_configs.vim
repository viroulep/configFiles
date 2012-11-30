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

inoremap jj <esc>
