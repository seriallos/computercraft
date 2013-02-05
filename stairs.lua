-- pastebin get JacZuM76 stairs

local tArgs = { ... }

if (#tArgs ~= 2) then
  print( "USAGE: stairs DIG_DEPTH STAIR_HEIGHT" )
  return
end

depth=tonumber(tArgs[1])
stairHeight=tonumber(tArgs[2])

fuelSlot = 1
torchSlot = 2

torchEvery = 2

-- TODO: limit to rational sizes

t=turtle

climb = stairHeight-2

-- TODO: fuel management

t.select( fuelSlot )
t.refuel( 1 )

for i = 1, depth do
  print( "Step " .. i .. " of " .. depth )
  print( "Fuel level: " .. t.getFuelLevel() )

  -- move up to top of stair level
  for j = 1, climb do
    t.digUp()
    t.up()
  end

  -- move in
  dug = t.dig()
  went = t.forward()

  -- TODO: variable stair width
  -- TODO: place stairs blocks
  -- TODO: fill in empty spots?

  -- dig out the stair
  for j = 1, stairHeight do
    t.turnLeft()
    t.dig()
    t.turnRight()
    t.turnRight()
    t.dig()
    t.turnLeft()
    -- Don't go down on last iteration
    if j ~= stairHeight then
      t.digDown()
      t.down()

      -- TODO: check for empty spots to fill in
    end

    -- Only place torches at the top
    if j == 1 then
      -- place torch every Nth level
      if 0 == i % torchEvery then
        t.select( torchSlot )
        t.placeUp()
      end
    end
  end
end