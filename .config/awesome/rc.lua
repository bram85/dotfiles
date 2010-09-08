-- Standard awesome library
require( "awful" )
require( "awful.autofocus" )
require( "awful.rules" )
-- Theme handling library
require( "beautiful" )
-- Notification library
require( "naughty" )

have_vicious, vicious = pcall( require, "vicious" )
have_obvious, obvious = pcall( require, "obvious" )

-- {{{ Variable definitions
-- Themes define colours, icons, and wallpapers
beautiful.init( awful.util.getdir( "config" ) .. "/themes/default/theme.lua" );

-- This is used later as the default terminal and editor to run.
terminal = "xterm"
editor = os.getenv( "EDITOR" ) or "vim"
editor_cmd = terminal .. " -e " .. editor

-- Default modkey.
-- Usually, Mod4 is the key with a logo between Control and Alt.
-- If you do not like this or do not have such a key,
-- I suggest you to remap Mod4 to another key using xmodmap or other tools.
-- However, you can use another modifier like Mod1, but it may interact with others.
modkey = "Mod4"

-- Table of layouts to cover with awful.layout.inc, order matters.
layouts =
{
  awful.layout.suit.floating,
  awful.layout.suit.tile,
  awful.layout.suit.tile.left,
  awful.layout.suit.tile.bottom,
  awful.layout.suit.tile.top,
  awful.layout.suit.fair,
  awful.layout.suit.fair.horizontal,
  awful.layout.suit.spiral,
  awful.layout.suit.max,
  awful.layout.suit.max.fullscreen,
  awful.layout.suit.magnifier
}
-- }}}

require( "my_tags" )
require( "my_menu" )
require( "my_panel" )
require( "my_bindings" )
require( "my_rules" )
require( "my_signals" )

