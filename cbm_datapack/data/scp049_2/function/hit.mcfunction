playsound cb:d9341.damage5 ambient @a[distance=..15] ~ ~ ~ 0.75 1 1

attribute @s movement_speed modifier add 1488-0-0-0-2 -0.0285 add_value
scoreboard players operation @s slow_long = max* slow_long

execute store result score *temp damage run random value 7..25 cb:scp049_2damage
scoreboard players operation @s health -= *temp damage

#33% chance to increase bleeding by 1
execute store result score *temp damage run random value 0..3 cb:scp049_2bleedingup
execute if score *temp damage matches 0 run scoreboard players add @s bleeding 1