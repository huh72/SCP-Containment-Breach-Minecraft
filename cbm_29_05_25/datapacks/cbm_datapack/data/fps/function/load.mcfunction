scoreboard objectives add food_level food


# system: every 'x sprint distance' from player's stamina removes 'y'
scoreboard objectives add sprint minecraft.custom:sprint_one_cm
scoreboard objectives add stamina dummy

# stamina restore system
scoreboard objectives add stamina_timer dummy
scoreboard players set @a stamina_timer 0
scoreboard objectives add can_restore dummy
scoreboard players set @a can_restore 0

# stamina cooldown system
scoreboard objectives add stamina_cooldown dummy
scoreboard players set @a stamina_cooldown 0


### CONFIG SUPPORT ###
function fps:config