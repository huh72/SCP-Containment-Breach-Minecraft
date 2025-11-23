scoreboard players set air v 0
scoreboard players set dist* air 0

execute unless score air v matches 2 positioned ^ ^ ^0.5 run function scp173:player_raycast/per_block
execute unless score air v matches 2 positioned ^ ^ ^1 run function scp173:player_raycast/per_block
execute unless score air v matches 2 positioned ^ ^ ^1.5 run function scp173:player_raycast/per_block
execute unless score air v matches 2 positioned ^ ^ ^2 run function scp173:player_raycast/per_block
execute unless score air v matches 2 positioned ^ ^ ^2.5 run function scp173:player_raycast/per_block
execute unless score air v matches 2 positioned ^ ^ ^3 run function scp173:player_raycast/per_block
execute unless score air v matches 2 positioned ^ ^ ^3.5 run function scp173:player_raycast/per_block
execute unless score air v matches 2 positioned ^ ^ ^4 run function scp173:player_raycast/per_block
execute unless score air v matches 2 positioned ^ ^ ^4.5 run function scp173:player_raycast/per_block
execute unless score air v matches 2 positioned ^ ^ ^5 run function scp173:player_raycast/per_block
execute unless score air v matches 2 positioned ^ ^ ^5.5 run function scp173:player_raycast/per_block
execute unless score air v matches 2 positioned ^ ^ ^6 run function scp173:player_raycast/per_block
execute unless score air v matches 2 positioned ^ ^ ^6.5 run function scp173:player_raycast/per_block
execute unless score air v matches 2 positioned ^ ^ ^7 run function scp173:player_raycast/per_block
execute unless score air v matches 2 positioned ^ ^ ^7.5 run function scp173:player_raycast/per_block
execute unless score air v matches 2 positioned ^ ^ ^8 run function scp173:player_raycast/per_block
execute unless score air v matches 2 positioned ^ ^ ^8.5 run function scp173:player_raycast/per_block
execute unless score air v matches 2 positioned ^ ^ ^9 run function scp173:player_raycast/per_block
execute unless score air v matches 2 positioned ^ ^ ^9.5 run function scp173:player_raycast/per_block
execute unless score air v matches 2 positioned ^ ^ ^10 run function scp173:player_raycast/per_block
execute unless score air v matches 2 positioned ^ ^ ^10.5 run function scp173:player_raycast/per_block
execute unless score air v matches 2 positioned ^ ^ ^11 run function scp173:player_raycast/per_block
execute unless score air v matches 2 positioned ^ ^ ^11.5 run function scp173:player_raycast/per_block
execute unless score air v matches 2 positioned ^ ^ ^12 run function scp173:player_raycast/per_block
execute unless score air v matches 2 positioned ^ ^ ^12.5 run function scp173:player_raycast/per_block
execute unless score air v matches 2 positioned ^ ^ ^13 run function scp173:player_raycast/per_block
execute unless score air v matches 2 positioned ^ ^ ^13.5 run function scp173:player_raycast/per_block
execute unless score air v matches 2 positioned ^ ^ ^14 run function scp173:player_raycast/per_block
execute unless score air v matches 2 positioned ^ ^ ^14.5 run function scp173:player_raycast/per_block
execute unless score air v matches 2 positioned ^ ^ ^15 run function scp173:player_raycast/per_block
execute unless score air v matches 2 positioned ^ ^ ^15.5 run function scp173:player_raycast/per_block
execute unless score air v matches 2 positioned ^ ^ ^16 run function scp173:player_raycast/per_block
execute unless score air v matches 2 positioned ^ ^ ^16.5 run function scp173:player_raycast/per_block
execute unless score air v matches 2 positioned ^ ^ ^17 run function scp173:player_raycast/per_block
execute unless score air v matches 2 positioned ^ ^ ^17.5 run function scp173:player_raycast/per_block
execute unless score air v matches 2 positioned ^ ^ ^18 run function scp173:player_raycast/per_block
execute unless score air v matches 2 positioned ^ ^ ^18.5 run function scp173:player_raycast/per_block
execute unless score air v matches 2 positioned ^ ^ ^19 run function scp173:player_raycast/per_block
execute unless score air v matches 2 positioned ^ ^ ^19.5 run function scp173:player_raycast/per_block
execute unless score air v matches 2 positioned ^ ^ ^20 run function scp173:player_raycast/per_block

scoreboard players operation dist* air /= 2* math

execute at @n[tag=scp173] run tp @n[tag=scp173_marker] ~ ~1 ~ facing entity @p[tag=!checked,tag=!dead] eyes
execute at @n[tag=scp173_marker] if entity @p[distance=..20,tag=!checked,tag=!dead] anchored eyes run function scp173:raycast/player_detect
#tellraw @a {"score":{"name":"dist*","objective":"air"}}
