scoreboard objectives add q minecraft.dropped:minecraft.carrot_on_a_stick

#save cd:
scoreboard objectives add save_cd dummy
scoreboard players set max* save_cd 20
#ini
execute as @a unless score @s save_cd matches 1.. run scoreboard players operation @s save_cd = max* save_cd

#could player save or not (for surface):
scoreboard objectives add could_save dummy
#ini
execute as @a unless score @s could_save matches 1.. run scoreboard players set @s could_save 1


#save number max/min
scoreboard objectives add save_num_max dummy
execute as @a unless score @s save_num_max matches 1.. run scoreboard players set @s save_num_max 0
#min
scoreboard objectives add save_num dummy
execute as @a unless score @s save_num matches 1.. run scoreboard players set @s save_num 0