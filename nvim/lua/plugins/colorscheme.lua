local function active()
  local ok, name = pcall(dofile, vim.fn.stdpath("config") .. "/lua/theme.lua")
  return (ok and type(name) == "string" and name ~= "") and name or "moonfly"
end

return {
  { "catppuccin/nvim", name = "catppuccin", lazy = false, priority = 1000 },
  { "NTBBloodbath/doom-one.nvim", lazy = false, priority = 1000 },
  { "Mofiqul/dracula.nvim", lazy = false, priority = 1000 },
  { "sainnhe/everforest", lazy = false, priority = 1000, init = function() vim.g.everforest_background = "hard" end },
  { "projekt0n/github-nvim-theme", name = "github-theme", lazy = false, priority = 1000 },
  { "ellisonleao/gruvbox.nvim", lazy = false, priority = 1000 },
  { "rebelot/kanagawa.nvim", lazy = false, priority = 1000 },
  { "loctvl842/monokai-pro.nvim", lazy = false, priority = 1000 },
  { "bluz71/vim-moonfly-colors", name = "moonfly", lazy = false, priority = 1000 },
  { "shaunsingh/nord.nvim", lazy = false, priority = 1000 },
  { "rose-pine/neovim", name = "rose-pine", lazy = false, priority = 1000 },
  { "LazyVim/LazyVim", opts = { colorscheme = active() } },
}
