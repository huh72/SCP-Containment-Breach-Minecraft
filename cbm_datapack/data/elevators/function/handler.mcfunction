scoreboard players add @s[tag=moving] moveTime 1

execute at @e[tag=moving] run particle angry_villager

execute if score @s[tag=moving] moveTime = .moveSoundElevator moveTime as @a[distance=..3.75, tag=!dead] run function elevators:playmovesound

execute if score @s[tag=moving] level = @s onLevel if score @s moveTime = .playerTP moveTime run tag @s add currElevator
execute if score @s[tag=moving] level = @s onLevel if score @s moveTime = .playerTP moveTime as @a[distance=..3.75] run function elevators:hood/start

execute if score @s[tag=moving] moveTime = .max moveTime run function elevators:stop