-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
if vim.g.vscode then
  -- VSCode extension
  local vscode = require("vscode-neovim")
  vim.api.nvim_set_keymap(
    "n",
    "<Space>ca",
    ':lua require("vscode-neovim").action("editor.action.quickFix")<CR>',
    { noremap = true, silent = true }
  )
  vim.api.nvim_set_keymap(
    "n",
    "<Space>e",
    ':lua require("vscode-neovim").action("workbench.view.explorer")<CR>',
    { noremap = true, silent = true }
  )
  vim.api.nvim_set_keymap(
    "n",
    "<Space>tt",
    ':lua require("vscode-neovim").action("workbench.action.terminal.toggleTerminal")<CR>',
    { noremap = true, silent = true }
  )
  vim.api.nvim_set_keymap(
    "n",
    "gr",
    ':lua require("vscode-neovim").action("editor.action.referenceSearch.trigger")<CR>',
    { noremap = true, silent = true }
  )
  vim.api.nvim_set_keymap(
    "n",
    "<Space>sg",
    ':lua require("vscode-neovim").action("workbench.action.findInFiles")<CR>',
    { noremap = true, silent = true }
  )
  vim.api.nvim_set_keymap(
    "n",
    "<Space>cr",
    ':lua require("vscode-neovim").action("editor.action.rename")<CR>',
    { noremap = true, silent = true }
  )
end
