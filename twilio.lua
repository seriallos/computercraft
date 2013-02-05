
function sms( sid, token, from, to, msg )
  -- hack test for now
  local url = "http://davehendler.com/twiliotest.php?msg=testing"
  local request = http.get( url )
  local response = request.readAll()
  print( response )
  request.close()
end
