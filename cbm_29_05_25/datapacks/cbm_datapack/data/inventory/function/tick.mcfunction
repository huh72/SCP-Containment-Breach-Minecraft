### hotbar sys
# execute as @a at @s run function inventory:hotbar/tick


### carrot_on_a_stick give:
# execute as @a[tag=player,tag=!dev] run item replace entity @s container.0 with carrot_on_a_stick
# execute as @a[tag=player,tag=!dev] run item replace entity @s container.1 with carrot_on_a_stick
# execute as @a[tag=player,tag=!dev] run item replace entity @s container.2 with carrot_on_a_stick
# execute as @a[tag=player,tag=!dev] run item replace entity @s container.3 with carrot_on_a_stick
# execute as @a[tag=player,tag=!dev] run item replace entity @s container.4 with carrot_on_a_stick
# execute as @a[tag=player,tag=!dev] run item replace entity @s container.5 with carrot_on_a_stick
# execute as @a[tag=player,tag=!dev] run item replace entity @s container.6 with carrot_on_a_stick
# execute as @a[tag=player,tag=!dev] run item replace entity @s container.7 with carrot_on_a_stick
# execute as @a[tag=player,tag=!dev] run item replace entity @s container.8 with carrot_on_a_stick

### drop if not in inventory:
#left
execute as @a if entity @s[nbt={Inventory:[{Slot:-106b,id:'minecraft:paper'}]}] run function inventory:drop_lh
#hotbar
execute as @a if entity @s[nbt={Inventory:[{Slot:0b,id:'minecraft:paper'}]}] run function inventory:drop {"dropslot":"0"}
execute as @a if entity @s[nbt={Inventory:[{Slot:1b,id:'minecraft:paper'}]}] run function inventory:drop {"dropslot":"1"}
execute as @a if entity @s[nbt={Inventory:[{Slot:2b,id:'minecraft:paper'}]}] run function inventory:drop {"dropslot":"2"}
execute as @a if entity @s[nbt={Inventory:[{Slot:3b,id:'minecraft:paper'}]}] run function inventory:drop {"dropslot":"3"}
execute as @a if entity @s[nbt={Inventory:[{Slot:4b,id:'minecraft:paper'}]}] run function inventory:drop {"dropslot":"4"}
execute as @a if entity @s[nbt={Inventory:[{Slot:5b,id:'minecraft:paper'}]}] run function inventory:drop {"dropslot":"5"}
execute as @a if entity @s[nbt={Inventory:[{Slot:6b,id:'minecraft:paper'}]}] run function inventory:drop {"dropslot":"6"}
execute as @a if entity @s[nbt={Inventory:[{Slot:7b,id:'minecraft:paper'}]}] run function inventory:drop {"dropslot":"7"}
execute as @a if entity @s[nbt={Inventory:[{Slot:8b,id:'minecraft:paper'}]}] run function inventory:drop {"dropslot":"8"}

execute as @a if entity @s[nbt={Inventory:[{Slot:9b,id:'minecraft:paper'}]}] run function inventory:drop {"dropslot":"9"}
execute as @a if entity @s[nbt={Inventory:[{Slot:10b,id:'minecraft:paper'}]}] run function inventory:drop {"dropslot":"10"}
execute as @a if entity @s[nbt={Inventory:[{Slot:16b,id:'minecraft:paper'}]}] run function inventory:drop {"dropslot":"16"}
execute as @a if entity @s[nbt={Inventory:[{Slot:17b,id:'minecraft:paper'}]}] run function inventory:drop {"dropslot":"17"}
execute as @a if entity @s[nbt={Inventory:[{Slot:18b,id:'minecraft:paper'}]}] run function inventory:drop {"dropslot":"18"}
execute as @a if entity @s[nbt={Inventory:[{Slot:19b,id:'minecraft:paper'}]}] run function inventory:drop {"dropslot":"19"}
execute as @a if entity @s[nbt={Inventory:[{Slot:25b,id:'minecraft:paper'}]}] run function inventory:drop {"dropslot":"25"}
execute as @a if entity @s[nbt={Inventory:[{Slot:26b,id:'minecraft:paper'}]}] run function inventory:drop {"dropslot":"26"}
execute as @a if entity @s[nbt={Inventory:[{Slot:27b,id:'minecraft:paper'}]}] run function inventory:drop {"dropslot":"27"}
execute as @a if entity @s[nbt={Inventory:[{Slot:28b,id:'minecraft:paper'}]}] run function inventory:drop {"dropslot":"28"}
execute as @a if entity @s[nbt={Inventory:[{Slot:29b,id:'minecraft:paper'}]}] run function inventory:drop {"dropslot":"29"}
execute as @a if entity @s[nbt={Inventory:[{Slot:30b,id:'minecraft:paper'}]}] run function inventory:drop {"dropslot":"30"}
execute as @a if entity @s[nbt={Inventory:[{Slot:31b,id:'minecraft:paper'}]}] run function inventory:drop {"dropslot":"31"}
execute as @a if entity @s[nbt={Inventory:[{Slot:32b,id:'minecraft:paper'}]}] run function inventory:drop {"dropslot":"32"}
execute as @a if entity @s[nbt={Inventory:[{Slot:33b,id:'minecraft:paper'}]}] run function inventory:drop {"dropslot":"33"}
execute as @a if entity @s[nbt={Inventory:[{Slot:34b,id:'minecraft:paper'}]}] run function inventory:drop {"dropslot":"34"}
execute as @a if entity @s[nbt={Inventory:[{Slot:35b,id:'minecraft:paper'}]}] run function inventory:drop {"dropslot":"35"}

