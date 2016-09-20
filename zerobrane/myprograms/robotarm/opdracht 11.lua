require 'robot_arm'
robot_arm:load_level('exercise 11')
robot_arm.speed  = 0.99
steps = 9
while  steps > 1 do
robot_arm:move_right()
robot_arm:grab()
blok = robot_arm:scan()
 if robot_arm:scan()=="red" then
  for i=1, steps do
robot_arm:move_right()
end
robot_arm:drop()
for i=1, steps do
  robot_arm:move_left()
end
else
robot_arm:drop()
steps =steps-1
end
end