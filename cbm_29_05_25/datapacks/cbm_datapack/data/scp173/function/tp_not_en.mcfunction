
scoreboard players set @s can_move 0
scoreboard players operation @s tp_cd = max* tp_cd

# if enought space for one-kill
#execute if score dist* air <= max* tp at @p run tp @s ~ ~ ~

# if not enought
#execute if score dist* air > max* tp at @s run tp @s ~ ~ ~ facing entity @p
#execute if score dist* air > max* tp at @p run tp @s ^ ^ ^5

execute at @s run tp @s ~ ~ ~ facing entity @p
execute at @s run tp @s ^ ^ ^5