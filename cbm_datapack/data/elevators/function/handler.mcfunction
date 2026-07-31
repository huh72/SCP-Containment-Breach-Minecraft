scoreboard players add @s[tag=moving] moveTime 1
scoreboard players add @s[tag=onCd] moveTime 1

# execute at @e[tag=moving] run particle angry_villager

execute if score @s[tag=moving] moveTime = .moveSoundElevator moveTime as @a[distance=..3.75, tag=!dead] run function elevators:playmovesound
execute if score @s[tag=moving] moveTime = .moveSoundElevator moveTime run playsound cb:elev.move ambient @a[distance=..8,tag=!insideElevator] ~ ~-7.5 ~ 0.35 1 1

execute if score @s[tag=moving] level = @s onLevel if score @s moveTime = .playerTP moveTime run tag @s add currElevator
execute if score @s[tag=moving] level = @s onLevel if score @s moveTime = .playerTP moveTime run function elevators:hood/helper
execute if score @s[tag=moving] level = @s onLevel if score @s moveTime = .playerTP moveTime as @e[tag=elevatorTarget, distance=..3.75] run function elevators:hood/start
execute if score @s[tag=moving] level = @s onLevel if score @s moveTime = .playerTP moveTime run function elevators:hood/clear

execute if score @s[tag=moving] moveTime = .stop moveTime run function elevators:stop

execute as @e[tag=onCd] if score @s moveTime = .max moveTime run function elevators:reset