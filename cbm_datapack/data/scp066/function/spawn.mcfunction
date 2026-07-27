summon wandering_trader ~ ~1 ~ {Tags:['scp066'],Invulnerable:1b,Silent:1b}
execute rotated 0 0 run function animated_java:scp066/summon with storage aj:temp

attribute @n[tag=scp066] follow_range base set 32

function scp066:config