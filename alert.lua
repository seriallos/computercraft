
-- simple twilio test

local tArgs = { ... }

if( #tArgs ~= 5 ) then
  print( "USAGE: alert <SID> <TOKEN> <FROM> <TO> <MESSAGE>" )
  return
end

local sid = tArgs[ 1 ]
local token = tArgs[ 2 ]
local from = tArgs[ 3 ]
local to = tArgs[ 4 ]
local msg = tArgs[ 5 ]

os.loadAPI("twilio")

twilio.sms( sid, token, from, to, msg )
