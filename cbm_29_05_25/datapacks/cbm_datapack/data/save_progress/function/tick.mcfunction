scoreboard players remove @a[scores={save_cd=1..}] save_cd 1 

execute as @a if score @s q matches 1.. if score @s could_save matches 1 if score @s save_cd matches 0 run function save_progress:save {"text":"Game progress saved."}


scoreboard players set @a q 0