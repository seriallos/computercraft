
-- simple twilio test

local tArgs = { ... }

if( #tArgs < 2 ) then
  print( "USAGE: alert <TO> <MESSAGE>" )
  return
end

local to = tostring( tArgs[ 1 ] )
local msg = tostring( tArgs[ 2 ] )

os.loadAPI("twilio")

twilio.sms( to, "This is a hardcoded message from a Turtle" )
