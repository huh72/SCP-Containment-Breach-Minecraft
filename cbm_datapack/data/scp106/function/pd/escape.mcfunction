# on hit - 20 = death, 80 = pd, on enter tunnel - 10 = death, 20 = escape, 70 = back to center
execute store result score .escape pocketDimension run random value 0..99 cb:pd

#g death
execute if score .escape pocketDimension matches 0..9 run scoreboard players set @s health 0
execute if score .escape pocketDimension matches 0..9 run tag @s add d_pd

#g escape
execute if score .escape pocketDimension matches 10..29 run function scp106:pd/exit

#g fail
execute if score .escape pocketDimension matches 30..99 at @n[tag=pd.center] run function scp106:pd/repeat