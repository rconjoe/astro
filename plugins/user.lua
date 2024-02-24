return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  {
    {
      "Rawnly/gist.nvim",
      cmd = { "GistCreate", "GistCreateFromFile", "GistsList" },
      config = true,
    },
    -- `GistsList` opens the selected gif in a terminal buffer,
    -- nvim-unception uses neovim remote rpc functionality to open the gist in an actual buffer
    -- and prevents neovim buffer inception
    {
      "samjwill/nvim-unception",
      lazy = false,
      init = function() vim.g.unception_block_while_host_edits = true end,
    },
  },
  {
    "sindrets/diffview.nvim",
    event = "VeryLazy",
    config = function() require("diffview").setup() end,
  },
  -- {
  --   "sourcegraph/sg.nvim",
  --   dependencies = { "nvim-lua/plenary.nvim" },
  --   config = function() require("sg").setup() end,
  --   event = "LspAttach",
  -- },
  {
    "vuki656/package-info.nvim",
    dependencies = "MunifTanjim/nui.nvim",
    config = function()
      require("package-info").setup {
        autostart = true,
        hide_up_to_date = true,
        package_manager = "yarn",
      }
    end,
  },
  {
    "nvimdev/lspsaga.nvim",
    config = function() require("lspsaga").setup {} end,
    event = "LspAttach",
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
      "nvim-tree/nvim-web-devicons",
    },
  },
  -- {
  --   "folke/neodev.nvim",
  --   opts = {
  --     library = {
  --       enabled = true, -- when not enabled, neodev will not change any settings to the LSP server
  --       -- these settings will be used for your Neovim config directory
  --       runtime = true, -- runtime path
  --       types = true, -- full signature, docs and completion of vim.api, vim.treesitter, vim.lsp and others
  --       plugins = true, -- installed opt or start plugins in packpath
  --       -- you can also specify the list of plugins to make available as a workspace library
  --       -- plugins = { "nvim-treesitter", "plenary.nvim", "telescope.nvim" },
  --     },
  --     setup_jsonls = true, -- configures jsonls to provide completion for project specific .luarc.json files
  --     -- for your Neovim config directory, the config.library settings will be used as is
  --     -- for plugin directories (root_dirs having a /lua directory), config.library.plugins will be disabled
  --     -- for any other directory, config.library.enabled will be set to false
  --     -- ---
  --     -- override = function(root_dir, options) end,
  --     -- ---
  --     -- With lspconfig, Neodev will automatically setup your lua-language-server
  --     -- If you disable this, then you have to set {before_init=require("neodev.lsp").before_init}
  --     -- in your lsp start options
  --     lspconfig = true,
  --     -- much faster, but needs a recent built of lua-language-server
  --     -- needs lua-language-server >= 3.6.0
  --     pathStrict = true,
  --   },
  -- },
  -- {
  --   "hlucco/nvim-espwoch",
  --   url = "https://github.com/hlucco/nvim-eswpoch",
  --   event = "BufEnter",
  -- },
}
