scoreboard objectives add rot096x dummy
scoreboard objectives add rot096y dummy

# tp:
# max tp distance (by at 173 raycast, 1 block = 2 checks. If 1 tp = 5 blocks, => 10 checks)
scoreboard objectives add tp dummy
scoreboard players set max* tp 5
scoreboard players set 2* math 2


scoreboard objectives add distance dummy

#raycast
scoreboard objectives add air dummy
