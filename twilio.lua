
function sms( sid, token, from, to, msg )
  -- hack test for now
  local url = "http://davehendler.com/twiliotest.php?msg="..msg
  http.get( url )
end
