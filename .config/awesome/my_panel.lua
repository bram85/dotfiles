-- see my_menu
mylauncher = awful.widget.launcher( {
  image = image(beautiful.awesome_icon),
  menu = mymainmenu
} )

-- lock button
lockbutton = awful.widget.launcher( {
  image = image( '/usr/share/icons/oxygen/16x16/actions/system-lock-screen.png' ),
  command = 'xlock'
} );

-- launch buttons

appbuttons = {
  awful.widget.launcher( {
    image = image( '/usr/share/icons/hicolor/16x16/apps/chromium.png' ),
    command = 'chromium'
  } ),

  awful.widget.launcher( {
    image = image( '/usr/share/icons/hicolor/16x16/apps/kopete.png' ),
    command = 'kopete'
  } ),

  awful.widget.launcher( {
    image = image( '/usr/share/icons/hicolor/16x16/apps/amarok.png' ),
    command = 'amarok'
  } ),

  awful.widget.launcher( {
    image = image( '/usr/share/pixmaps/spotify.png' ),
    command = 'spotify'
  } ),

  layout = awful.widget.layout.horizontal.leftright
}

-- {{{ Wibox

-- Create a textclock widget
mytextclock = awful.widget.textclock( { align = "right" } )

-- Monitoring
if have_vicious then
  cpuwidget = awful.widget.graph()

  cpuwidget:set_width( 25 )
  cpuwidget:set_background_color( "#494B4F" )
  cpuwidget:set_color( "#FF5656" )
  cpuwidget:set_gradient_angle( 0 )
  cpuwidget:set_gradient_colors( { "#FF5656", "#88A175", "#AECF96" } )
  vicious.register( cpuwidget, vicious.widgets.cpu, "$1" )
end

-- Create a systray
mysystray = widget( { type = "systray" } )

-- Create a wibox for each screen and add it
mywibox = {}
mypromptbox = {}
mylayoutbox = {}
mytaglist = {}
mytaglist.buttons = awful.util.table.join(
  awful.button( { }, 1, awful.tag.viewonly ),
  awful.button( { modkey }, 1, awful.client.movetotag ),
  awful.button( { }, 3, awful.tag.viewtoggle ),
  awful.button( { modkey }, 3, awful.client.toggletag ),
  awful.button( { }, 4, awful.tag.viewnext ),
  awful.button( { }, 5, awful.tag.viewprev )
)

mytasklist = {}
mytasklist.buttons = awful.util.table.join(
  awful.button( { }, 1, function( c )
    if not c.minimized then
      c.minimized = true
    else
      if not c:isvisible() then
        awful.tag.viewonly(c:tags()[1])
      end

      client.focus = c
      c:raise()
    end
  end ),

  awful.button( { }, 2, function( c )
    c:kill()
  end ),

  awful.button( { }, 4, function()
    awful.client.focus.byidx(1)
    if client.focus then
      client.focus:raise()
    end
  end ),

  awful.button( { }, 5, function()
    awful.client.focus.byidx(-1)
    if client.focus then
      client.focus:raise()
    end
  end )
)

for s = 1, screen.count() do
  -- Create a promptbox for each screen
  mypromptbox[ s ] = awful.widget.prompt( { layout = awful.widget.layout.horizontal.leftright } )

  -- Create an imagebox widget which will contains an icon indicating
  -- which layout we're using.  We need one layoutbox per screen.
  mylayoutbox[s] = awful.widget.layoutbox( s )
  mylayoutbox[s]:buttons( awful.util.table.join(
    awful.button({ }, 1, function () awful.layout.inc(layouts, 1) end ), 
    awful.button({ }, 3, function () awful.layout.inc(layouts, -1) end ),
    awful.button({ }, 4, function () awful.layout.inc(layouts, 1) end ),
    awful.button({ }, 5, function () awful.layout.inc(layouts, -1) end )
  ) )

  -- Create a taglist widget
  mytaglist[s] = awful.widget.taglist( s, awful.widget.taglist.label.all, mytaglist.buttons )

  -- Create a tasklist widget
  mytasklist[s] = awful.widget.tasklist( function(c)
    return awful.widget.tasklist.label.currenttags(c, s)
  end, mytasklist.buttons )

  -- Create the wibox
  mywibox[s] = awful.wibox( { position = "bottom", screen = s } )

  -- Add widgets to the wibox - order matters
  mywibox[s].widgets = {
    { mylauncher,
      appbuttons,
      mytaglist[ s ],
      mypromptbox[ s ],
      layout = awful.widget.layout.horizontal.leftright
    },
    mylayoutbox[ s ],
    mytextclock,
    s == 1 and mysystray or nil,
    cpuwidget.widget or nil,
    lockbutton,
    mytasklist[ s ],
    layout = awful.widget.layout.horizontal.rightleft
  }
end
-- }}}
