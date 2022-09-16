if vim.g.vscode then
  -- VSCode extensijon
  local opts = { noremap = true, silent = true }
  local keymap = vim.api.nvim_set_keymap
  keymap("", "<Space>", "<Nop>", opts)
  vim.g.mapleader = " "
  vim.g.maplocalleader = " "
  keymap("n", "<leader>", ":call VSCodeNotify('whichkey.show')<CR>", opts)
  keymap("x", "<leader>", ":call VSCodeNotify('whichkey.show')<CR>", opts)

  vim.opt.clipboard = "unnamedplus"
else
  -- ordinary Neovim
  local impatient_ok, impatient = pcall(require, "impatient")
  if impatient_ok then impatient.enable_profile() end

  for _, source in ipairs {
    "core.utils",
    "core.options",
    "core.bootstrap",
    "core.plugins",
    "core.autocmds",
    "core.mappings",
    "configs.which-key-register",
  } do
    local status_ok, fault = pcall(require, source)
    if not status_ok then vim.api.nvim_err_writeln("Failed to load " .. source .. "\n\n" .. fault) end
  end

  astronvim.conditional_func(astronvim.user_plugin_opts("polish", nil, false))
end
