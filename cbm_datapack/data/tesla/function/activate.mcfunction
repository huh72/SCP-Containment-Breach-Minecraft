#say activate!
#scoreboard players operation @e[tag=tesla_origin] tesla_shock_cd = max* tesla_shock_cd
scoreboard players operation @e[type=marker, tag=tesla_origin,distance=..4] activate_cd = max* activate_cd
playsound cb:tesla.windup ambient @a[distance=..16] ~ ~ ~ 1 1 1