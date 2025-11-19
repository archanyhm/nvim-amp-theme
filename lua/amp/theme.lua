local colors = require("amp.colors")

local groups = {
  -- UI
  Normal = { fg = colors.fg, bg = colors.bg },
  NormalFloat = { fg = colors.fg, bg = colors.black },
  FloatBorder = { fg = colors.split, bg = colors.black },
  Cursor = { fg = colors.bg, bg = colors.cursor },
  CursorLine = { bg = colors.black },
  CursorColumn = { bg = colors.black },
  LineNr = { fg = colors.bright_black },
  CursorLineNr = { fg = colors.yellow, bold = true },
  Visual = { bg = colors.selection_bg },
  VisualNOS = { bg = colors.selection_bg },
  VertSplit = { fg = colors.split, bg = colors.bg },
  WinSeparator = { fg = colors.split, bg = colors.bg },
  StatusLine = { fg = colors.fg, bg = colors.black },
  StatusLineNC = { fg = colors.bright_black, bg = colors.black },
  Pmenu = { fg = colors.fg, bg = colors.black },
  PmenuSel = { fg = colors.bg, bg = colors.blue },
  PmenuSbar = { bg = colors.black },
  PmenuThumb = { bg = colors.bright_black },
  MatchParen = { bg = colors.split, fg = colors.white, bold = true },
  Search = { fg = colors.bg, bg = colors.yellow },
  IncSearch = { fg = colors.bg, bg = colors.bright_red },

  -- Syntax
  Comment = { fg = colors.bright_black, italic = true },
  Constant = { fg = colors.bright_magenta },
  String = { fg = colors.green },
  Character = { fg = colors.green },
  Number = { fg = colors.bright_magenta },
  Boolean = { fg = colors.bright_magenta },
  Float = { fg = colors.bright_magenta },
  
  Identifier = { fg = colors.red },
  Function = { fg = colors.blue },
  
  Statement = { fg = colors.magenta },
  Conditional = { fg = colors.magenta },
  Repeat = { fg = colors.magenta },
  Label = { fg = colors.magenta },
  Operator = { fg = colors.bright_blue },
  Keyword = { fg = colors.magenta },
  Exception = { fg = colors.red },
  
  PreProc = { fg = colors.cyan },
  Include = { fg = colors.cyan },
  Define = { fg = colors.cyan },
  Macro = { fg = colors.cyan },
  PreCondit = { fg = colors.cyan },
  
  Type = { fg = colors.yellow },
  StorageClass = { fg = colors.yellow },
  Structure = { fg = colors.yellow },
  Typedef = { fg = colors.yellow },
  
  Special = { fg = colors.bright_cyan },
  SpecialChar = { fg = colors.bright_cyan },
  Tag = { fg = colors.bright_cyan },
  Delimiter = { fg = colors.fg },
  SpecialComment = { fg = colors.bright_cyan },
  Debug = { fg = colors.bright_cyan },
  
  Underlined = { underline = true },
  Ignore = { fg = colors.bright_black },
  Error = { fg = colors.red, bold = true },
  Todo = { fg = colors.black, bg = colors.yellow, bold = true },

  -- Git/Diff
  DiffAdd = { fg = colors.green, bg = "NONE" },
  DiffChange = { fg = colors.blue, bg = "NONE" },
  DiffDelete = { fg = colors.red, bg = "NONE" },
  DiffText = { fg = colors.blue, bg = "NONE", reverse = true },
  
  GitSignsAdd = { fg = colors.green },
  GitSignsChange = { fg = colors.blue },
  GitSignsDelete = { fg = colors.red },

  -- Treesitter (generic)
  ["@comment"] = { link = "Comment" },
  ["@string"] = { link = "String" },
  ["@variable"] = { fg = colors.fg },
  ["@variable.builtin"] = { fg = colors.red },
  ["@function"] = { link = "Function" },
  ["@function.builtin"] = { link = "Function" },
  ["@function.call"] = { link = "Function" },
  ["@constructor"] = { fg = colors.yellow },
  ["@operator"] = { link = "Operator" },
  ["@keyword"] = { link = "Keyword" },
  ["@keyword.function"] = { link = "Keyword" },
  ["@keyword.return"] = { link = "Keyword" },
  ["@punctuation.bracket"] = { fg = colors.fg },
  ["@punctuation.delimiter"] = { fg = colors.fg },
  ["@type"] = { link = "Type" },
  ["@type.builtin"] = { link = "Type" },
  ["@constant"] = { link = "Constant" },
  ["@constant.builtin"] = { link = "Constant" },
  ["@tag"] = { fg = colors.red },
  ["@tag.attribute"] = { fg = colors.yellow },
  ["@tag.delimiter"] = { fg = colors.bright_black },
  
  -- LSP
  DiagnosticError = { fg = colors.red },
  DiagnosticWarn = { fg = colors.yellow },
  DiagnosticInfo = { fg = colors.blue },
  DiagnosticHint = { fg = colors.cyan },
  DiagnosticUnderlineError = { sp = colors.red, underline = true },
  DiagnosticUnderlineWarn = { sp = colors.yellow, underline = true },
  DiagnosticUnderlineInfo = { sp = colors.blue, underline = true },
  DiagnosticUnderlineHint = { sp = colors.cyan, underline = true },
  
  -- NeoTree
  NeoTreeNormal = { bg = colors.black },
  NeoTreeNormalNC = { bg = colors.black },
  NeoTreeWinSeparator = { fg = colors.split, bg = colors.black },
}

return groups
