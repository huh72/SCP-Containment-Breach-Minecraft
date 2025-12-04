tag @s add checking
tag @s add checked

execute as @a[tag=t,tag=!checked] at @s run function scp106evolution:definetarget/final

tag @a remove checked
tag @a remove checking