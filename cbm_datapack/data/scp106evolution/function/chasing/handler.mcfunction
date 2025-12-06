execute if entity @s[tag=down] unless score 106 reappear_timer matches -1 run function scp106evolution:chasing/down/loop

execute if entity @s[tag=up] unless score 106 reappear_timer matches -1 run function scp106evolution:chasing/up/loop


execute if entity @s[tag=down] if score 106 reappear_timer = down reappear_timer run function scp106evolution:chasing/down/final
