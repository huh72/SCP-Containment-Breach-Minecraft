execute unless score 106 disappear_timer matches -1 if score 106 disappear_timer < max_p disappear_timer run scoreboard players add 106 disappear_timer 1
tp @n[tag=aj.scp106.root] ~ ~ ~
tp @s ~ ~-0.03 ~

execute if score 106 disappear_timer = max_p disappear_timer run function scp106evolution:disappear/final