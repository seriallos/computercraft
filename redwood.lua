--[[

  Redwood chopper

  Place at the base of a redwood tree and let 'er rip

--]]


turtle.refuel(1)

-- dig into the tree one space
turtle.dig()
turtle.forward()

-- figure out if we're on the left or right side of the tree
-- check left first
turtle.turnLeft()

if false == turtle.detect() then
  turtle.turnRight()
end

-- chop the current level then move up
doneClimbing = false

repeat
  -- first spot is already dug
  for i = 1, 3 do
    turtle.dig()
    turtle.forward()
    turtle.turnRight()
  end

  -- if there's something above, dig it
  if turtle.detectUp() then
    turtle.digUp()
    turtle.up()
  else
    -- otherwise we're done
    doneClimbing = true
  end
until doneClimbing

-- safely back to the ground
while false == turtle.detectDown() do
  turtle.down()
end
