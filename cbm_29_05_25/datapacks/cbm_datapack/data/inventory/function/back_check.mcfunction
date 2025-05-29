$scoreboard players set @s $(slotcd) -1
#$say $(slotd)

$scoreboard players set @s slot_used $(slot)

#tellraw @a {"score":{"name":"@s","objective":"slot_used"}}

execute if entity @s[tag=slot_d11] run function use:main_check {"slot":"11"}
execute if entity @s[tag=slot_d12] run function use:main_check {"slot":"12"}
execute if entity @s[tag=slot_d13] run function use:main_check {"slot":"13"}
execute if entity @s[tag=slot_d14] run function use:main_check {"slot":"14"}
execute if entity @s[tag=slot_d15] run function use:main_check {"slot":"15"}

execute if entity @s[tag=slot_d20] run function use:main_check {"slot":"20"}
execute if entity @s[tag=slot_d21] run function use:main_check {"slot":"21"}
execute if entity @s[tag=slot_d22] run function use:main_check {"slot":"22"}
execute if entity @s[tag=slot_d23] run function use:main_check {"slot":"23"}
execute if entity @s[tag=slot_d24] run function use:main_check {"slot":"24"}

tag @s remove protected
tag @s remove back_check

tag @s remove slot_d11
tag @s remove slot_d12
tag @s remove slot_d13
tag @s remove slot_d14
tag @s remove slot_d15

tag @s remove slot_d20
tag @s remove slot_d21
tag @s remove slot_d22
tag @s remove slot_d23
tag @s remove slot_d24



#### USE FUNCTION: ###
#function ...