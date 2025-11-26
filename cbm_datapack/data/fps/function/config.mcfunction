#fps
execute as @a run attribute @s minecraft:movement_speed base set 0.085

# config
scoreboard objectives add stamina dummy

scoreboard objectives add stamina_remove_cd dummy
scoreboard objectives add stamina_remove dummy

scoreboard objectives add stamina_restore_cd dummy
scoreboard objectives add stamina_restore dummy

#scores
scoreboard players set max stamina 100

scoreboard players set penalty stamina_restore_cd 40
scoreboard players set const stamina_remove_cd 5
scoreboard players set const stamina_remove 5

scoreboard players set const stamina_restore_cd 5
scoreboard players set const stamina_restore 5

scoreboard players set max_player breath_cd 75

#blink config func()
function fps:blink/config