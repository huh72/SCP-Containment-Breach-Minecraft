execute unless score 106 appear_timer matches -1 if score 106 appear_timer < max_p appear_timer run scoreboard players add 106 appear_timer 1
tp @n[tag=aj.scp106.root] ~ ~ ~
tp @s ~ ~0.023 ~

execute if score 106 appear_timer = max_p appear_timer run function scp106evolution:appear/final