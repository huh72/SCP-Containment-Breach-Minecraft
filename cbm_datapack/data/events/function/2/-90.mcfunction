execute positioned ~ ~ ~-10 if score curr event2timer <= max event2timer as @a[dx=8,dy=1,dz=19] run scoreboard players add curr event2timer 1
execute if score curr event2timer = max event2timer at @n[tag=event2_handler] run function scp106evolution:spawn
