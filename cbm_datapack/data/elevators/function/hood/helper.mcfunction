#clearing previous result
tag @e[type=marker] remove finalElevator

# say hood start - @s!

scoreboard players operation _temp ID = @n[tag=currElevator] ID
execute as @e[type=marker, tag=elevator, tag=!currElevator] if score @s ID = _temp ID run tag @s add finalElevator

say @n[tag=finalElevator,tag=0,tag=nuke] final elevator 0 - from helper
say @n[tag=finalElevator,tag=1,tag=nuke] final elevator 1 - from helper

say @n[tag=currElevator,tag=0,tag=nuke] curr elevator 0 - from helper
say @n[tag=currElevator,tag=1,tag=nuke] curr elevator 1 - from helper
