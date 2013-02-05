--[[

turtle bootstrap

simple program to get a bunch of other programs in one run
of 'pastebin get'

Usage:

> pastebin get 55tqszpw bootstrap
> bootstrap

--]]

http_runs = {
  ["pastebin"] = {
    ["rMF5V31f"] = "gist",
    ["PAPDddcb"] = "quarry",
  },
  ["gist"] = {
    ["4700035"] = "redwood",
    ["4700006"] = "stairs",
  },
}

for service, list in pairs( http_runs ) do
  print( service )
  for id, program in pairs( list ) do
    print( "  Downloading "..program.." ("..id..")" )
    shell.run( service, "get", id, program )
  end
end
