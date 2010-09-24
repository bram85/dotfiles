-- {{{ Rules
awful.rules.rules = {
  -- All clients will match this rule.
  { rule = { }, properties = {
    border_width = beautiful.border_width,
    border_color = beautiful.border_normal,
    focus = true, keys = clientkeys,
    buttons = clientbuttons
  } },

  -- Kopete
  { rule = { name = "Kopete" }, properties = {
    floating = true,
    maximized_vertical = true,
    tag = tags[ 1 ][ 2 ]
  } },

  -- Amarok
  { rule = { class = "Amarok", role = "MainWindow" }, properties = { tag = tags[ 1 ][ 6 ] } },

  -- Spotify
  { rule = { class = "Spotify" }, properties = { tag = tags[ 1 ][ 6 ] } },

  -- MPlayer
  { rule = { class = "MPlayer" }, properties = { floating = true } },
}
-- }}}
