
-- simple twilio test

local tArgs = { ... }

if( #tArgs ~= 5 ) then
  print( "USAGE: alert <SID> <TOKEN> <FROM> <TO> <MESSAGE>" )
  return
end

local sid = tostring( tArgs[ 1 ] )
local token = tostring( tArgs[ 2 ] )
local from = tostring( tArgs[ 3 ] )
local to = tostring( tArgs[ 4 ] )
local msg = tostring( tArgs[ 5 ] )

os.loadAPI("twilio")

twilio.sms( sid, token, from, to, msg )
