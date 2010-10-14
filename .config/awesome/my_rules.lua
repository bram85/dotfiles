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
  { rule = { class = "Kopete", role = "MainWindow#1" },
      properties = {
        floating = true,
        tag = tags[ 1 ][ 2 ]
      },
      callback = function( c )
        local w_area = screen[ c.screen ].workarea
        local winwidth = 200
        c:struts( { right = winwidth } )
        c:geometry( { x = w_area.width - winwidth, width = winwidth, y = w_area.y, height = w_area.height } )
      end
  },

  -- Amarok
  { rule = { class = "Amarok", role = "MainWindow" }, properties = { tag = tags[ 1 ][ 6 ] } },

  -- Spotify
  { rule = { class = "Spotify" }, properties = { tag = tags[ 1 ][ 6 ] } },

  -- MPlayer
  { rule = { class = "MPlayer" }, properties = { floating = true } },
}
-- }}}
