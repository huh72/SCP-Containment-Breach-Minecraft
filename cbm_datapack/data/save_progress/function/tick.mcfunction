scoreboard players remove @a[scores={save_cd=1..}] save_cd 1 

execute as @a if score @s q matches 1.. if score @s could_save matches 1 if score @s save_cd matches 0 at @s run function save_progress:save {"sound":"general.save"}


scoreboard players set @a q 0