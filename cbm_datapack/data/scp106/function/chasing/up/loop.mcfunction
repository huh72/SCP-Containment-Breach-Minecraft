tp @s ~ ~0.072 ~
tp @n[type=item_display,tag=aj.scp106.root] ~ ~ ~

scoreboard players add 106 reappear_timer 1
execute if score 106 hunting >= max_a hunting run function scp106:changestate

execute if score 106 reappear_timer = up reappear_timer run function scp106:chasing/up/final