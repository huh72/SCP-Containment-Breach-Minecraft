
tag @s remove triggered
data modify entity @s NoAI set value 1b
stopsound @a ambient cb:scp096.scream

#playsound cb:scp096.ambient ambient @a ~ ~ ~ 1 1 1

#scoreboard players operation @s triggering_time = max* triggering_time
#scoreboard players operation @s anger_time = max* anger_time