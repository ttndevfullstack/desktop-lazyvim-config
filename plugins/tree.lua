return {
  {
    "nvim-treesitter/nvim-treesitter-context",
    event = "BufReadPost",
    config = function()
      require("treesitter-context").setup({
        enable = true,
        max_lines = 6,
        trim_scope = "outer",
        mode = "cursor",
        line_numbers = true,
        multiline_threshold = 20,
        zindex = 20,

        -- 👇 Limit context to only high-level nodes
        patterns = {
          default = {
            "class",
            "function",
            "method",
          },
        },
      })
    end,
  },
}

