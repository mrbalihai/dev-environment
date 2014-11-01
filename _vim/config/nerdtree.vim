map <C-n> :NERDTreeToggle<CR>

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

let NERDTreeDirArrows=0
let NERDTreeShowLineNumbers=0
let NERDTreeMinimalUI=1
let NERDTreeQuitOnOpen=1
