execute as @a[scores={fallinpdanimation=-1, fall=1..400}] at @s run function fall:damage {"damage":"20"}
execute as @a[scores={fallinpdanimation=-1, fall=401..450}] at @s run function fall:damage {"damage":"65"}
execute as @a[scores={fallinpdanimation=-1, fall=451..}] at @s run function fall:damage {"damage":"200"}