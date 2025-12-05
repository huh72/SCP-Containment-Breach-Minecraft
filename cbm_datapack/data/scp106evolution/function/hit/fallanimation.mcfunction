tag @s remove 106target
scoreboard players add @s fallinpdanimation 1
summon minecart ~ ~ ~ {Tags:["scp106animationhandler"],Silent:1b,Invulnerable:1b,NoAI:1b}
effect give @e[tag=scp106animationhandler] invisibility infinite 1 true
ride @s mount @n[tag=scp106animationhandler]

tp @e[tag=scp106animationhandler] ~ ~-2.5 ~



# tp @s ~ ~-1.5 ~ facing ~ ~2 ~


# execute if score @s fallinpdanimation = max fallinpdanimation run tag @s remove hitby106
execute if score @s fallinpdanimation = max fallinpdanimation run kill @n[tag=scp106animationhandler]
execute if score @s fallinpdanimation = max fallinpdanimation run ride @s dismount