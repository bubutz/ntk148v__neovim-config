--
-- ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗
-- ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║
-- ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║
-- ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║
-- ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║
-- ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝
--
-- File: mappings.lua
-- Description: Key mapping configs
-- Author: Kien Nguyen-Tuan <kiennt2609@gmail.com>

-- <leader> is a space now
local map = vim.keymap.set

-- map("n", "<leader>q", ":qa!<CR>", {})

-- Fast saving with <leader> and s
-- map("n", "<leader>s", ":w<CR>", {})

-- Move around splits
-- map("n", "<leader>wh", "<C-w>h", { desc = "switch window left" })
-- map("n", "<leader>wj", "<C-w>j", { desc = "switch window right" })
-- map("n", "<leader>wk", "<C-w>k", { desc = "switch window up" })
-- map("n", "<leader>wl", "<C-w>l", { desc = "switch window down" })

-- Reload configuration without restart nvim
map("n", "<leader>r", ":source $MYVIMRC<CR>", { desc = "Reload configuration without restart nvim" })

-- Telescope General
local builtin = require("telescope.builtin")
map("n", "<leader>th", builtin.help_tags, { desc = "Open Telescope to show help" })
map("n", "<leader>tc", builtin.commands, { desc = "Open Telescope commands" })

-- Telescope Others
map("n", "<leader>om", builtin.man_pages, { desc = "Open Man pages" })

-- Telescope Files
map("n", "<leader>ff", builtin.find_files, { desc = "Open Telescope to find files" })
map("n", "<leader>fg", builtin.live_grep, { desc = "Open Telescope to do live grep" })
map("n", "<leader>fo", builtin.oldfiles, { desc = "Open Telescope to list recent files" })

-- Telescope Buffers
map("n", "<leader>bb", builtin.buffers, { desc = "Open Telescope to list buffers" })
map("n", "<leader>bm", builtin.marks, { desc = "Open Telescope to list marks" })

-- Telescope Git
map("n", "<leader>gc", builtin.git_commits, { desc = "Open Telescope to list git commits" })
map("n", "<leader>gb", builtin.git_branches, { desc = "Open Telescope to list git branches" })
map("n", "<leader>gs", builtin.git_status, { desc = "Open Telescope to list git status" })

-- LSP
map("n", "<leader>lm", function()
    require("conform").format { lsp_fallback = true }
end, { desc = "General Format file" })
map("n", "<leader>ds", vim.diagnostic.setloclist, { desc = "LSP Diagnostic loclist" })

-- NvimTree
map("n", "<leader>n", ":NvimTreeToggle<CR>", { desc = "Toggle NvimTree sidebar" })    -- open/close
map("n", "<leader>nr", ":NvimTreeRefresh<CR>", { desc = "Refresh NvimTree" })         -- refresh
map("n", "<leader>nf", ":NvimTreeFindFile<CR>", { desc = "Search file in NvimTree" }) -- search file

-- Comment
map("n", "mm", "gcc", { desc = "Toggle comment", remap = true })
map("v", "mm", "gc", { desc = "Toggle comment", remap = true })

-- Terminal
map("t", "<Esc>", "<C-\\><C-n>")
