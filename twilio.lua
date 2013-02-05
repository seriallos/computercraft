
function sms( sid, token, from, to, msg )
  -- hack test for now
  local url = "http://davehendler.com/twiliotest.php?msg="..msg
  local request = http.get( url )
  local response = request.readAll()
  print( "Response = "..response )
  request.close()
end
