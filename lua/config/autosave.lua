local autosave_enabled = true 
-- Function to toggle autosave
function ToggleAutosave(state)
  autosave_enabled = state or not autosave_enabled
  if autosave_enabled then
    vim.cmd("autocmd TextChanged,InsertLeave * silent! w")
  else
    vim.cmd("autocmd! TextChanged,InsertLeave *")
  end
end

local function file_exists_in_root(project_root, files)
  for _, file in ipairs(files) do
    local file_path = project_root .. "/" .. file
    if vim.fn.filereadable(file_path) == 1 or vim.fn.isdirectory(file_path) == 1 then
      return true
    end
  end
  return false
end

function EnableAutosaveForRootProject()
  local args = vim.fn.argv()
  if #args == 0 or not vim.fn.isdirectory(args[1]) then
    ToggleAutosave(false)
    return
  end
  local is_git_repo = file_exists_in_root(vim.fn.fnamemodify(args[1], ":p:h"), {".git"})
  if is_git_repo then
    ToggleAutosave(true)
  else
    ToggleAutosave(false)
  end
end

-- Hook to enable autosave at startup
vim.cmd([[
  autocmd VimEnter * lua EnableAutosaveForRootProject()
]])

-- Keybinding to manually toggle autosave
vim.api.nvim_set_keymap("n", "<leader>as", ":lua ToggleAutosave()<CR>", { noremap = true, silent = true })

-- Function to show autosave status
function AutosaveStatus()
  return autosave_enabled and "[AUTO]" or ""
end

vim.opt.statusline = "%f %m %=%{v:lua.AutosaveStatus()}"

vim.api.nvim_set_keymap("n", "<leader>as", ":lua ToggleAutosave()<CR>", { noremap = true, silent = true })
