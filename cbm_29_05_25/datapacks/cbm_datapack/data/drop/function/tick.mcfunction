#drop cd
scoreboard players add @e[type=item] drop_cd 1

#teleport
# execute as @e[tag=drop_int] at @s if score @s item_num = @e[tag=drop,limit=1] item_num run tag @s add tp_ 
# execute as @e[tag=drop_int] at @s if score @s item_num = @e[tag=drop,limit=1] item_num run tp @s @e[tag=tp_,limit=1]
# tag @e remove tp_

#interaction check
# scoreboard players set @a lc 0
# execute as @e[tag=drop_int] at @s on attacker run scoreboard players set @p lc 1
# execute as @e[tag=drop_int] run data remove entity @s attack

#ray cast
execute as @a[tag=player] at @s positioned ^ ^ ^ anchored eyes run function drop:cast/check

execute as @e[tag=drop,nbt={OnGround:1b}] run data modify entity @s Marker set value 1b

# say @a[tag=caster]

execute as @a[tag=looking_on_item] at @s run function main:title_uni {"text":"uE002","color":"#4e5c24","0":"0","1":"10","2":"0"}

#on surface check
execute as @e[tag=drop] at @s unless block ~ ~-0.05 ~ #drop:air run tag @s add is_picked_up

#pick up
execute as @e[tag=looked_by_player,tag=is_picked_up] at @s if score @p[tag=caster] right_click_item matches 1 if score @p[tag=caster] item_num = @s item_num run function drop:pick_up

# spawn armor stand
execute as @e[type=item,nbt={Item:{id:"minecraft:papper"}}] at @s if score @s drop_cd = max* drop_cd run function drop:spawn_as

###Drop fall
execute as @e[tag=drop] at @s if block ~ ~-0.085 ~ #drop:air run tp @s ~ ~-0.085 ~
###Faster drop fall
execute as @e[tag=drop] at @s if block ~ ~-0.2 ~ #drop:air run tp @s ~ ~-0.2 ~



#drop move 
#move protect check
execute as @e[tag=drop] at @s anchored eyes run function drop:move_protect

#another drop pos so drop can choose right direction ot move in
execute as @e[tag=drop] at @s run function drop:drop_dir

#item_move storage
# data modify storage item_move huh? set value 1
execute as @e[tag=drop,tag=!move_protected] at @s run tag @e[tag=drop,distance=0.01..0.3] add move
# execute as @e[tag=move,tag=!move_protected,limit=1] at @s run function drop:item_move {"x":"0","y":"0","z":"0.3"}

#move from walls
execute as @e[tag=back,tag=!move_protected,limit=1] at @s run function drop:item_move {"x":"0","y":"0","z":"0.3"}
execute as @e[tag=front,tag=!move_protected,limit=1] at @s run function drop:item_move {"x":"0","y":"0","z":"-0.3"}
execute as @e[tag=left,tag=!move_protected,limit=1] at @s run function drop:item_move {"x":"0.3","y":"0","z":"0"}
execute as @e[tag=right,tag=!move_protected,limit=1] at @s run function drop:item_move {"x":"-0.3","y":"0","z":"0"}

#move from another drop
execute as @e[tag=dback,tag=!move_protected,limit=1] at @s run function drop:item_move {"x":"0","y":"0","z":"-0.3"}
execute as @e[tag=dfront,tag=!move_protected,limit=1] at @s run function drop:item_move {"x":"0","y":"0","z":"0.3"}
execute as @e[tag=dleft,tag=!move_protected,limit=1] at @s run function drop:item_move {"x":"0.3","y":"0","z":"0"}
execute as @e[tag=dright,tag=!move_protected,limit=1] at @s run function drop:item_move {"x":"-0.3","y":"0","z":"0"}



#
scoreboard players set @a right_click_item 0
tag @e remove looked_by_player
tag @a remove looking_on_item
tag @a remove caster
tag @e[tag=drop] remove move
tag @e[tag=drop] remove move_protected

#
tag @s remove back
tag @s remove front
tag @s remove left
tag @s remove right

tag @s remove dback
tag @s remove dfront
tag @s remove dleft
tag @s remove dright