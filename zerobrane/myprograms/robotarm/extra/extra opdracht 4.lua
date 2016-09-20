require 'robot_arm'
robot_arm:load_level('exercise 9')
robot_arm.speed = 0.99
aap = 1
bla = 3
while aap <4 do
for i=1, aap do
robot_arm:grab()
for i=1, 5 do
  robot_arm:move_right()
end
robot_arm:drop()
for i=1, 5 do
  robot_arm:move_left()
end
end
robot_arm:move_right()
aap = aap + 1
end
for i=1, 3 do
  robot_arm:grab()
  for i=1, bla do
  robot_arm:move_left()
end
  robot_arm:drop()
  for i= 1, bla do
    robot_arm:move_right()
end
bla= bla-1
end
for i=1,4 do
  robot_arm:move_right()
end
bla = 7
for i=1,3 do
robot_arm:grab()
for i= 1, bla do
  robot_arm:move_left()
end
robot_arm:drop()
for i=1,bla do
  robot_arm:move_right()
end
bla=bla-1
end
bla= 6
robot_arm:move_left()
for i=1,2 do
robot_arm:grab()
for i= 1, bla do
  robot_arm:move_left()
end
robot_arm:drop()
for i=1,bla do
  robot_arm:move_right()
end
bla=bla-1
end
robot_arm:move_left()
robot_arm:grab()
for i=1,5 do
  robot_arm:move_left()
end
robot_arm:drop()
