# just attribute
attribute @s generic.movement_speed modifier remove 1488-0-0-0-0
attribute @s generic.movement_speed modifier add 1488-0-0-0-1 -0.012 add_value
 
# stamina restore cooldown system
scoreboard players operation @s[scores={stamina_cooldown=40}] stamina_cooldown = cooldown* stamina
scoreboard players remove @s[scores={stamina_cooldown=1..}] stamina_cooldown 1

execute if score @s stamina_cooldown matches 0 run scoreboard players set @s can_restore 1

#restore system
#timer
scoreboard players add @s stamina_timer 1

#restoring
execute if score @s can_restore matches 1 if score @s stamina_timer >= restore* stamina if score @s stamina < max* stamina run scoreboard players operation @s stamina += add* stamina
execute if score @s can_restore matches 1 if score @s stamina_timer >= restore* stamina run scoreboard players set @s stamina_timer 0