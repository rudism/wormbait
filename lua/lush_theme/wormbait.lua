--
-- Built with,
--
--        ,gggg,
--       d8" "8I                         ,dPYb,
--       88  ,dP                         IP'`Yb
--    8888888P"                          I8  8I
--       88                              I8  8'
--       88        gg      gg    ,g,     I8 dPgg,
--  ,aa,_88        I8      8I   ,8'8,    I8dP" "8I
-- dP" "88P        I8,    ,8I  ,8'  Yb   I8P    I8
-- Yb,_,d88b,,_   ,d8b,  ,d8b,,8'_   8) ,d8     I8,
--  "Y8P"  "Y888888P'"Y88P"`Y8P' "YY8P8P88P     `Y8
--

local lush = require('lush')
local hsl = lush.hsl

-- LSP/Linters mistakenly show `undefined global` errors in the spec, they may
-- support an annotation like the following. Consult your server documentation.
---@diagnostic disable: undefined-global
local theme = lush(function()
  return {
    Normal    { bg = hsl(0, 0, 14), fg = hsl(45, 18, 87) },
    CursorLine   { bg = hsl(0, 0, 3) },
    Comment      { fg = hsl(47, 6, 57), gui = "Italic" },
    Visual       { bg = hsl(12, 6, 31) },
    Constant       { fg = hsl(6, 70, 66) }, -- (preferred) any constant
    String         { fg = hsl(93, 73, 61), gui = "Italic" }, --   a string constant: "this is a string"
    Keyword        { fg = hsl(214, 86, 75) }, --  any other keyword
    Function       { fg = hsl(77, 67, 71) }, -- function name (also: methods for classes)
    Cursor       { bg = hsl(0, 0, 40), fg = CursorLine.bg }, -- character under the cursor
    Error          { fg = hsl(0, 100, 50) }, -- (preferred) any erroneous construct
    WarningMsg   { fg = hsl(34, 100, 50) }, -- warning messages
    NonText      { fg = hsl(0, 0, 30) }, -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
    Search       { bg = hsl(280, 100, 76), fg = CursorLine.bg }, -- Last search pattern highlighting (see 'hlsearch').  Also used for similar items that need to stand out.

    ColorColumn  { }, -- used for the columns set with 'colorcolumn'
    Conceal      { }, -- placeholder characters substituted for concealed text (see 'conceallevel')
    lCursor      { }, -- the character under the cursor when |language-mapping| is used (see 'guicursor')
    CursorIM     { }, -- like Cursor, but used when in IME mode |CursorIM|
    CursorColumn { }, -- Screen-column at the cursor, when 'cursorcolumn' is set.
    Directory    { Keyword }, -- directory names (and other special names in listings)
    DiffAdd      { }, -- diff mode: Added line |diff.txt|
    DiffChange   { }, -- diff mode: Changed line |diff.txt|
    DiffDelete   { }, -- diff mode: Deleted line |diff.txt|
    DiffText     { }, -- diff mode: Changed text within a changed line |diff.txt|
    EndOfBuffer  { bg = CursorLine.bg, fg = NonText.fg }, -- filler lines (~) after the end of the buffer.  By default, this is highlighted like |hl-NonText|.
    TermCursor   { }, -- cursor in a focused terminal
    TermCursorNC { }, -- cursor in an unfocused terminal
    ErrorMsg     { Error }, -- error messages on the command line
    VertSplit    { }, -- the column separating vertically split windows
    Folded       { }, -- line used for closed folds
    FoldColumn   { }, -- 'foldcolumn'
    SignColumn   { CursorLine }, -- column where |signs| are displayed
    IncSearch    { Search }, -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
    Substitute   { }, -- |:substitute| replacement text highlighting
    LineNr       { bg = CursorLine.bg, fg = NonText.fg }, -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
    CursorLineNr { bg = CursorLine.bg }, -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
    MatchParen   { gui = "bold" }, -- The character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
    ModeMsg      { }, -- 'showmode' message (e.g., "-- INSERT -- ")
    MsgArea      { }, -- Area for messages and cmdline
    MsgSeparator { }, -- Separator for scrolled messages, `msgsep` flag of 'display'
    MoreMsg      { }, -- |more-prompt|
    NormalFloat  { }, -- Normal text in floating windows.
    NormalNC     { }, -- normal text in non-current windows
    Pmenu        { }, -- Popup menu: normal item.
    PmenuSel     { bg = Keyword.fg, fg = CursorLine.bg }, -- Popup menu: selected item.
    PmenuSbar    { CursorLine }, -- Popup menu: scrollbar.
    PmenuThumb   { bg = NonText.fg }, -- Popup menu: Thumb of the scrollbar.
    Question     { }, -- |hit-enter| prompt and yes/no questions
    QuickFixLine { }, -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
    SpecialKey   { NonText }, -- Unprintable characters: text displayed differently from what it really is.  But not 'listchars' whitespace. |hl-Whitespace|
    SpellBad     { Error }, -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise. 
    SpellCap     { WarningMsg }, -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
    SpellLocal   { WarningMsg }, -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
    SpellRare    { WarningMsg }, -- Word that is recognized by the spellchecker as one that is hardly ever used.  |spell| Combined with the highlighting used otherwise.
    StatusLine   { CursorLine }, -- status line of current window
    StatusLineNC { }, -- status lines of not-current windows Note: if this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
    TabLine      { }, -- tab pages line, not active tab page label
    TabLineFill  { }, -- tab pages line, where there are no labels
    TabLineSel   { }, -- tab pages line, active tab page label
    Title        { }, -- titles for output from ":set all", ":autocmd" etc.
    VisualNOS    { }, -- Visual mode selection when vim is "Not Owning the Selection".
    Whitespace   { NonText }, -- "nbsp", "space", "tab" and "trail" in 'listchars'
    WildMenu     { }, -- current match in 'wildmenu' completion

    -- These groups are not listed as default vim groups,
    -- but they are defacto standard group names for syntax highlighting.
    -- commented out groups should chain up to their "preferred" group by
    -- default,
    -- Uncomment and edit if you want more specific syntax highlighting.

    Character      { String }, --  a character constant: 'c', '\n'
    Number         { Constant }, --   a number constant: 234, 0xff
    Boolean        { Constant }, --  a boolean constant: TRUE, false
    Float          { Constant }, --    a floating point constant: 2.3e10

    Identifier     { }, -- (preferred) any variable name
    Type           { Function }, -- (preferred) int, long, char, etc.

    Statement      { Keyword }, -- (preferred) any statement
    Conditional    { Keyword }, --  if, then, else, endif, switch, etc.
    Repeat         { Keyword }, --   for, do, while, etc.
    Label          { Keyword }, --    case, default, etc.
    Operator       { }, -- "sizeof", "+", "*", etc.
    Exception      { Keyword }, --  try, catch, throw

    PreProc        { Constant }, -- (preferred) generic Preprocessor
    Include        { Constant }, --  preprocessor #include
    Define         { Constant }, --   preprocessor #define
    Macro          { Constant }, --    same as Define
    PreCondit      { Constant }, --  preprocessor #if, #else, #endif, etc.

    StorageClass   { Keyword }, -- static, register, volatile, etc.
    Structure      { Keyword }, --  struct, union, enum, etc.
    Typedef        { }, --  A typedef

    Special        { }, -- (preferred) any special symbol
    SpecialChar    { }, --  special character in a constant
    Tag            { }, --    you can use CTRL-] on this
    Delimiter      { }, --  character that needs attention
    SpecialComment { }, -- special things inside a comment
    Debug          { }, --    debugging statements

    Underlined { gui = "underline" }, -- (preferred) text that stands out, HTML links
    Bold       { gui = "bold" },
    Italic     { gui = "italic" },

    -- ("Ignore", below, may be invisible...)
    -- Ignore         { }, -- (preferred) left blank, hidden  |hl-Ignore|

    Todo           { }, -- (preferred) anything that needs extra attention; mostly the keywords TODO FIXME and XXX

    -- These groups are for the native LSP client. Some other LSP clients may
    -- use these groups, or use their own. Consult your LSP client's
    -- documentation.

    -- LspReferenceText                     { }, -- used for highlighting "text" references
    -- LspReferenceRead                     { }, -- used for highlighting "read" references
    -- LspReferenceWrite                    { }, -- used for highlighting "write" references

    LspDiagnosticsDefaultError           { Error }, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
    LspDiagnosticsDefaultWarning         { WarningMsg }, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
    -- LspDiagnosticsDefaultInformation     { }, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
    -- LspDiagnosticsDefaultHint            { }, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)

    -- LspDiagnosticsVirtualTextError       { }, -- Used for "Error" diagnostic virtual text
    -- LspDiagnosticsVirtualTextWarning     { }, -- Used for "Warning" diagnostic virtual text
    -- LspDiagnosticsVirtualTextInformation { }, -- Used for "Information" diagnostic virtual text
    -- LspDiagnosticsVirtualTextHint        { }, -- Used for "Hint" diagnostic virtual text

    -- LspDiagnosticsUnderlineError         { }, -- Used to underline "Error" diagnostics
    -- LspDiagnosticsUnderlineWarning       { }, -- Used to underline "Warning" diagnostics
    -- LspDiagnosticsUnderlineInformation   { }, -- Used to underline "Information" diagnostics
    -- LspDiagnosticsUnderlineHint          { }, -- Used to underline "Hint" diagnostics

    -- LspDiagnosticsFloatingError          { }, -- Used to color "Error" diagnostic messages in diagnostics float
    -- LspDiagnosticsFloatingWarning        { }, -- Used to color "Warning" diagnostic messages in diagnostics float
    -- LspDiagnosticsFloatingInformation    { }, -- Used to color "Information" diagnostic messages in diagnostics float
    -- LspDiagnosticsFloatingHint           { }, -- Used to color "Hint" diagnostic messages in diagnostics float

    LspDiagnosticsSignError              { fg = Error.fg, bg = CursorLine.bg }, -- Used for "Error" signs in sign column
    LspDiagnosticsSignWarning            { fg = WarningMsg.fg, bg = CursorLine.bg }, -- Used for "Warning" signs in sign column
    -- LspDiagnosticsSignInformation        { }, -- Used for "Information" signs in sign column
    -- LspDiagnosticsSignHint               { }, -- Used for "Hint" signs in sign column

    -- These groups are for the neovim tree-sitter highlights.
    -- As of writing, tree-sitter support is a WIP, group names may change.
    -- By default, most of these groups link to an appropriate Vim group,
    -- TSError -> Error for example, so you do not have to define these unless
    -- you explicitly want to support Treesitter's improved syntax awareness.

    -- TSAnnotation         { };    -- For C++/Dart attributes, annotations that can be attached to the code to denote some kind of meta information.
    -- TSAttribute          { };    -- (unstable) TODO: docs
    -- TSBoolean            { };    -- For booleans.
    -- TSCharacter          { };    -- For characters.
    -- TSComment            { };    -- For comment blocks.
    -- TSConstructor        { };    -- For constructor calls and definitions: ` { }` in Lua, and Java constructors.
    -- TSConditional        { };    -- For keywords related to conditionnals.
    -- TSConstant           { };    -- For constants
    -- TSConstBuiltin       { };    -- For constant that are built in the language: `nil` in Lua.
    -- TSConstMacro         { };    -- For constants that are defined by macros: `NULL` in C.
    -- TSError              { };    -- For syntax/parser errors.
    -- TSException          { };    -- For exception related keywords.
    -- TSField              { };    -- For fields.
    -- TSFloat              { };    -- For floats.
    -- TSFunction           { };    -- For function (calls and definitions).
    -- TSFuncBuiltin        { };    -- For builtin functions: `table.insert` in Lua.
    -- TSFuncMacro          { };    -- For macro defined fuctions (calls and definitions): each `macro_rules` in Rust.
    -- TSInclude            { };    -- For includes: `#include` in C, `use` or `extern crate` in Rust, or `require` in Lua.
    -- TSKeyword            { };    -- For keywords that don't fall in previous categories.
    -- TSKeywordFunction    { };    -- For keywords used to define a fuction.
    -- TSLabel              { };    -- For labels: `label:` in C and `:label:` in Lua.
    -- TSMethod             { };    -- For method calls and definitions.
    -- TSNamespace          { };    -- For identifiers referring to modules and namespaces.
    -- TSNone               { };    -- TODO: docs
    -- TSNumber             { };    -- For all numbers
    -- TSOperator           { };    -- For any operator: `+`, but also `->` and `*` in C.
    -- TSParameter          { };    -- For parameters of a function.
    -- TSParameterReference { };    -- For references to parameters of a function.
    -- TSProperty           { };    -- Same as `TSField`.
    -- TSPunctDelimiter     { };    -- For delimiters ie: `.`
    -- TSPunctBracket       { };    -- For brackets and parens.
    -- TSPunctSpecial       { };    -- For special punctutation that does not fall in the catagories before.
    -- TSRepeat             { };    -- For keywords related to loops.
    -- TSString             { };    -- For strings.
    -- TSStringRegex        { };    -- For regexes.
    -- TSStringEscape       { };    -- For escape characters within a string.
    -- TSSymbol             { };    -- For identifiers referring to symbols or atoms.
    -- TSType               { };    -- For types.
    -- TSTypeBuiltin        { };    -- For builtin types.
    -- TSVariable           { };    -- Any variable name that does not have another highlight.
    -- TSVariableBuiltin    { };    -- Variable names that are defined by the languages, like `this` or `self`.

    -- TSTag                { };    -- Tags like html tag names.
    -- TSTagDelimiter       { };    -- Tag delimiter like `<` `>` `/`
    -- TSText               { };    -- For strings considered text in a markup language.
    -- TSEmphasis           { };    -- For text to be represented with emphasis.
    -- TSUnderline          { };    -- For text to be represented with an underline.
    -- TSStrike             { };    -- For strikethrough text.
    -- TSTitle              { };    -- Text that is part of a title.
    -- TSLiteral            { };    -- Literal text.
    -- TSURI                { };    -- Any URI like a link or email.

  }
end)

-- return our parsed theme for extension or use else where.
return theme

-- vi:nowrap
