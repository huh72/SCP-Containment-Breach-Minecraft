#drop cd
scoreboard players add @e[type=item] drop_cd 1

#ray cast
execute as @a[tag=!dead] at @s positioned ^ ^ ^ anchored eyes run function drop:cast/check
execute as @e[tag=drop,nbt={OnGround:1b}] run data modify entity @s Marker set value 1b

#UI -- OUTPUT
#interactions <- ui:subtick(title)
# execute as @a run title @s[scores={request_cd=0}] times 0t 5t 0t
# execute as @a run title @s[scores={request_cd=0,item_selected=0..40},tag=!looking_on_item] title {"text":"\uE078"}

# execute as @a run title @s[scores={request_cd=0,item_selected=0..40},tag=looking_on_item] title {"text":"\uE002","shadow_color":0}
# execute as @a run title @s[scores={request_cd=0,item_selected=0..40},tag=!looking_on_item,tag=looking_on_door] title {"text":"\uE001","shadow_color":0}


#on surface check
execute as @e[tag=drop] at @s unless block ~ ~-0.05 ~ #drop:air run tag @s add is_picked_up

#spawn armor stand as base for drop visual
execute as @e[type=item,nbt={Item:{id:"minecraft:papper"}}] at @s if score @s drop_cd = max* drop_cd run function drop:spawn_as

#&7 Drop physics
#drop fall
execute as @e[tag=drop] at @s if block ~ ~-0.085 ~ #drop:air run tp @s ~ ~-0.085 ~
execute as @e[tag=drop] at @s if block ~ ~-0.2 ~ #drop:air run tp @s ~ ~-0.2 ~

#drop move 
#move protect check
# execute as @e[tag=drop] at @s anchored eyes run function drop:move_protect

#another drop pos so drop can choose right direction ot move in
# execute as @e[tag=drop] at @s run function drop:drop_dir

#item_move storage
# data modify storage item_move huh? set value 1
# execute as @e[tag=drop,tag=!move_protected] at @s run tag @e[tag=drop,distance=0.01..0.3] add move
# execute as @e[tag=move,tag=!move_protected,limit=1] at @s run function drop:item_move {"x":"0","y":"0","z":"0.3"}

#move from walls
# execute as @e[tag=back,tag=!move_protected,limit=1] at @s run function drop:item_move {"x":"0","y":"0","z":"0.3"}
# execute as @e[tag=front,tag=!move_protected,limit=1] at @s run function drop:item_move {"x":"0","y":"0","z":"-0.3"}
# execute as @e[tag=left,tag=!move_protected,limit=1] at @s run function drop:item_move {"x":"0.3","y":"0","z":"0"}
# execute as @e[tag=right,tag=!move_protected,limit=1] at @s run function drop:item_move {"x":"-0.3","y":"0","z":"0"}

# #move from another drop
# execute as @e[tag=dback,tag=!move_protected,limit=1] at @s run function drop:item_move {"x":"0","y":"0","z":"-0.3"}
# execute as @e[tag=dfront,tag=!move_protected,limit=1] at @s run function drop:item_move {"x":"0","y":"0","z":"0.3"}
# execute as @e[tag=dleft,tag=!move_protected,limit=1] at @s run function drop:item_move {"x":"0.3","y":"0","z":"0"}
# execute as @e[tag=dright,tag=!move_protected,limit=1] at @s run function drop:item_move {"x":"-0.3","y":"0","z":"0"}



# clearinf another shitty tags
scoreboard players set @a right_click_item 0
tag @a remove looking_on_item
# tag @a remove looking_on_door
tag @a remove caster
tag @e[tag=drop] remove move
tag @e[tag=drop] remove move_protected

#clearing move tags
tag @s remove back
tag @s remove front
tag @s remove left
tag @s remove right

tag @s remove dback
tag @s remove dfront
tag @s remove dleft
tag @s remove dright