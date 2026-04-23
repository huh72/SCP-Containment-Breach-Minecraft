#&7temp func(), &6 MACROS:{m:$(INT)}

tellraw @a {"text":"Just generated markers have 'HCZ' tag!","color":"red"}

$scoreboard players set 89 v $(m)

execute if score 89 v matches 1.. run summon marker ~ ~ ~ {Tags:['door_marker1','new']}
scoreboard players remove 89 v 1
execute if score 89 v matches 1.. run summon marker ~ ~ ~ {Tags:['door_marker1','new']}
scoreboard players remove 89 v 1
execute if score 89 v matches 1.. run summon marker ~ ~ ~ {Tags:['door_marker1','new']}
scoreboard players remove 89 v 1
execute if score 89 v matches 1.. run summon marker ~ ~ ~ {Tags:['door_marker1','new']}
scoreboard players remove 89 v 1

tag @e[tag=new] remove new

