#&7fps controller
scoreboard players remove @a[scores={breath_cd=1..}] breath_cd 1
tag @a[predicate=fps:is_sprinting] add sprinting
tag @a[predicate=!fps:is_sprinting] remove sprinting
tag @a[scores={stamina=0}] remove sprinting

#remove
scoreboard players remove @a[tag=sprinting,scores={stamina_remove_cd=1..}] stamina_remove_cd 1
scoreboard players operation @a[tag=!sprinting] stamina_remove_cd = const stamina_remove_cd
#func()
execute as @a[scores={stamina_remove_cd=0},gamemode=adventure] if score @s stamina matches 1.. run function fps:remove

#restore
scoreboard players operation @a[tag=sprinting,scores={stamina=0},tag=!fake_sprint] stamina_restore_cd = penalty stamina_restore_cd
scoreboard players operation @a[tag=sprinting,scores={stamina=1..}] stamina_restore_cd = const stamina_restore_cd
scoreboard players remove @a[tag=!sprinting,scores={stamina_restore_cd=1..}] stamina_restore_cd 1
#func()
execute as @a[scores={stamina_restore_cd=0,bleeding=0..9}] if score @s stamina < max stamina run function fps:restore

#attributes manament
execute as @a[tag=!dead] at @s run function fps:speed_control


#&7 blink controller
execute as @a[tag=!dead] run function fps:blink/tick
tag @a[scores={request_cd=0}] remove blink