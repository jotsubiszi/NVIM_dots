return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    opts = {
      flavour = "mocha", -- latte, frappe, macchiato, mocha
      transparent_background = true, 
      integrations = {
        telescope = true,
        gitsigns = true,
        treesitter = true,
        cmp = true,
        mason = true,
        which_key = true,
      },
    },
    config = function(_, opts)
      require("catppuccin").setup(opts)
      vim.cmd.colorscheme("catppuccin")
    end,
  },

  -- { "folke/tokyonight.nvim", priority = 1000 },
  -- { "ellisonleao/gruvbox.nvim", priority = 1000 },
}
