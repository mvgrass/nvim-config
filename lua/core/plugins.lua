local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

plugins = {
    {
      "christoomey/vim-tmux-navigator",
      cmd = {
        "TmuxNavigateLeft",
        "TmuxNavigateDown",
        "TmuxNavigateUp",
        "TmuxNavigateRight",
        "TmuxNavigatePrevious",
      },
      keys = {
        { "<c-h>", "<cmd><C-U>TmuxNavigateLeft<cr>" },
        { "<c-j>", "<cmd><C-U>TmuxNavigateDown<cr>" },
        { "<c-k>", "<cmd><C-U>TmuxNavigateUp<cr>" },
        { "<c-l>", "<cmd><C-U>TmuxNavigateRight<cr>" },
        { "<c-\\>", "<cmd><C-U>TmuxNavigatePrevious<cr>" },
      }
    },
    {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",
        dependencies = {
          "nvim-lua/plenary.nvim",
          "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
          "MunifTanjim/nui.nvim",
          -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
        }
    },
    { 'nvim-treesitter/nvim-treesitter' },
    { 'joshdick/onedark.vim' },
    { 'williamboman/mason.nvim',
       opts = {
         ensure_intalled = {
           "clangd",
           "clang-foramt"
         }
       }
    },
    { 'williamboman/mason-lspconfig.nvim' },
    { 'neovim/nvim-lspconfig'},
    { 'hrsh7th/cmp-nvim-lsp' },
    { 'hrsh7th/cmp-buffer' },
    { 'hrsh7th/cmp-path' },
    { 'hrsh7th/cmp-cmdline' },
    { 'hrsh7th/nvim-cmp' },
    { 'nvim-telescope/telescope.nvim',
       tag = '0.1.6',
       dependencies = { 'nvim-lua/plenary.nvim' }
    },
    { 'jose-elias-alvarez/null-ls.nvim' },
    { 'windwp/nvim-autopairs'},
    { 'terrortylor/nvim-comment' },
    { 'akinsho/toggleterm.nvim'},
    { 'hedyhli/outline.nvim' },
    { 'nvim-lualine/lualine.nvim',
      dependencies = { 'nvim-tree/nvim-web-devicons' }
    },
    { 'akinsho/bufferline.nvim',
      dependencies = {'nvim-tree/nvim-web-devicons'}
    },
    { 'lewis6991/gitsigns.nvim' },
    { 'rmagatti/auto-session' },
    { 'sindrets/diffview.nvim' },
}

opts = {}

require("lazy").setup(plugins, opts)

