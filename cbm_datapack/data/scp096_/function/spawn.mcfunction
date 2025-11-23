summon wandering_trader ~ ~ ~ {Tags:['scp096','tesla_trigger','new'],Invulnerable:1b,Silent:1b,NoAI:1b}
# item replace entity @n[tag=new] armor.head with paper[minecraft:item_model="cb:scp/173"]
execute rotated 0 0 run function animated_java:scp096/summon with storage aj:temp

summon marker ~ ~ ~ {Tags:['scp096_marker']}
execute as @a at @s run summon marker ~ ~1 ~ {Tags:['scp096_playermarker']}
tag @n[tag=new] remove new