#effect so player can sprint
effect give @a saturation infinite 10 true

#basic move speed control
execute as @a run attribute @s minecraft:movement_speed base set 0.085

# config
scoreboard objectives add stamina dummy
execite as @a unless score @s stamina matches 0.. run scoreboard players set @s stamina 100

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