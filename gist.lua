
local tArgs = { ... }

if (#tArgs ~= 3) then
  print( "USAGE: gist get GIST_ID PROGRAM_NAME" )
  return
end

local action = tArgs[1]
local gist_id = tArgs[2]
local program = tArgs[3]

if "get" ~= action then
  print( "Only 'get' is supported right now" )
  return
end

if fs.exists( program ) then
  print( "File "..program.." already exists.  No action taken" )
  return
end

-- TODO: maybe handle multifile gists?
local gist_url = "http://gist.github.com/raw/" .. gist_id

local request = http.get( gist_url )
local response = request.readAll()
request.close()

local file = fs.open( program, "w" )
file.write( response )
file.close()

