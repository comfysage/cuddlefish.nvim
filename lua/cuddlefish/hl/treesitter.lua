---@param theme cuddlefish.types.theme
---@param config cuddlefish.types.config
return function(theme, config)
  return {
    TSStrong = { theme.none, theme.none, style = { 'bold' } },
    TSEmphasis = { theme.none, theme.none, style = { 'italic' } },
    TSUnderline = { theme.none, theme.none, style = { 'underline' } },
    TSNote = { link = '@comment.note' },
    TSWarning = { link = '@comment.warning' },
    TSDanger = { link = '@comment.warning' },

    TSAnnotation = { link = '@annotation' },
    TSAttribute = { link = '@attribute' },
    TSBoolean = { link = '@boolean' },
    TSCharacter = { link = '@character' },
    TSComment = { link = '@comment' },
    TSConditional = { link = '@conditional' },
    TSConstBuiltin = { link = '@constant.builtin' },
    TSConstMacro = { link = '@constant.macro' },
    TSConstant = { link = '@constant' },
    TSConstructor = { link = '@constructor' },
    TSException = { link = '@exception' },
    TSField = { link = '@field' },
    TSFloat = { link = '@float' },
    TSFuncBuiltin = { link = '@function.builtin' },
    TSFuncMacro = { link = '@function.macro' },
    TSFunction = { link = '@function' },
    TSInclude = { link = '@include' },
    TSKeyword = { link = '@keyword' },
    TSKeywordFunction = { link = '@keyword.function' },
    TSKeywordOperator = { link = '@keyword.operator' },
    TSLabel = { link = '@label' },
    TSMethod = { link = '@method' },
    TSNamespace = { link = '@namespace' },
    TSNone = { link = '@none' },
    TSNumber = { link = '@normal' },
    TSOperator = { link = '@operator' },
    TSParameter = { link = '@parameter' },
    TSParameterReference = { link = '@parameter.reference' },
    TSProperty = { link = '@property' },
    TSPunctBracket = { link = '@punctuation.bracket' },
    TSPunctDelimiter = { link = '@punctuation.delimiter' },
    TSPunctSpecial = { link = '@punctuation.special' },
    TSRepeat = { link = '@repeat' },
    TSStorageClass = { link = '@storageclass' },
    TSString = { link = '@string' },
    TSStringEscape = { link = '@string.escape' },
    TSStringRegex = { link = '@string.regex' },
    TSSymbol = { link = '@symbol' },
    TSTag = { link = '@tag' },
    TSTagDelimiter = { link = '@tag.delimiter' },
    TSText = { link = '@text' },
    TSStrike = { link = '@strike' },
    TSMath = { link = '@math' },
    TSType = { link = '@type' },
    TSTypeBuiltin = { link = '@type.builtin' },
    TSURI = { link = '@uri' },
    TSVariable = { link = '@variable' },
    TSVariableBuiltin = { link = '@variable.builtin' },
  }
end
