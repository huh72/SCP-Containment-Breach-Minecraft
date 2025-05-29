
scoreboard objectives add rot173x dummy
scoreboard objectives add rot173y dummy
scoreboard objectives add rot173 dummy
scoreboard objectives add rot dummy
scoreboard objectives add math dummy
scoreboard objectives add can_move dummy

#blink sys
#(jump strength defult = 0.41)
#attribute @s minecraft:generic.jump_strength base set 0
scoreboard objectives add jump minecraft.custom:minecraft.jump

# blink cooldown (recomended on 0):
scoreboard objectives add blink_cd dummy
scoreboard objectives add blink dummy
scoreboard players set const* blink_cd 0
# blink timer ():
scoreboard objectives add blink_long dummy
scoreboard players set const* blink_long 5
# max blink:
scoreboard objectives add no_blink_long dummy
scoreboard players set max* no_blink_long 280
# tp:
# max tp distance (by at 173 raycast, 1 block = 2 checks. If 1 tp = 5 blocks, => 10 checks)
scoreboard objectives add tp dummy
scoreboard players set max* tp 5
scoreboard players set 2* math 2

#tp cooldown
scoreboard objectives add tp_cd dummy
scoreboard players set max* tp_cd 7



#cast
scoreboard objectives add air dummy

#how long it has to be, before  player watch at 173 and got horror_sound:
scoreboard objectives add horror_cd dummy
scoreboard players set max* horror_cd 400

