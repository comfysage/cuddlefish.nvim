return function (theme, _)
  return {
    ['@variable.member.nix'] = { theme.blue },
    ['@lsp.type.property.nix'] = { link = "@lsp" },
  }
end
