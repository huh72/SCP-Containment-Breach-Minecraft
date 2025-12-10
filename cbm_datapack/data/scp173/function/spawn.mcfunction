summon armor_stand ~ ~ ~ {Tags:['scp173','tesla_trigger','new'],Invulnerable:1b,Invisible:1b,Silent:1b}
item replace entity @n[tag=new] armor.head with paper[minecraft:item_model="cb:scp/173"]

summon marker ~ ~ ~ {Tags:['scp173_marker']}
execute as @a at @s run summon marker ~ ~1 ~ {Tags:['scp173_playermarker']}
scoreboard players set scp173 move_cd 20
tag @n[tag=new] remove new

execute as @a store result score @s horror_cd run random value 10..30 cb:scp173horror
execute store result score 173 rattle_cd run random value 60..200 cb:scp173horror