### WALK SPEED == SPRINT SPEED (with speed attributes)

execute if score @s sprint >= distance* sprint run scoreboard players remove @s[scores={stamina=5..}] stamina 5
execute if score @s sprint >= distance* sprint run scoreboard players set @s sprint 0
attribute @s generic.movement_speed modifier remove 1488-0-0-0-1
attribute @s generic.movement_speed modifier add 1488-0-0-0-0 0.005 add_value

#disabling restoring
scoreboard players set @s can_restore 0
scoreboard players operation @s stamina_cooldown = cooldown* stamina