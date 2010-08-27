-- {{{ Rules
awful.rules.rules = {
  -- All clients will match this rule.
  { rule = { }, properties = {
    border_width = beautiful.border_width,
    border_color = beautiful.border_normal,
    focus = true, keys = clientkeys,
    buttons = clientbuttons
  } },
    
  -- MPlayer
  { rule = { class = "MPlayer" }, properties = { floating = true } },

  -- Kopete
  { rule = { name = "Kopete" }, properties = {
    floating = true,
    maximized_vertical = true,
    tag = tags[ 1 ][ 2 ]
  } },
}
-- }}}
