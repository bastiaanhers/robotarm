require 'robot_arm'
robot_arm:load_level('exercise 11')
robot_arm.speed  = 0.9
for i=1, 9 do
robot_arm:move_right()
robot_arm:grab()
blok = robot_arm:scan()
print (blok)
 if robot_arm:scan()=="white" then
robot_arm:move_right()
robot_arm:drop()
else
robot_arm:drop()
end
end