### use:
# ?каждый тик получаем в каком слоте лежит какой предмет: $slot/"id" или
# каждый slot_cd наверно..?
# либо каждый тик, но после того как пропал предмет, игрок становится 'protected' от функции 'get_slot_item' на время проверок(за счет выдачи тэга)?
# если в слоте $slot не находиться предметов, то slot_cd = max* slot_cd
# если когда slot_cd = 0, два варианта:
# 1) простой: если предмет не в $slot, то ставим "id" в $slot на '0';
# 2) сложный: after_slot_cd = max* cd (Например, 5), и если после его истечения предмет не в $slot,
# тогда применяем 1 вариант 



scoreboard players remove @a[scores={slot_cd11=1..}] slot_cd11 1
scoreboard players remove @a[scores={slot_cd12=1..}] slot_cd12 1
scoreboard players remove @a[scores={slot_cd13=1..}] slot_cd13 1
scoreboard players remove @a[scores={slot_cd14=1..}] slot_cd14 1
scoreboard players remove @a[scores={slot_cd15=1..}] slot_cd15 1

scoreboard players remove @a[scores={slot_cd20=1..}] slot_cd20 1
scoreboard players remove @a[scores={slot_cd21=1..}] slot_cd21 1
scoreboard players remove @a[scores={slot_cd22=1..}] slot_cd22 1
scoreboard players remove @a[scores={slot_cd23=1..}] slot_cd23 1
scoreboard players remove @a[scores={slot_cd24=1..}] slot_cd24 1




execute as @a if entity @s[tag=slot11,nbt=!{Inventory:[{id:"minecraft:paper",Slot:11b}]},tag=can_ii] run tag @s add slot_d11
execute as @a if entity @s[tag=slot12,nbt=!{Inventory:[{id:"minecraft:paper",Slot:12b}]},tag=can_ii] run tag @s add slot_d12
execute as @a if entity @s[tag=slot13,nbt=!{Inventory:[{id:"minecraft:paper",Slot:13b}]},tag=can_ii] run tag @s add slot_d13
execute as @a if entity @s[tag=slot14,nbt=!{Inventory:[{id:"minecraft:paper",Slot:14b}]},tag=can_ii] run tag @s add slot_d14
execute as @a if entity @s[tag=slot15,nbt=!{Inventory:[{id:"minecraft:paper",Slot:15b}]},tag=can_ii] run tag @s add slot_d15

execute as @a if entity @s[tag=slot20,nbt=!{Inventory:[{id:"minecraft:paper",Slot:20b}]},tag=can_ii] run tag @s add slot_d20
execute as @a if entity @s[tag=slot21,nbt=!{Inventory:[{id:"minecraft:paper",Slot:21b}]},tag=can_ii] run tag @s add slot_d21
execute as @a if entity @s[tag=slot22,nbt=!{Inventory:[{id:"minecraft:paper",Slot:22b}]},tag=can_ii] run tag @s add slot_d22
execute as @a if entity @s[tag=slot23,nbt=!{Inventory:[{id:"minecraft:paper",Slot:23b}]},tag=can_ii] run tag @s add slot_d23
execute as @a if entity @s[tag=slot24,nbt=!{Inventory:[{id:"minecraft:paper",Slot:24b}]},tag=can_ii] run tag @s add slot_d24


execute as @a[tag=slot_d11,tag=!back_check] at @s run function inventory:slot_disapeared {"slot":"slot11","slotcd":"slot_cd11"}
execute as @a[tag=slot_d12,tag=!back_check] at @s run function inventory:slot_disapeared {"slot":"slot12","slotcd":"slot_cd12"}
execute as @a[tag=slot_d13,tag=!back_check] at @s run function inventory:slot_disapeared {"slot":"slot13","slotcd":"slot_cd13"}
execute as @a[tag=slot_d14,tag=!back_check] at @s run function inventory:slot_disapeared {"slot":"slot14","slotcd":"slot_cd14"}
execute as @a[tag=slot_d15,tag=!back_check] at @s run function inventory:slot_disapeared {"slot":"slot15","slotcd":"slot_cd15"}

