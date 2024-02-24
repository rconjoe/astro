-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
local chatgpt = require "chatgpt"
return {
  -- first key is the mode
  n = {
    ["<leader>gd"] = { desc = "Diffview" },
    ["<leader>gdf"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    -- second key is the lefthand side of the map
    -- mappings seen under group name "Buffer"
    ["<leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(
          function(bufnr) require("astronvim.utils.buffer").close(bufnr) end
        )
      end,
      desc = "Pick to close",
    },
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" },
    ["<leader>r"] = { name = "Refactoring" },
    -- quick save
    ["<C-s>"] = { ":w!<cr>", desc = "Save File" }, -- change description but the same command

    ["<leader>a"] = { desc = "AI/GPT" },
    ["<leader>ae"] = {
      function() chatgpt.edit_with_instructions() end,
      desc = "Edit with instructions",
    },
    ["<leader>ac"] = {
      function() chatgpt.openChat() end,
      desc = "Open chat",
    },
    ["<leader>ap"] = {
      function() chatgpt.selectAwesomePrompt() end,
      desc = "Open awesome prompt",
    },
    ["<leader>at"] = {
      function() chatgpt.run_action "add_tests" end,
      desc = "Add tests",
    },
    ["<leader>aC"] = {
      function() chatgpt.run_action "complete_code" end,
      desc = "Complete code",
    },
    ["<leader>ak"] = {
      function() chatgpt.run_action "keywords" end,
      desc = "Extract keywords",
    },
    ["<leader>ad"] = {
      function() chatgpt.run_action "docstring" end,
      desc = "Generate docstring",
    },
    ["<leader>ao"] = {
      function() chatgpt.run_action "optimize_code" end,
      desc = "Optimize code",
    },
    ["<leader>as"] = {
      function() chatgpt.run_action "summarize" end,
      desc = "Summarize text",
    },
    ["<leader>af"] = {
      function() chatgpt.run_action "fix_bugs" end,
      desc = "Fix bugs",
    },
    ["<leader>aE"] = {
      function() chatgpt.run_action "explain_code" end,
      desc = "Explain code",
    },
    ["<leader>ar"] = {
      function() chatgpt.run_action "roxygen_edit" end,
      desc = "Insert roxygen skeleton",
    },
    ["<leader>aa"] = {
      function() chatgpt.run_action "code_readability_analysis" end,
      desc = "Perform code readability analysis",
    },
    ["<leader>ln"] = {
      function() vim.cmd ":Lspsaga diagnostic_jump_next" end,
      desc = "Next diagnostic",
    },
    ["<leader>lp"] = {
      function() vim.cmd ":Lspsaga diagnostic_jump_prev" end,
      desc = "Prev diagnostic",
    },
    ["<leader>ll"] = { name = "Lspsaga" },
    ["<leader>llc"] = {
      function() vim.cmd ":Lspsaga show_cursor_diagnostic" end,
      desc = "Cursor diagnostic",
    },
    ["<leader>llb"] = {
      function() vim.cmd ":Lspsaga show_cursor_diagnostic" end,
      desc = "Buf diagnostic",
    },
    ["<leader>llp"] = {
      function() vim.cmd ":Lspsaga peek_definition" end,
      desc = "Peek definition",
    },
    ["<leader>llP"] = {
      function() vim.cmd ":Lspsaga peek_type_definition" end,
      desc = "Peek type definition",
    },
    ["<leader>llo"] = {
      function() vim.cmd ":Lspsaga outline" end,
      desc = "Outline",
    },
    ["<leader>llf"] = {
      function() vim.cmd ":Lspsaga finder" end,
      desc = "Finder",
    },
    ["<leader>llR"] = {
      function() vim.cmd ":Lspsaga project_replace" end,
      desc = "Project replace",
    },
    ["<leader>llr"] = {
      function() vim.cmd ":Lspsaga rename" end,
      desc = "Rename",
    },
    ["<leader>lli"] = {
      function() vim.cmd ":Lspsaga incoming_calls" end,
      desc = "Incoming calls",
    },
    ["<leader>llO"] = {
      function() vim.cmd ":Lspsaga outgoing_calls" end,
      desc = "Outgoing calls",
    },
    ["<leader>llh"] = {
      function() vim.cmd ":Lspsaga hover_doc" end,
      desc = "Hover doc",
    },
    ["<leader>T"] = { name = "Telescope" },
    ["<leader>TT"] = {
      function() vim.cmd ":Telescope" end,
      desc = "Telescope",
    },
    ["<leader>Ts"] = {
      function() vim.cmd ":Telescope treesitter" end,
      desc = "Treesitter",
    },
    ["<leader>Tt"] = {
      function() vim.cmd ":TodoTelescope" end,
      desc = "Todos",
    },
    ["<leader>Tn"] = { name = "Nx" },
    ["<leader>Tng"] = {
      function() vim.cmd ":Telescope nx generators" end,
      desc = "Nx generators",
    },
    ["<leader>Tnw"] = {
      function() vim.cmd ":Telescope nx workspace_generators" end,
      desc = "Nx workspace_generators",
    },
    ["<leader>TnG"] = {
      function() vim.cmd ":Telescope nx external_generators" end,
      desc = "Nx external_generators",
    },
    ["<leader>Tl"] = { name = "lsp_*" },
    ["<leader>Tld"] = {
      function() vim.cmd ":Telescope nx lsp_references" end,
      desc = "References",
    },
    ["<leader>tb"] = {
      function() vim.cmd ":OverseerToggle bottom" end,
      desc = "Toggle overseer bottom",
    },
    ["<leader>tr"] = {
      function() vim.cmd ":OverseerToggle right" end,
      desc = "Toggle overseer right",
    },
    ["<leader>tB"] = {
      function() vim.cmd ":OverseerBuild" end,
      desc = "Overseer build",
    },
    ["<leader>tc"] = {
      function() vim.cmd ":OverseerRunCmd" end,
      desc = "overseer runcmd",
    },
    -- ["<leader>P"] = { name = "Pets" },
    -- ["<leader>Pr"] = {
    --   function() vim.cmd ":PetsRemoveAll" end,
    --   desc = "Remove pets",
    -- },
    -- ["<leader>Pa"] = {
    --   function()
    --     vim.cmd "PetsNewCustom dog beige rebel"
    --     vim.cmd "PetsNewCustom dog black pepper"
    --   end,
    --   desc = "Add pets",
    -- },

    -- ["<leader>aT"] = {
    --   vim.ui.input({ prompt = "Translate to: " }, function(input)
    --     if input then vim.cmd(":ChatGPTRun " .. "translate " .. input) end
    --   end),
    --   desc = "Translate to",
    -- },
    ["<leader>ag"] = {
      function()
        vim.ui.input({ prompt = "Correct to standard: " }, function(input)
          if input then vim.cmd(":ChatGPTRun " .. "grammar_correction " .. input) end
        end)
      end,
      desc = "Grammar correction",
    },
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
  i = {
    ["kj"] = { "<esc>" },
  },
  v = {
    ["<leader>at"] = {
      function() chatgpt.run_action "add_tests" end,
      desc = "Add tests",
    },
    ["<leader>aE"] = {
      function() chatgpt.run_action "explain_code" end,
      desc = "Explain code",
    },
    ["<leader>ak"] = {
      function() chatgpt.run_action "keywords" end,
      desc = "Extract keywords",
    },
    ["<leader>ad"] = {
      function() chatgpt.run_action "docstring" end,
      desc = "Generate docstring",
    },
    ["<leader>ao"] = {
      function() chatgpt.run_action "optimize_code" end,
      desc = "Optimize code",
    },
    ["<leader>as"] = {
      function() chatgpt.run_action "summarize" end,
      desc = "Summarize text",
    },
    ["<leader>af"] = {
      function() chatgpt.run_action "fix_bugs" end,
      desc = "Fix bugs",
    },
    ["<leader>ar"] = {
      function() chatgpt.run_action "roxygen_edit" end,
      desc = "Insert roxygen skeleton",
    },
    ["<leader>aa"] = {
      function() chatgpt.run_action "code_readability_analysis" end,
      desc = "Perform code readability analysis",
    },
    -- ["<leader>aT"] = {
    --   function() chatgpt.run_action "translate" end,
    --   desc = "Translate to",
    -- },
    ["<leader>ag"] = {
      function() chatgpt.run_action "grammar_correction" end,
      desc = "Grammar correction",
    },
  },
}
