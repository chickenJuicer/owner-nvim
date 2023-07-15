vim.g.mapleader = ' '

vim.o.number = true
vim.o.relativenumber=true
vim.o.shiftwidth=2
vim.o.tabstop = 2
vim.o.expandtab = true
vim.o.autoindent = true
vim.o.smartindent = true
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.softtabstop=2
vim.o.cursorline = true
vim.o.shiftround=true
vim.o.wildmenu=true
vim.o.signcolumn="yes"
vim.o.title=true
vim.o.swapfile=false
vim.o.backup=false
vim.o.updatetime=50
vim.o.mouse="a"
vim.o.undofile=true
vim.o.undodir=vim.fn.expand('$HOME/.local/share/nvim/undo')
vim.o.exrc=true
vim.o.wrap=false
vim.o.splitright=true
vim.o.completeopt="menuone","noselect"

vim.b.fileencoding = "utf-8"

local opts = {silent = true, noremap = true, expr = true, replace_keycodes = false}

local keyset = vim.keymap.set

keyset('v','J',":m '>+1<CR>gv=gv")
keyset('v','K',":m '<-2<CR>gv=gv")
keyset('n','J',":m+1<CR>")
keyset('n','K',":m-2<CR>")

keyset('n','<LEADER>1', ":NvimTreeToggle<CR>",{noremap = true,silent=true})


keyset('n','<LEADER>o','o<ESC>',{noremap=true})
keyset('n','<LEADER>O','O<ESC>',{noremap=true})
keyset('n','<LEADER>fm','gg=G<C-O>zz',{noremap=true,silent=true})

keyset('n','<C-h>',':BufferLineCyclePrev<CR>',{noremap=true,silent=true})
keyset('n','<C-l>',':BufferLineCycleNext<CR>',{noremap=true,silent=true})
keyset('n','<C-j>','<C-d>',{noremap=true})
keyset('n','<C-k>','<C-u>',{noremap=true})
keyset('n','<LEADER><CR>',':set nohlsearch<CR>',{noremap=true,silent=true})

keyset("i", "<TAB>", 'coc#pum#visible() ? coc#pum#next(1) : v:lua.check_back_space() ? "<TAB>" : coc#refresh()', opts)
keyset("i", "<S-TAB>", [[coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"]], opts)
keyset("i", "<cr>", [[coc#pum#visible() ? coc#pum#confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"]], opts)
keyset("i", "<C-s>", "coc#refresh()", {silent = true, expr = true})
