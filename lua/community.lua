-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",
  { import = "astrocommunity.colorscheme.rose-pine" },
  { import = "astrocommunity.git.blame-nvim" },
  { import = "astrocommunity.pack.bash" },
  { import = "astrocommunity.pack.cs" },
  -- { import = "astrocommunity.pack.go" },
  { import = "astrocommunity.pack.lua" },
  { import = "astrocommunity.pack.markdown" },
  { import = "astrocommunity.pack.python" },
  { import = "astrocommunity.pack.tailwindcss" },
  { import = "astrocommunity.pack.typescript" },
  { import = "astrocommunity.pack.go" },
  { import = "astrocommunity.git.octo-nvim" },
  -- { import = "astrocommunity.pack.svelte" },
  -- import/override with your plugins folder
}
