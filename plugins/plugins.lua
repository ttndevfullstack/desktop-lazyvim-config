return {
  {
    "sindrets/diffview.nvim",
    event = "VeryLazy", -- lazy load for performance
    dependencies = { "nvim-lua/plenary.nvim" },
  },
  {
    "f-person/git-blame.nvim",
    event = "VeryLazy",
  },
}
