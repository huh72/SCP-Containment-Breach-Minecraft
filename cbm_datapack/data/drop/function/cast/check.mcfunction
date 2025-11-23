tag @s add caster

#var - air/solid block
scoreboard players set 820 v 0

execute positioned ^ ^ ^0.25 run function drop:cast/pb
execute if score 820 v matches 0 positioned ^ ^ ^0.5 run function drop:cast/pb
execute if score 820 v matches 0 positioned ^ ^ ^0.75 run function drop:cast/pb
execute if score 820 v matches 0 positioned ^ ^ ^1 run function drop:cast/pb
execute if score 820 v matches 0 positioned ^ ^ ^1.25 run function drop:cast/pb
execute if score 820 v matches 0 positioned ^ ^ ^1.5 run function drop:cast/pb
execute if score 820 v matches 0 positioned ^ ^ ^1.75 run function drop:cast/pb
execute if score 820 v matches 0 positioned ^ ^ ^2 run function drop:cast/pb
execute if score 820 v matches 0 positioned ^ ^ ^2.25 run function drop:cast/pb
execute if score 820 v matches 0 positioned ^ ^ ^2.5 run function drop:cast/pb
