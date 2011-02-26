-- {{{ Tags
-- Define a tag table which hold all screen tags.
tags = {}
for s = 1, screen.count() do
  -- Each screen has its own tag table.
  tags[s] = awful.tag( {
    "1 www",
    "2 chat",
    "3 term",
    "4 work1",
    "5 work2",
    "6 music",
    7,
    8,
    9
  }, s, layouts[ 2 ] )
end
-- }}}
