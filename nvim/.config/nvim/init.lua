require("config.lazy")

local keymap = vim.keymap

vim.cmd("set tabstop=4")
vim.cmd("set expandtab")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")

vim.cmd("colorscheme gruber-darker")

vim.opt.termguicolors = true
vim.opt.undofile = true
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.wrap = false
vim.opt.showtabline = 0

vim.g.netrw_banner = 0
vim.o.clipboard = "unnamedplus"
vim.o.showmode = false

-- Enable break indent
vim.o.breakindent = true
-- Renders spaces as "·"
vim.opt.list = true
vim.opt.listchars = vim.opt.listchars + "space:·"

vim.opt.splitbelow = true
vim.opt.splitright = true

-- only number is highlighted for cursorline
vim.opt.culopt = "number"
vim.opt.cursorline = true

-- for dark mod3
-- vim.api.nvim_set_hl(0, "CursorLineNr", { fg = "yellow" })
-- vim.api.nvim_set_hl(0, "CursorLineNr", { fg = "red" })

vim.o.scrolloff = 8
vim.o.nuw = 4
vim.opt.swapfile = false
vim.o.termguicolors = true
vim.opt.colorcolumn = "85"

-- customize cursor appearance
vim.opt.guicursor = "n-v-c-sm:block"

-- key mapping
keymap.set("v", "K", ":m '<-2<CR>gv=gv")
keymap.set("v", "J", ":m '>+1<CR>gv=gv")

keymap.set("n", "<leader>wv", "<C-w>v", { desc = "Split window vertically" })
keymap.set("n", "<leader>wh", "<C-w>s", { desc = "Split window horizontally" })
keymap.set("n", "<leader>we", "<C-w>=", { desc = "Make splits equal size" })
keymap.set("n", "<leader>wc", "<cmd>close<CR>", { desc = "Close current split" })

keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" })
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" })
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" })
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" })

vim.keymap.set("n", "=", [[<cmd>vertical resize +5<cr>]])
vim.keymap.set("n", "-", [[<cmd>vertical resize -5<cr>]])
vim.keymap.set("n", "+", [[<cmd>horizontal resize +2<cr>]])
vim.keymap.set("n", "_", [[<cmd>horizontal resize -2<cr>]])


-- color scheme
