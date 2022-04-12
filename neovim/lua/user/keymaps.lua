local opts = { noremap = true, silent = true }

-- telescope
vim.api.nvim_set_keymap("n", "<C-P>", "<cmd>lua require('telescope.builtin').find_files()<CR>", opts)
vim.api.nvim_set_keymap("n", "<C-L>", "<cmd>lua require('telescope').extensions.project.project{}<CR>", opts)
vim.api.nvim_set_keymap("n", "<C-F>", "<cmd>lua require('telescope.builtin').live_grep()<CR>", opts)
vim.api.nvim_set_keymap("n", "<C-B>", "<cmd>lua require('telescope.builtin').buffers()<CR>", opts)
vim.api.nvim_set_keymap("n", "<C-G>", "<cmd>lua require('telescope.builtin').git_branches()<CR>", opts)
vim.api.nvim_set_keymap("n", "<C-S>", "<cmd>lua require('telescope.builtin').git_status()<CR>", opts)

-- nvim tree
vim.api.nvim_set_keymap("n", "<C-N>", "<cmd>lua require('nvim-tree').toggle()<CR>", opts)

-- buffer line
vim.api.nvim_set_keymap("n", "[b", "<cmd>lua require('bufferline').cycle(-1)<CR>", opts)
vim.api.nvim_set_keymap("n", "]b", "<cmd>lua require('bufferline').cycle(1)<CR>", opts)
vim.api.nvim_set_keymap("n", "<space>db", "<cmd>bdelete<cr>", opts)

-- easier navigation between buffers
vim.api.nvim_set_keymap("n", "<C-J>", "<C-W><C-J>", opts)
vim.api.nvim_set_keymap("n", "<C-K>", "<C-W><C-K>", opts)
vim.api.nvim_set_keymap("n", "<C-L>", "<C-W><C-L>", opts)
vim.api.nvim_set_keymap("n", "<C-H>", "<C-W><C-H>", opts)

-- lsp
vim.api.nvim_set_keymap("n", "<space>e", "<cmd>lua vim.diagnostic.open_float()<CR>", opts)
vim.api.nvim_set_keymap("n", "[d", "<cmd>lua vim.diagnostic.goto_prev()<CR>", opts)
vim.api.nvim_set_keymap("n", "]d", "<cmd>lua vim.diagnostic.goto_next()<CR>", opts)
vim.api.nvim_set_keymap("n", "<space>q", "<cmd>lua vim.diagnostic.setloclist()<CR>", opts)
vim.api.nvim_set_keymap("n", "rn", "<cmd>lua vim.lsp.buf.rename()<CR>", opts)
vim.api.nvim_set_keymap("n", "ca", "<cmd>lua vim.lsp.buf.code_action()<CR>", opts)
