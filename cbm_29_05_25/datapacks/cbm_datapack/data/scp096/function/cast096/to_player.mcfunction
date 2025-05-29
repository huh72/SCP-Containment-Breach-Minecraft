
scoreboard players set h* air 0
scoreboard players set dist* air 0

execute at @s if score h* air matches 0 anchored eyes positioned ^ ^ ^0.5 run function scp096:player_cast/pb
execute at @s if score h* air matches 0 anchored eyes positioned ^ ^ ^1 run function scp096:player_cast/pb
execute at @s if score h* air matches 0 anchored eyes positioned ^ ^ ^1.5 run function scp096:player_cast/pb
execute at @s if score h* air matches 0 anchored eyes positioned ^ ^ ^2 run function scp096:player_cast/pb
execute at @s if score h* air matches 0 anchored eyes positioned ^ ^ ^2.5 run function scp096:player_cast/pb
execute at @s if score h* air matches 0 anchored eyes positioned ^ ^ ^3 run function scp096:player_cast/pb
execute at @s if score h* air matches 0 anchored eyes positioned ^ ^ ^3.5 run function scp096:player_cast/pb
execute at @s if score h* air matches 0 anchored eyes positioned ^ ^ ^4 run function scp096:player_cast/pb
execute at @s if score h* air matches 0 anchored eyes positioned ^ ^ ^4.5 run function scp096:player_cast/pb
execute at @s if score h* air matches 0 anchored eyes positioned ^ ^ ^5 run function scp096:player_cast/pb
execute at @s if score h* air matches 0 anchored eyes positioned ^ ^ ^5.5 run function scp096:player_cast/pb
execute at @s if score h* air matches 0 anchored eyes positioned ^ ^ ^6 run function scp096:player_cast/pb
execute at @s if score h* air matches 0 anchored eyes positioned ^ ^ ^6.5 run function scp096:player_cast/pb
execute at @s if score h* air matches 0 anchored eyes positioned ^ ^ ^7 run function scp096:player_cast/pb
execute at @s if score h* air matches 0 anchored eyes positioned ^ ^ ^7.5 run function scp096:player_cast/pb
execute at @s if score h* air matches 0 anchored eyes positioned ^ ^ ^8 run function scp096:player_cast/pb
execute at @s if score h* air matches 0 anchored eyes positioned ^ ^ ^8.5 run function scp096:player_cast/pb
execute at @s if score h* air matches 0 anchored eyes positioned ^ ^ ^9 run function scp096:player_cast/pb
execute at @s if score h* air matches 0 anchored eyes positioned ^ ^ ^9.5 run function scp096:player_cast/pb
execute at @s if score h* air matches 0 anchored eyes positioned ^ ^ ^10 run function scp096:player_cast/pb
execute at @s if score h* air matches 0 anchored eyes positioned ^ ^ ^10.5 run function scp096:player_cast/pb
execute at @s if score h* air matches 0 anchored eyes positioned ^ ^ ^11 run function scp096:player_cast/pb
execute at @s if score h* air matches 0 anchored eyes positioned ^ ^ ^11.5 run function scp096:player_cast/pb
execute at @s if score h* air matches 0 anchored eyes positioned ^ ^ ^12 run function scp096:player_cast/pb
execute at @s if score h* air matches 0 anchored eyes positioned ^ ^ ^12.5 run function scp096:player_cast/pb
execute at @s if score h* air matches 0 anchored eyes positioned ^ ^ ^13 run function scp096:player_cast/pb
execute at @s if score h* air matches 0 anchored eyes positioned ^ ^ ^13.5 run function scp096:player_cast/pb
execute at @s if score h* air matches 0 anchored eyes positioned ^ ^ ^14 run function scp096:player_cast/pb
execute at @s if score h* air matches 0 anchored eyes positioned ^ ^ ^14.5 run function scp096:player_cast/pb
execute at @s if score h* air matches 0 anchored eyes positioned ^ ^ ^15 run function scp096:player_cast/pb
execute at @s if score h* air matches 0 anchored eyes positioned ^ ^ ^15.5 run function scp096:player_cast/pb
execute at @s if score h* air matches 0 anchored eyes positioned ^ ^ ^16 run function scp096:player_cast/pb
execute at @s if score h* air matches 0 anchored eyes positioned ^ ^ ^16.5 run function scp096:player_cast/pb
execute at @s if score h* air matches 0 anchored eyes positioned ^ ^ ^17 run function scp096:player_cast/pb
execute at @s if score h* air matches 0 anchored eyes positioned ^ ^ ^17.5 run function scp096:player_cast/pb
execute at @s if score h* air matches 0 anchored eyes positioned ^ ^ ^18 run function scp096:player_cast/pb
execute at @s if score h* air matches 0 anchored eyes positioned ^ ^ ^18.5 run function scp096:player_cast/pb
execute at @s if score h* air matches 0 anchored eyes positioned ^ ^ ^19 run function scp096:player_cast/pb
execute at @s if score h* air matches 0 anchored eyes positioned ^ ^ ^19.5 run function scp096:player_cast/pb
execute at @s if score h* air matches 0 anchored eyes positioned ^ ^ ^20 run function scp096:player_cast/pb
execute at @s if score h* air matches 0 anchored eyes positioned ^ ^ ^20.5 run function scp096:player_cast/pb

scoreboard players operation dist* air /= 2* math
#tellraw @a {"score":{"name":"dist*","objective":"air"}}
