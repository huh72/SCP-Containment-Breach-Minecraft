scoreboard players operation @s hit_cd = max* hit_cd
playsound cb:d9341.damage5 ambient @a ~ ~ ~ 1 1 1
attribute @p movement_speed modifier add 1488-0-0-0-2 -0.02 add_value
scoreboard players operation @p slow_long = max* slow_long

execute store result score @s damage run random value 5..15 cb:scp049_2damage
scoreboard players operation @p health -= @s damage

#25% chance
execute store result score @s damage run random value 0..4 cb:scp049_2bleedingup
execute if score @s damage matches 0 run scoreboard players add @p bleeding 1


#animations
execute as @n[tag=aj.scp049_2.root] run function animated_java:scp049_2/animations/attack/play
execute as @n[tag=aj.scp049_2.root] run function animated_java:scp049_2/animations/idle/stop
execute as @n[tag=aj.scp049_2.root] run function animated_java:scp049_2/animations/walk/stop
effect give @s slowness 2 255 true