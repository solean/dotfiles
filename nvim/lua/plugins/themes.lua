return {
  {
    "ribru17/bamboo.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("bamboo").setup({
        -- style = "vulgaris", -- vulgaris (regular), multiplex (greener), light
        toggle_style_key = "<leader>ts",
      })
      -- require("bamboo").load()
    end,
  },
  {
    "craftzdog/solarized-osaka.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
  },
  {
    "rebelot/kanagawa.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
    config = function()
      -- require("kanagawa").setup({
      --   theme = "dragon",
      --   background = {
      --     dark = "dragon",
      --     light = "lotus",
      --   },
      -- })
    end,
  },

  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "bamboo-light",
      -- colorscheme = "bamboo-multiplex",
      -- colorscheme = "solarized-osaka",
      -- colorscheme = "kanagawa-dragon",
    },
  },
}
