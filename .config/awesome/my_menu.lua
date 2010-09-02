-- {{{ Menu
-- Create a laucher widget and a main menu
myawesomemenu = {
  { "lock", "xlock" },
  { "restart", awesome.restart },
  { "quit", awesome.quit }
}

mymainmenu = awful.menu( { items = {
  { "awesome", myawesomemenu, beautiful.awesome_icon },
  { "open terminal", terminal }

} } )
