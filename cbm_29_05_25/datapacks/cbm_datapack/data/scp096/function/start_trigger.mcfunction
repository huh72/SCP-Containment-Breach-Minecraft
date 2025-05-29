
tag @s add triggering
scoreboard players operation @s triggering_time = max* triggering_time
#say start_triggering

playsound cb:scp096.triggered ambient @p ~ ~ ~ 1 1 1
playsound cb:scp096.angered ambient @a ~ ~ ~ 1 1 1


#scoreboard players operation @s anger_time = max* anger_time
