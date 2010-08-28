-- {{{ Rules
awful.rules.rules = {
  -- All clients will match this rule.
  { rule = { }, properties = {
    border_width = beautiful.border_width,
    border_color = beautiful.border_normal,
    focus = true, keys = clientkeys,
    buttons = clientbuttons
  } },

  -- Chromium
  { rule = { class = "Chromium" }, properties = { tag = tags[ 1 ][ 1 ] } },

  -- Kopete
  { rule = { name = "Kopete" }, properties = {
    floating = true,
    maximized_vertical = true,
    tag = tags[ 1 ][ 2 ]
  } },

  -- MPlayer
  { rule = { class = "MPlayer" }, properties = { floating = true } },
}
-- }}}
