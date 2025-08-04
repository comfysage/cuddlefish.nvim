---@class cuddlefish.types.styleconfig
---@field tabline cuddlefish.types.styleopt
---@field search cuddlefish.types.styleopt
---@field incsearch cuddlefish.types.styleopt
---@field types cuddlefish.types.styleopt
---@field keyword cuddlefish.types.styleopt
---@field comment cuddlefish.types.styleopt

---@class cuddlefish.types.theme
---@field none string
---@field colors cuddlefish.types.colors
---@field text string
---@field subtext1 string
---@field subtext0 string
---@field overlay2 string
---@field overlay1 string
---@field overlay0 string
---@field surface2 string
---@field surface1 string
---@field surface0 string
---@field base string
---@field mantle string
---@field crust string
---@field red string
---@field orange string
---@field yellow string
---@field lime string
---@field green string
---@field aqua string
---@field skye string
---@field snow string
---@field blue string
---@field purple string
---@field violet string
---@field pink string
---@field cherry string
---@field accent string
---@field editor cuddlefish.types.editor
---@field syntax cuddlefish.types.syntax
---@field diagnostic { ['ok'|'error'|'warn'|'info'|'hint']: string }
---@field diff { ['add'|'delete'|'change']: string }
---@field git { ['staged'|'unstaged'|'ignored'|'untracked']: string }
---@field sign string
---@field comment string

---@class cuddlefish.types.editor
---@field search string
---@field float string
---@field completion string

---@class cuddlefish.types.syntax
---@field keyword string
---@field identifier string
---@field property string
---@field type string
---@field context string
---@field operator string
---@field constant string
---@field func string
---@field string string
---@field macro string
---@field annotation string
---@field literal string

local M = {}

---@param config? cuddlefish.types.config
---@param colors? cuddlefish.types.colors
---@return cuddlefish.types.theme
function M.setup(config, colors)
  config = config or require('cuddlefish.config').get()
  colors = colors or require('cuddlefish.colors').get(config)
  ---@type cuddlefish.types.theme
  local theme = vim.deepcopy(colors, true)

  theme.none = 'NONE'
  theme.colors = colors

  theme.accent = theme.colors[config.theme.accent] or theme.green
  theme.sign = theme.colors[config.editor.sign.color] or theme.none
  theme.comment = theme.overlay2

  theme.editor = {
    search = theme.snow,
    float = theme.colors[config.editor.float.color] or theme.none,
    completion = theme.colors[config.editor.completion.color] or theme.none,
  }
  theme.syntax = {
    keyword = theme.cherry,
    identifier = theme.text,
    property = theme.violet,
    type = theme.aqua,
    context = theme.overlay2,
    operator = theme.skye,
    constant = theme.orange,
    func = theme.pink,
    string = theme.skye,
    macro = theme.skye,
    annotation = theme.skye,
    literal = theme.skye,
  }
  theme.diagnostic = {
    ok = theme.green,
    error = theme.red,
    warn = theme.yellow,
    info = theme.aqua,
    hint = theme.skye,
  }
  theme.diff = {
    add = theme.green,
    delete = theme.red,
    change = theme.aqua,
  }
  theme.git = {
    staged = theme.green,
    unstaged = theme.skye,
    ignored = theme.overlay0,
    untracked = theme.subtext1,
  }
  return theme
end

return M
