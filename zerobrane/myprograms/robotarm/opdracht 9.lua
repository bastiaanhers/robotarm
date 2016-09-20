require 'robot_arm'
robot_arm:load_level('exercise 10')
robot_arm.speed = 0.99
stap = 9
while stap >1 do
robot_arm:grab()
for i=1, stap do
robot_arm:move_right()
end
robot_arm:drop()
stap=stap-1
for i=1, stap do
  robot_arm:move_left()
end
stap=stap-1
end
robot_arm:grab()
robot_arm:move_right()
robot_arm:drop()
