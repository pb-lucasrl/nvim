-- Disable netrw by setting these variables to 1
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.diagnostic.config({
  virtual_text = true, -- Shows inline error/warning text
  signs = true,        -- Shows signs in the gutter
  underline = true,    -- Underlines errors in code
  update_in_insert = false,
  severity_sort = true,
})

-- leader is getting mapped in the config.lua
require("config.lazy")

-- enable autosave to git project
require("config.autosave")

-- Enable line numbers 
vim.o.number = true

-- Enable relative line numbers 
vim.o.relativenumber = true

-- Use spaces instead of tabs 
vim.o.expandtab = true
vim.o.shiftwidth = 2
vim.o.tabstop = 2

-- Key mappings 
vim.api.nvim_set_keymap('n', '<C-h>', '<C-w>h', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-j>', '<C-w>j', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-k>', '<C-w>k', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-l>', '<C-w>l', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>/', ':noh<CR>', { noremap = true, silent = true })

vim.api.nvim_set_keymap('i', 'jk', '<Esc>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'çç', ':NvimTreeToggle<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'çf', ':NvimTreeFindFile<CR>', { noremap = true, silent = true })

vim.api.nvim_set_keymap("n", "<leader>ff", ":Telescope find_files<CR>", { noremap = true, silent = true })  -- Leader + ff to open file finder
vim.api.nvim_set_keymap("n", "<leader>fg", ":Telescope live_grep<CR>", { noremap = true, silent = true })  -- Leader + fg for global text search
vim.api.nvim_set_keymap("n", "<leader>fb", ":Telescope buffers<CR>", { noremap = true, silent = true })

-- Gradlew build
vim.api.nvim_set_keymap("n", "<leader>gb", ":!./gradlew clean build<CR>", { noremap = true, silent = false})

-- LSP
vim.api.nvim_set_keymap('n', '<leader>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>gg', '<cmd>lua vim.lsp.buf.hover()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>gd', '<cmd>lua vim.lsp.buf.definition()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>gt', '<cmd>lua vim.lsp.buf.type_definition()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>gr', '<cmd>lua vim.lsp.buf.references()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>gs', '<cmd>lua vim.lsp.buf.signature_help()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>rr', '<cmd>lua vim.lsp.buf.rename()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>gf', '<cmd>lua vim.lsp.buf.format({async = true})<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<leader>gf', '<cmd>lua vim.lsp.buf.format({async = true})<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>gl', '<cmd>lua vim.diagnostic.open_float()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>gp', '<cmd>lua vim.diagnostic.goto_prev()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>gn', '<cmd>lua vim.diagnostic.goto_next()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>tr', '<cmd>lua vim.lsp.buf.document_symbol()<CR>', { noremap = true, silent = true })


-- Debugging
vim.api.nvim_set_keymap("n", "<leader>dc", "<cmd>lua require('jdtls.dap').setup_dap_main_class_configs()<cr>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>dp", "<cmd>lua print(vim.inspect(require'dap'.configurations.java[1]))<cr>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>bb", "<cmd>lua require'dap'.toggle_breakpoint()<cr>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", '<leader>bc', "<cmd>lua require'dap'.clear_breakpoints()<cr>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>dr", "<cmd>lua require'dap'.continue()<cr>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>ds", "<cmd>lua require'dap'.disconnect()<cr>", { noremap = true, silent = false})
vim.api.nvim_set_keymap("n", "<leader>dt", "<cmd>lua require'dap'.terminate()<cr>", { noremap = true, silent = false})
vim.api.nvim_set_keymap("n", "<leader>dj", "<cmd>lua require'dap'.step_over()<cr>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>dk", "<cmd>lua require'dap'.step_into()<cr>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>dh", "<cmd>lua require'dap'.step_out()<cr>", { noremap = true, silent = true })
--vim.api.nvim_set_keymap("n", '<leader>df', '<cmd>Telescope dap frames<cr>', { noremap = true, silent = true })
--vim.api.nvim_set_keymap("n", '<leader>dh', '<cmd>Telescope dap commands<cr>', { noremap = true, silent = true })
--vim.api.nvim_set_keymap("n", '<leader>bl', '<cmd>Telescope dap list_breakpoints<cr>', { noremap = true, silent = true })


