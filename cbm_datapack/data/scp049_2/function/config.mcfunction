
#breath timer and cooldown
scoreboard objectives add breath dummy
#timer
scoreboard players set long* breath 180
#cooldown
scoreboard players set cd* breath 0

# damage... later => (hp system reqired)


# hit cooldown
scoreboard objectives add hit_damage dummy
scoreboard objectives add hit_cd dummy

scoreboard players set max* hit_cd 40

# slowness after hit
scoreboard objectives add slow_long dummy
scoreboard players set max* slow_long 30