execute as @a[tag=slot_d20,tag=!back_check] at @s run function inventory:slot_disapeared {"slot":"slot20","slotcd":"slot_cd20"}
execute as @a[tag=slot_d21,tag=!back_check] at @s run function inventory:slot_disapeared {"slot":"slot21","slotcd":"slot_cd21"}
execute as @a[tag=slot_d22,tag=!back_check] at @s run function inventory:slot_disapeared {"slot":"slot22","slotcd":"slot_cd22"}
execute as @a[tag=slot_d23,tag=!back_check] at @s run function inventory:slot_disapeared {"slot":"slot23","slotcd":"slot_cd23"}
execute as @a[tag=slot_d24,tag=!back_check] at @s run function inventory:slot_disapeared {"slot":"slot24","slotcd":"slot_cd24"}


execute as @a[tag=back_check,tag=slot_d11,nbt={Inventory:[{id:"minecraft:paper",Slot:11b}]}] at @s if score @s slot_cd11 matches 2..19 run function inventory:back_check {"slotd":"slot11","slotcd":"slot_cd11","slot":"11"}
execute as @a[tag=back_check,tag=slot_d12,nbt={Inventory:[{id:"minecraft:paper",Slot:12b}]}] at @s if score @s slot_cd12 matches 2..19 run function inventory:back_check {"slotd":"slot12","slotcd":"slot_cd12","slot":"12"}
execute as @a[tag=back_check,tag=slot_d13,nbt={Inventory:[{id:"minecraft:paper",Slot:13b}]}] at @s if score @s slot_cd13 matches 2..19 run function inventory:back_check {"slotd":"slot13","slotcd":"slot_cd13","slot":"13"}
execute as @a[tag=back_check,tag=slot_d14,nbt={Inventory:[{id:"minecraft:paper",Slot:14b}]}] at @s if score @s slot_cd14 matches 2..19 run function inventory:back_check {"slotd":"slot14","slotcd":"slot_cd14","slot":"14"}
execute as @a[tag=back_check,tag=slot_d15,nbt={Inventory:[{id:"minecraft:paper",Slot:15b}]}] at @s if score @s slot_cd15 matches 2..19 run function inventory:back_check {"slotd":"slot15","slotcd":"slot_cd15","slot":"15"}

execute as @a[tag=back_check,tag=slot_d20,nbt={Inventory:[{id:"minecraft:paper",Slot:20b}]}] at @s if score @s slot_cd20 matches 2..19 run function inventory:back_check {"slotd":"slot20","slotcd":"slot_cd20","slot":"20"}
execute as @a[tag=back_check,tag=slot_d21,nbt={Inventory:[{id:"minecraft:paper",Slot:21b}]}] at @s if score @s slot_cd21 matches 2..19 run function inventory:back_check {"slotd":"slot21","slotcd":"slot_cd21","slot":"21"}
execute as @a[tag=back_check,tag=slot_d22,nbt={Inventory:[{id:"minecraft:paper",Slot:22b}]}] at @s if score @s slot_cd22 matches 2..19 run function inventory:back_check {"slotd":"slot22","slotcd":"slot_cd22","slot":"22"}
execute as @a[tag=back_check,tag=slot_d23,nbt={Inventory:[{id:"minecraft:paper",Slot:23b}]}] at @s if score @s slot_cd23 matches 2..19 run function inventory:back_check {"slotd":"slot23","slotcd":"slot_cd23","slot":"23"}
execute as @a[tag=back_check,tag=slot_d24,nbt={Inventory:[{id:"minecraft:paper",Slot:24b}]}] at @s if score @s slot_cd24 matches 2..19 run function inventory:back_check {"slotd":"slot24","slotcd":"slot_cd24","slot":"24"}

execute as @a[tag=back_check,tag=slot_d11] at @s if score @s slot_cd11 matches 1 run function inventory:no_click
execute as @a[tag=back_check,tag=slot_d12] at @s if score @s slot_cd12 matches 1 run function inventory:no_click
execute as @a[tag=back_check,tag=slot_d13] at @s if score @s slot_cd13 matches 1 run function inventory:no_click
execute as @a[tag=back_check,tag=slot_d14] at @s if score @s slot_cd14 matches 1 run function inventory:no_click
execute as @a[tag=back_check,tag=slot_d15] at @s if score @s slot_cd15 matches 1 run function inventory:no_click

execute as @a[tag=back_check,tag=slot_d20] at @s if score @s slot_cd20 matches 1 run function inventory:no_click
execute as @a[tag=back_check,tag=slot_d21] at @s if score @s slot_cd21 matches 1 run function inventory:no_click
execute as @a[tag=back_check,tag=slot_d22] at @s if score @s slot_cd22 matches 1 run function inventory:no_click
execute as @a[tag=back_check,tag=slot_d23] at @s if score @s slot_cd23 matches 1 run function inventory:no_click
execute as @a[tag=back_check,tag=slot_d24] at @s if score @s slot_cd24 matches 1 run function inventory:no_click



execute as @a[tag=!protected,tag=can_ii] at @s run function inventory:get_slot_item