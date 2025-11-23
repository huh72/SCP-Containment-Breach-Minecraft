execute as @a[scores={fall=1..400}] at @s run function fall:damage {"damage":"20"}
execute as @a[scores={fall=401..450}] at @s run function fall:damage {"damage":"65"}
execute as @a[scores={fall=451..}] at @s run function fall:damage {"damage":"200"}