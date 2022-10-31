if vim.g.vscode then
  -- VSCode extension
  local opts = { noremap = true, silent = true }
  local keymap = vim.api.nvim_set_keymap

  keymap("", "<Space>", "<Nop>", opts)

  vim.g.mapleader = " "
  vim.g.maplocalleader = " "

  keymap("n", "<leader>", ":call VSCodeNotify('whichkey.show')<CR>", opts)
  keymap("x", "<leader>", ":call VSCodeNotify('whichkey.show')<CR>", opts)

  vim.opt.clipboard = "unnamedplus"
  vim.opt.ignorecase = true
  vim.opt.smartcase = true
  require("packer").startup(function(use)
    use "easymotion/vim-easymotion"
    use {
    "kylechui/nvim-surround",
    config = function()
      require("nvim-surround").setup {}
    end
    }
    use {
      "windwp/nvim-autopairs",
      config = function()
        require("nvim-autopairs").setup {}
      end
    }
  end)
else
  -- ordinary Neovim
  local opts = { noremap = true, silent = true }
  local keymap = vim.api.nvim_set_keymap

  keymap("", "<Space>", "<Nop>", opts)

  vim.g.mapleader = " "
  vim.g.maplocalleader = " "

  vim.opt.backup = false
  vim.opt.clipboard = "unnamedplus"
  vim.opt.cmdheight = 2
  vim.opt.hlsearch = true
  vim.opt.mouse = "a"
  vim.opt.pumheight = 10
  vim.opt.showmode = false
  vim.opt.showtabline = 2
  vim.opt.ignorecase = true
  vim.opt.smartcase = true
  vim.opt.smartindent = true
  vim.opt.splitbelow = true
  vim.opt.splitright = true
  vim.opt.swapfile = false
  vim.opt.timeoutlen = 1000
  vim.opt.undofile = true
  vim.opt.updatetime = 300
  vim.opt.writebackup = false
  vim.opt.expandtab = true
  vim.opt.shiftwidth = 2
  vim.opt.tabstop = 2
  vim.opt.relativenumber = true
  vim.opt.number = true
  vim.opt.numberwidth = 4
  vim.opt.signcolumn = "yes"
  vim.opt.wrap = false
  vim.opt.scrolloff = 8
  vim.opt.colorcolumn = {"80", "120"}
  vim.opt.cursorline = true
  vim.opt.termguicolors =true

  vim.cmd [[colorscheme dracula]]

  local status_ok, packer = pcall(require, "packer")
  if not status_ok then
    return
  end

  packer.init {
    display = {
      open_fn = function()
        return require("packer.util").float { border = "rounded"}
      end,
    },
  }

  packer.startup(function(use)
    -- Packer related
    use "wbthomason/packer.nvim"
    -- Colorscheme
    use "Mofiqul/dracula.nvim"
    use {
    "nvim-lualine/lualine.nvim",
    requires = { "kyazdani42/nvim-web-devicons", opt = true}
    }
    -- Ease of life stuff
    use "easymotion/vim-easymotion"
    use {
    "kylechui/nvim-surround",
    config = function()
      require("nvim-surround").setup {}
    end
    }
    use {
      "windwp/nvim-autopairs",
      config = function()
        require("nvim-autopairs").setup {}
      end
    }
  end)

  require("lualine").setup {
    options = { theme = "dracula"}
  }
end
