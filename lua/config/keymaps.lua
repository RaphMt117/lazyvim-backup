-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- set leader key
vim.g.mapleader = " "

-- toggle file exporer
vim.keymap.set("n", "<leader>1", "<cmd>Neotree toggle<CR>")

-- tabs
vim.keymap.set("n", "<C-t>", ":tabnew<CR>") -- open new tab
vim.keymap.set("n", "<C-w>", ":tabclose<CR>") -- close current tab
vim.keymap.set("n", "<leader>q", ":q<CR>") -- close current tab

-- vim file explorer
vim.keymap.set("n", "<leader>pv", "<cmd>Ex<CR>")

-- drag line on visual mode
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- put line below to the end of this line
vim.keymap.set("n", "J", "mzJ`z")

-- salvar
vim.keymap.set("n", "<leader>w", ":w<CR>")
vim.keymap.set({ "n", "i" }, "<C-s>", ":w<CR>")

-- better indenting
vim.keymap.set("v", "<", "<gv", { noremap = true, silent = true })
vim.keymap.set("v", ">", ">gv", { noremap = true, silent = true })

-- up and down faster
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- normal mode on C-c and jk
vim.keymap.set("i", "<C-c>", "<Esc>")
vim.keymap.set("i", "jk", "<Esc>")

vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- Select all
vim.keymap.set("n", "<C-a>", "gg<S-v>G")

-- Increment/decrement
vim.keymap.set("n", "+", "<C-a>")
vim.keymap.set("n", "-", "<C-x>")

vim.keymap.set("n", "x", '"_x')

-- telescope
local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<CR>")
vim.keymap.set("n", "<leader>fp", "<cmd>Telescope git_files<CR>")
vim.keymap.set("n", "<leader>f.", "<cmd>Telescope current_buffer_fuzzy_find<CR>")
vim.keymap.set("n", "<leader>km", "<cmd>Telescope keymaps<CR>")
vim.keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<CR>")

-- New tab
vim.keymap.set("n", "te", ":tabedit")
vim.keymap.set("n", "<tab>", ":tabnext<Return>")
vim.keymap.set("n", "<s-tab>", ":tabprev<Return>")

-- Delete a word backwards
vim.keymap.set("n", "dw", 'vb"_d')

-- Split window
vim.keymap.set("n", "ss", ":split<Return>")
vim.keymap.set("n", "sv", ":vsplit<Return>")

-- Move window
vim.keymap.set("n", "sh", "<C-w>h")
vim.keymap.set("n", "sk", "<C-w>k")
vim.keymap.set("n", "sj", "<C-w>j")
vim.keymap.set("n", "sl", "<C-w>l")

-- Resize window
vim.keymap.set("n", "<C-w><left>", "<C-w><")
vim.keymap.set("n", "<C-w><right>", "<C-w>>")
vim.keymap.set("n", "<C-w><up>", "<C-w>+")
vim.keymap.set("n", "<C-w><down>", "<C-w>-")

-- telescope undo
vim.keymap.set("n", "<leader>u", "<cmd>Telescope undo<cr>")

-- command line
vim.keymap.set("n", "<C-Space>", ":")

-- close neovim
vim.keymap.set("n", "<leader>0", ":q!<CR>")

-- vim.keymap.set("n", "<leader>vpp", "<cmd>e ~/.config/nvim/lua/raphmt/packer.lua<CR>")

vim.keymap.set("n", "<leader>vpp", "<cmd>e ~/.config/nvim/lua/config/keymaps.lua<CR>")

-- vim.keymap.set("n", "<leader>mr", "<cmd>CellularAutomaton make_it_rain<CR>")

-- vim.keymap.set("n", "<leader><leader>", function()
--   vim.cmd("so")
-- end)
