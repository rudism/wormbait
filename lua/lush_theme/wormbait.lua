local lush = require('lush')
local hsl = lush.hsl

---@diagnostic disable: undefined-global
local theme = lush(function()
  return {
    Normal    { bg = hsl(0, 0, 14), fg = hsl(45, 18, 87) },
    CursorLine   { bg = hsl(0, 0, 3) },
    Comment      { fg = hsl(47, 6, 57), gui = "italic" },
    Visual       { bg = hsl(12, 6, 31) },
    Constant       { fg = hsl(6, 70, 66) },
    String         { fg = hsl(93, 73, 61), gui = "italic" },
    Keyword        { fg = hsl(214, 86, 75) },
    Function       { fg = hsl(77, 67, 71) },
    Cursor       { bg = hsl(0, 0, 40), fg = CursorLine.bg },
    Error          { fg = hsl(0, 100, 50), gui = "italic" },
    WarningMsg   { fg = hsl(34, 100, 50), gui = "italic" },
    NonText      { fg = hsl(0, 0, 30) },
    Search       { bg = hsl(280, 100, 76), fg = CursorLine.bg },

    ColorColumn  { },
    Conceal      { },
    lCursor      { },
    CursorIM     { },
    CursorColumn { },
    Directory    { Keyword },
    DiffAdd      { },
    DiffChange   { },
    DiffDelete   { },
    DiffText     { },
    EndOfBuffer  { NonText },
    TermCursor   { },
    TermCursorNC { },
    ErrorMsg     { Error },
    VertSplit    { fg = CursorLine.bg },
    Folded       { },
    FoldColumn   { },
    SignColumn   { CursorLine },
    IncSearch    { Search },
    Substitute   { },
    LineNr       { bg = CursorLine.bg, fg = NonText.fg },
    CursorLineNr { bg = CursorLine.bg },
    MatchParen   { gui = "bold" },
    ModeMsg      { },
    MsgArea      { },
    MsgSeparator { },
    MoreMsg      { },
    NormalFloat  { },
    NormalNC     { },
    Pmenu        { bg = CursorLine.bg },
    PmenuSel     { bg = Keyword.fg, fg = CursorLine.bg },
    PmenuSbar    { CursorLine },
    PmenuThumb   { bg = NonText.fg },
    Question     { },
    QuickFixLine { },
    SpecialKey   { NonText },
    SpellBad     { Error },
    SpellCap     { WarningMsg },
    SpellLocal   { WarningMsg },
    SpellRare    { WarningMsg },
    StatusLine   { },
    StatusLineNC { },
    TabLine      { },
    TabLineFill  { },
    TabLineSel   { },
    Title        { },
    VisualNOS    { },
    Whitespace   { NonText },
    WildMenu     { },

    Character      { String },
    Number         { Constant },
    Boolean        { Constant },
    Float          { Constant },

    Identifier     { },
    Type           { Function },

    Statement      { Keyword },
    Conditional    { Keyword },
    Repeat         { Keyword },
    Label          { Keyword },
    Operator       { },
    Exception      { Keyword },

    PreProc        { Constant },
    Include        { Constant },
    Define         { Constant },
    Macro          { Constant },
    PreCondit      { Constant },

    StorageClass   { Keyword },
    Structure      { Keyword },
    Typedef        { },

    Special        { },
    SpecialChar    { },
    Tag            { },
    Delimiter      { },
    SpecialComment { },
    Debug          { },

    Underlined { gui = "underline" },
    Bold       { gui = "bold" },
    Italic     { gui = "italic" },

    -- ("Ignore", below, may be invisible...)
    -- Ignore         { },

    Todo           { fg = Search.bg, gui = "bold" },

    LspDiagnosticsDefaultError           { Error, bg = CursorLine.bg },
    LspDiagnosticsDefaultWarning         { WarningMsg, bg = CursorLine.bg },
    LspDiagnosticsDefaultInformation     { bg = CursorLine.bg },
    LspDiagnosticsDefaultHint            { Comment, bg = CursorLine.bg },

    LspDiagnosticsSignError              { fg = Error.fg, bg = CursorLine.bg },
    LspDiagnosticsSignWarning            { fg = WarningMsg.fg, bg = CursorLine.bg },
    LspDiagnosticsSignInformation        { bg = CursorLine.bg },
    LspDiagnosticsSignHint               { fg = Comment.fg, bg = CursorLine.bg },

    -- gitsigns
    GitSignsAdd { bg = SignColumn.bg, fg = String.fg },
    GitSignsChange { bg = SignColumn.bg, fg = Keyword.fg },
    GitSignsDelete { bg = SignColumn.bg, fg = Constant.fg },

    -- language specific stuff
    csGeneric { Function },
    yamlBlockMappingKey { Function },
    sqlKeyword { Keyword },
    typescriptAbstract { Keyword },
    typescriptBOMLocationMethod { Identifier },
    typescriptBOMWindowMethod { Identifier },
    typescriptBOMWindowProp { Function },
    typescriptDOMDocProp { Identifier },
    typescriptDOMDocMethod { Identifier },
    typescriptDOMEventTargetMethod { Identifier },
    typescriptDOMFormMethod { Identifier },
    typescriptDOMFormProp { Identifier },
    typescriptDOMNodeMethod { Identifier },
    typescriptDateMethod { Identifier },
    typescriptGlobal { Function },
    typescriptObjectStaticMethod { Identifier },
    typescriptPaymentShippingOptionProp { Identifier },
    typescriptVariable { Keyword },
  }
end)

-- return our parsed theme for extension or use else where.
return theme

-- vi:nowrap
