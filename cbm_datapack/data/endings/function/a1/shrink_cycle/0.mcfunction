execute at @n[tag=106origin] run function scp106:pd_shrink/spawn

execute if score 106 scp106state matches 1 run schedule function endings:a1/shrink_cycle/0 15t replace