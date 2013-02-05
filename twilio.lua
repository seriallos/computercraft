
function sms( sid, token, from, to, msg )
  -- hack test for now
  local url = "http://dev.davehendler.com/twiliotest.php?msg="..msg
  local request = http.get( url )
  if request then
    request.close()
  end
end
