require 'robot_arm'
robot_arm:load_level('exercise 3')
robot_arm.speed  = 0.9
stap = 2
for i= 1, 4 do
robot_arm:grab()
for i= 1, stap do
  robot_arm:move_right()
end
robot_arm:drop()
for i=1, stap do 
  robot_arm:move_left()
end
stap = stap + 2
end