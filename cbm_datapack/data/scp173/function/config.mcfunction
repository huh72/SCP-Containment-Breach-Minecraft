
scoreboard objectives add rot173x dummy
scoreboard objectives add rot173x_ dummy
scoreboard objectives add rot173y dummy
scoreboard objectives add rot173 dummy
scoreboard objectives add rot dummy
scoreboard objectives add math dummy
scoreboard objectives add can_move dummy

# tp:
# max tp distance (by at 173 raycast, 1 block = 2 checks. If 1 tp = 5 blocks, => 10 checks)
scoreboard objectives add tp dummy
scoreboard players set max* tp 5
scoreboard players set 2* math 2

#tp cooldown
scoreboard objectives add move_cd dummy
scoreboard players set max move_cd 7

scoreboard objectives add distance dummy

#raycast
scoreboard objectives add air dummy

#
scoreboard objectives add horror_cd dummy
scoreboard players set max horror_cd 400

#
scoreboard objectives add rattle_cd dummy
scoreboard players set max rattle_cd 160

