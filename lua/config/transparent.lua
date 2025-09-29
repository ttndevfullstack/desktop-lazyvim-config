local transparent_groups = {
  "Normal",
  "NormalNC",
  "NormalFloat",
  "FloatBorder",
  "TelescopeNormal",
  "TelescopeBorder",
  "TelescopePromptNormal",
  "TelescopeResultsNormal",
  "SignColumn",
  "EndOfBuffer",
  "LineNr",
  "CursorLineNr",
  "FoldColumn",
  "StatusLine",
  "StatusLineNC",
  "VertSplit",
  "TabLine",
  "TabLineFill",
  "TabLineSel",
  "WinSeparator",
  "Pmenu",
  "PmenuSel",
  "PmenuSbar",
  "PmenuThumb",
  "WhichKeyFloat",
  "NvimTreeNormal",
  "NvimTreeNormalNC",
  "NvimTreeWinSeparator",
  "NeoTreeNormal",
  "NeoTreeNormalNC",
  "NeoTreeWinSeparator",
  "MsgArea",
  "MsgSeparator",
  "PopupNotification",
  "FloatTitle",
  "LazyNormal",
}

local function set_transparent()
  for _, group in ipairs(transparent_groups) do
    vim.api.nvim_set_hl(0, group, { bg = "none" })
  end
end

set_transparent()

-- Auto reapply on colorscheme change
vim.api.nvim_create_autocmd("ColorScheme", {
  pattern = "*",
  callback = set_transparent,
})
