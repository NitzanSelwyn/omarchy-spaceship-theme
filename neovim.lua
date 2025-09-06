-- Spaceship Landing Theme for Neovim
-- Deep space exploration colorscheme inspired by cosmic landscapes

return {
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = function()
        -- Spaceship Landing color palette
        local colors = {
          -- Base colors (deep space theme)
          bg0 = '#0f1520',    -- Deep space void (main background)
          bg1 = '#1b2951',    -- Space blue (slightly lighter)
          bg2 = '#243454',    -- Lighter space blue (UI elements)
          bg3 = '#2e5266',    -- Deep cosmic teal (selection/highlight)
          bg4 = '#3b6b7d',    -- Atmospheric teal (inactive elements)
          bg5 = '#4a8bb8',    -- Cosmic blue accent (comments/subtle text)
          
          -- Foreground colors
          fg0 = '#e8f4f8',    -- Moonlight silver (main text)
          fg1 = '#b8c5d1',    -- Metallic silver (slightly dimmed)
          fg2 = '#8fa7b3',    -- Subdued metallic text
          
          -- Accent colors (cosmic palette)
          cosmic_blue = '#4a8bb8',     -- Primary cosmic blue
          teal_accent = '#3b6b7d',     -- Atmospheric teal
          deep_teal = '#2e5266',       -- Deep cosmic teal
          mars_rust = '#a05548',       -- Mars terrain rust
          dusty_rose = '#c97b6b',      -- Dusty rose/warning
          space_purple = '#6b5b95',    -- Deep space purple
          stellar_cyan = '#5dade2',    -- Stellar cyan
          nebula_pink = '#af7ac5',     -- Nebula pink accent
          
          -- Special
          selection = '#2e5266',
          cursor_line = '#1b2951',
          visual = '#243454',
        }

        -- Reset highlighting
        vim.cmd('highlight clear')
        if vim.fn.exists('syntax_on') then
          vim.cmd('syntax reset')
        end
        
        vim.o.termguicolors = true
        vim.o.background = 'dark'
        vim.g.colors_name = 'spaceship-landing'
        
        local hl = vim.api.nvim_set_hl
        
        -- Editor highlights
        hl(0, 'Normal', { fg = colors.fg0, bg = colors.bg0 })
        hl(0, 'NormalFloat', { fg = colors.fg0, bg = colors.bg1 })
        hl(0, 'FloatBorder', { fg = colors.cosmic_blue, bg = colors.bg1 })
        hl(0, 'FloatTitle', { fg = colors.dusty_rose, bg = colors.bg1, bold = true })
        hl(0, 'Cursor', { fg = colors.bg0, bg = colors.cosmic_blue })
        hl(0, 'CursorLine', { bg = colors.cursor_line })
        hl(0, 'CursorLineNr', { fg = colors.dusty_rose, bold = true })
        hl(0, 'LineNr', { fg = colors.fg2 })
        hl(0, 'Visual', { bg = colors.visual })
        hl(0, 'VisualNOS', { bg = colors.visual })
        hl(0, 'Search', { fg = colors.bg0, bg = colors.dusty_rose })
        hl(0, 'IncSearch', { fg = colors.bg0, bg = colors.cosmic_blue })
        hl(0, 'MatchParen', { fg = colors.nebula_pink, bold = true })
        
        -- Syntax highlighting
        hl(0, 'Comment', { fg = colors.bg5, italic = true })
        hl(0, 'Constant', { fg = colors.space_purple })
        hl(0, 'String', { fg = colors.deep_teal })
        hl(0, 'Character', { fg = colors.deep_teal })
        hl(0, 'Number', { fg = colors.space_purple })
        hl(0, 'Boolean', { fg = colors.space_purple })
        hl(0, 'Float', { fg = colors.space_purple })
        hl(0, 'Identifier', { fg = colors.fg0 })
        hl(0, 'Function', { fg = colors.stellar_cyan })
        hl(0, 'Statement', { fg = colors.cosmic_blue })
        hl(0, 'Conditional', { fg = colors.cosmic_blue })
        hl(0, 'Repeat', { fg = colors.cosmic_blue })
        hl(0, 'Label', { fg = colors.teal_accent })
        hl(0, 'Operator', { fg = colors.fg1 })
        hl(0, 'Keyword', { fg = colors.cosmic_blue })
        hl(0, 'Exception', { fg = colors.mars_rust })
        hl(0, 'PreProc', { fg = colors.nebula_pink })
        hl(0, 'Include', { fg = colors.nebula_pink })
        hl(0, 'Define', { fg = colors.nebula_pink })
        hl(0, 'Macro', { fg = colors.nebula_pink })
        hl(0, 'PreCondit', { fg = colors.nebula_pink })
        hl(0, 'Type', { fg = colors.teal_accent })
        hl(0, 'StorageClass', { fg = colors.teal_accent })
        hl(0, 'Structure', { fg = colors.teal_accent })
        hl(0, 'Typedef', { fg = colors.teal_accent })
        hl(0, 'Special', { fg = colors.dusty_rose })
        hl(0, 'SpecialChar', { fg = colors.dusty_rose })
        hl(0, 'Tag', { fg = colors.cosmic_blue })
        hl(0, 'Delimiter', { fg = colors.fg1 })
        hl(0, 'SpecialComment', { fg = colors.bg5, italic = true, bold = true })
        hl(0, 'Debug', { fg = colors.mars_rust })
        hl(0, 'Underlined', { underline = true })
        hl(0, 'Error', { fg = colors.mars_rust, bold = true })
        hl(0, 'Todo', { fg = colors.dusty_rose, bold = true })
        
        -- UI elements
        hl(0, 'StatusLine', { fg = colors.fg0, bg = colors.bg2 })
        hl(0, 'StatusLineNC', { fg = colors.fg2, bg = colors.bg1 })
        hl(0, 'TabLine', { fg = colors.fg2, bg = colors.bg2 })
        hl(0, 'TabLineFill', { bg = colors.bg1 })
        hl(0, 'TabLineSel', { fg = colors.cosmic_blue, bg = colors.bg0, bold = true })
        hl(0, 'Pmenu', { fg = colors.fg0, bg = colors.bg1 })
        hl(0, 'PmenuSel', { fg = colors.dusty_rose, bg = colors.bg3, bold = true })
        hl(0, 'PmenuSbar', { bg = colors.bg2 })
        hl(0, 'PmenuThumb', { bg = colors.teal_accent })
        hl(0, 'WildMenu', { fg = colors.bg0, bg = colors.cosmic_blue })
        hl(0, 'VertSplit', { fg = colors.bg3 })
        hl(0, 'WinSeparator', { fg = colors.bg3 })
        hl(0, 'Folded', { fg = colors.fg2, bg = colors.bg1 })
        hl(0, 'FoldColumn', { fg = colors.nebula_pink, bg = colors.bg0 })
        hl(0, 'SignColumn', { fg = colors.teal_accent, bg = colors.bg0 })
        hl(0, 'ColorColumn', { bg = colors.bg1 })
        
        -- Diff highlighting
        hl(0, 'DiffAdd', { fg = colors.deep_teal, bg = colors.bg1 })
        hl(0, 'DiffChange', { fg = colors.dusty_rose, bg = colors.bg1 })
        hl(0, 'DiffDelete', { fg = colors.mars_rust, bg = colors.bg1 })
        hl(0, 'DiffText', { fg = colors.fg1, bg = colors.bg3, bold = true })
        
        -- Git signs
        hl(0, 'GitSignsAdd', { fg = colors.deep_teal })
        hl(0, 'GitSignsChange', { fg = colors.dusty_rose })
        hl(0, 'GitSignsDelete', { fg = colors.mars_rust })
        
        -- Diagnostic highlights
        hl(0, 'DiagnosticError', { fg = colors.mars_rust })
        hl(0, 'DiagnosticWarn', { fg = colors.dusty_rose })
        hl(0, 'DiagnosticInfo', { fg = colors.space_purple })
        hl(0, 'DiagnosticHint', { fg = colors.nebula_pink })
        hl(0, 'DiagnosticUnderlineError', { undercurl = true, sp = colors.mars_rust })
        hl(0, 'DiagnosticUnderlineWarn', { undercurl = true, sp = colors.dusty_rose })
        hl(0, 'DiagnosticUnderlineInfo', { undercurl = true, sp = colors.space_purple })
        hl(0, 'DiagnosticUnderlineHint', { undercurl = true, sp = colors.nebula_pink })
        
        -- LSP highlights
        hl(0, 'LspReferenceText', { bg = colors.bg2 })
        hl(0, 'LspReferenceRead', { bg = colors.bg2 })
        hl(0, 'LspReferenceWrite', { bg = colors.bg2, underline = true })
        
        -- Treesitter highlights
        hl(0, '@variable', { fg = colors.fg0 })
        hl(0, '@variable.builtin', { fg = colors.space_purple })
        hl(0, '@variable.parameter', { fg = colors.fg1 })
        hl(0, '@variable.member', { fg = colors.stellar_cyan })
        hl(0, '@constant', { fg = colors.space_purple })
        hl(0, '@constant.builtin', { fg = colors.space_purple })
        hl(0, '@constant.macro', { fg = colors.dusty_rose })
        hl(0, '@module', { fg = colors.teal_accent })
        hl(0, '@module.builtin', { fg = colors.teal_accent })
        hl(0, '@label', { fg = colors.teal_accent })
        hl(0, '@string', { fg = colors.deep_teal })
        hl(0, '@string.escape', { fg = colors.dusty_rose })
        hl(0, '@string.special', { fg = colors.dusty_rose })
        hl(0, '@string.regexp', { fg = colors.nebula_pink })
        hl(0, '@character', { fg = colors.deep_teal })
        hl(0, '@character.special', { fg = colors.dusty_rose })
        hl(0, '@boolean', { fg = colors.space_purple })
        hl(0, '@number', { fg = colors.space_purple })
        hl(0, '@number.float', { fg = colors.space_purple })
        hl(0, '@type', { fg = colors.teal_accent })
        hl(0, '@type.builtin', { fg = colors.teal_accent })
        hl(0, '@type.definition', { fg = colors.teal_accent })
        hl(0, '@attribute', { fg = colors.nebula_pink })
        hl(0, '@property', { fg = colors.stellar_cyan })
        hl(0, '@function', { fg = colors.stellar_cyan })
        hl(0, '@function.builtin', { fg = colors.stellar_cyan })
        hl(0, '@function.call', { fg = colors.stellar_cyan })
        hl(0, '@function.macro', { fg = colors.nebula_pink })
        hl(0, '@function.method', { fg = colors.stellar_cyan })
        hl(0, '@function.method.call', { fg = colors.stellar_cyan })
        hl(0, '@constructor', { fg = colors.teal_accent })
        hl(0, '@operator', { fg = colors.fg1 })
        hl(0, '@keyword', { fg = colors.cosmic_blue })
        hl(0, '@keyword.coroutine', { fg = colors.cosmic_blue })
        hl(0, '@keyword.function', { fg = colors.cosmic_blue })
        hl(0, '@keyword.operator', { fg = colors.cosmic_blue })
        hl(0, '@keyword.import', { fg = colors.nebula_pink })
        hl(0, '@keyword.conditional', { fg = colors.cosmic_blue })
        hl(0, '@keyword.repeat', { fg = colors.cosmic_blue })
        hl(0, '@keyword.return', { fg = colors.cosmic_blue })
        hl(0, '@keyword.exception', { fg = colors.mars_rust })
        hl(0, '@comment', { fg = colors.bg5, italic = true })
        hl(0, '@comment.documentation', { fg = colors.bg5, italic = true })
        hl(0, '@punctuation', { fg = colors.fg1 })
        hl(0, '@punctuation.bracket', { fg = colors.fg1 })
        hl(0, '@punctuation.delimiter', { fg = colors.fg1 })
        hl(0, '@punctuation.special', { fg = colors.dusty_rose })
        hl(0, '@tag', { fg = colors.cosmic_blue })
        hl(0, '@tag.attribute', { fg = colors.teal_accent })
        hl(0, '@tag.delimiter', { fg = colors.fg1 })
        
        -- Telescope
        hl(0, 'TelescopeBorder', { fg = colors.cosmic_blue })
        hl(0, 'TelescopePromptBorder', { fg = colors.teal_accent })
        hl(0, 'TelescopeResultsBorder', { fg = colors.deep_teal })
        hl(0, 'TelescopePreviewBorder', { fg = colors.space_purple })
        hl(0, 'TelescopeSelection', { fg = colors.dusty_rose, bg = colors.bg2, bold = true })
        hl(0, 'TelescopeMatching', { fg = colors.cosmic_blue, bold = true })
        
        -- Neo-tree
        hl(0, 'NeoTreeNormal', { fg = colors.fg0, bg = colors.bg0 })
        hl(0, 'NeoTreeDirectoryName', { fg = colors.teal_accent })
        hl(0, 'NeoTreeDirectoryIcon', { fg = colors.deep_teal })
        hl(0, 'NeoTreeFileName', { fg = colors.fg0 })
        hl(0, 'NeoTreeFileIcon', { fg = colors.fg1 })
        hl(0, 'NeoTreeIndentMarker', { fg = colors.bg3 })
        hl(0, 'NeoTreeRootName', { fg = colors.cosmic_blue, bold = true })
        hl(0, 'NeoTreeGitModified', { fg = colors.dusty_rose })
        hl(0, 'NeoTreeGitAdded', { fg = colors.deep_teal })
        hl(0, 'NeoTreeGitDeleted', { fg = colors.mars_rust })
        
        -- Terminal colors (matching theme palette)
        vim.g.terminal_color_0 = colors.bg1           -- Black (space blue)
        vim.g.terminal_color_1 = colors.teal_accent   -- Red (atmospheric teal)
        vim.g.terminal_color_2 = colors.deep_teal     -- Green (deep cosmic teal)
        vim.g.terminal_color_3 = colors.dusty_rose    -- Yellow (dusty rose)
        vim.g.terminal_color_4 = colors.space_purple  -- Blue (space purple)
        vim.g.terminal_color_5 = colors.nebula_pink   -- Magenta (nebula pink)
        vim.g.terminal_color_6 = colors.stellar_cyan  -- Cyan (stellar cyan)
        vim.g.terminal_color_7 = colors.fg1           -- White (metallic silver)
        vim.g.terminal_color_8 = colors.bg3           -- Bright Black (deep cosmic teal)
        vim.g.terminal_color_9 = '#4a9bc7'           -- Bright Teal
        vim.g.terminal_color_10 = '#3e6b7f'          -- Bright Deep Teal
        vim.g.terminal_color_11 = '#d48a7b'          -- Bright Dusty Rose
        vim.g.terminal_color_12 = '#7b6ba5'          -- Bright Purple
        vim.g.terminal_color_13 = '#bf8ad5'          -- Bright Nebula Pink
        vim.g.terminal_color_14 = '#6dbef2'          -- Bright Stellar Cyan
        vim.g.terminal_color_15 = '#ffffff'          -- Pure White
      end,
    },
  },
}