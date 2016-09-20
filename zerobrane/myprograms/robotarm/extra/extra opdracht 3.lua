require 'robot_arm'
robot_arm:load_level('exercise 11')
robot_arm.speed  = 0.99
blok= true
stap = 0
wit = 0
rood = 0
groen = 0
blauw = 0
robot_arm:move_right()
--scan alle blokken en sla in goede kleur op--
for i=1, 9 do
  robot_arm:grab()
  robot_arm:scan()
if robot_arm:scan() == 'white' then
  wit = wit + 1
 elseif robot_arm:scan() == 'red' then
   rood = rood + 1
 elseif robot_arm:scan() == 'green' then
   groen = groen + 1
 else do
   blauw = blauw + 1
 end
end
robot_arm:drop()
robot_arm:move_right()
end
--terug naar start--
  for i=1, 9 do
    robot_arm:move_left()
  end
--bepaal welke kleur meeste blokken heeft--
   ----bepaal wie wint tussen rood en wit----
   if rood >= wit then
     roodwint = true
   else 
     witwint= true
   end
   ----bepaal wie wint tussen groen en blauw----
 if blauw >= groen then
   blauwwint =true
 else
   groenwint =true
 end
 --geef elke winaar een variable--
if roodwint ==true then
  print ('rood wint')
  winaar1 = 1
  alb = rood
else 
  print ('wit wint')
  winaar1 = 2
  alb = wit
end
if blauwwint == true then
  print('blauw wint')
 winaar2 = 1
 bla = blauw
else
  print('groen wint')
   winaar2 = 2
 bla = groen
end
-- bepaal de echt winaar--
if bla >= alb then
  winaar2 = winaar2 + 2
else
  winaar1 = winaar1 + 2
end
--stapel de blokken van de winaar--
if winaar1 < 3 then
  if winaar2 == 3 then
    for i=1,9 do
    robot_arm:move_right()
    stap = stap+1
    robot_arm:grab()
    robot_arm:scan()
  if robot_arm:scan()== 'blue' then
  for i=1,stap do
    robot_arm:move_left()
  end
    robot_arm:drop()
  for i=1,stap do 
    robot_arm:move_right()
  end
 else
   robot_arm:drop()
end
end
 --eind blauw
 
   elseif winaar2 == 4 then
     for i=1,9 do
robot_arm:move_right()
stap = stap+1
robot_arm:grab()
robot_arm:scan()
if robot_arm:scan()== 'green' then
  for i=1,stap do
    robot_arm:move_left()
  end
  robot_arm:drop()
  for i=1,stap do 
    robot_arm:move_right()
  end
else robot_arm:drop()
end
end
 end
 --eind groen--
 
 elseif winaar1 == 3 then
     for i=1,9 do
robot_arm:move_right()
stap = stap+1
robot_arm:grab()
robot_arm:scan()
if robot_arm:scan()== 'red' then
  for i=1,stap do
    robot_arm:move_left()
  end
  robot_arm:drop()
  for i=1,stap do 
    robot_arm:move_right()
  end
else robot_arm:drop()
end
end
--eind rood--
  
  elseif winaar1==4 then
    for i=1,9 do
robot_arm:move_right()
stap = stap+1
robot_arm:grab()
robot_arm:scan()
if robot_arm:scan()== 'white' then
  for i=1,stap do
    robot_arm:move_left()
  end
  robot_arm:drop()
  for i=1,stap do 
    robot_arm:move_right()
  end
else robot_arm:drop()
end
end
end

 --eind wit--