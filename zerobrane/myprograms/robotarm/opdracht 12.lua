require 'robot_arm'
robot_arm:random_level(1)
robot_arm.speed = 0.99
bla=1
blok=true
while blok==true do
robot_arm:grab()
blok=robot_arm:scan()
if blok == 'white' then
blok= true
for i=1, bla do
  robot_arm:move_right()
end
robot_arm:drop()
for i=1, bla do
  robot_arm:move_left()
end
bla= bla+1
elseif blok=='red' then
blok= true
for i=1, bla do
  robot_arm:move_right()
end
robot_arm:drop()
for i=1, bla do
  robot_arm:move_left()
end
bla= bla+1
elseif blok=='green' then
blok = true
for i=1, bla do
  robot_arm:move_right()
end
robot_arm:drop()
for i=1, bla do
  robot_arm:move_left()
end
bla= bla+1
elseif blok== 'blue' then
blok= true
for i=1, bla do
  robot_arm:move_right()
end
robot_arm:drop()
for i=1, bla do
  robot_arm:move_left()
end
bla= bla+1
else do 
blok=false
end
end
end