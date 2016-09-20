require 'robot_arm'
robot_arm:load_level('exercise 9')
robot_arm.speed = 0.99
aap = 1
while aap <5 do
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