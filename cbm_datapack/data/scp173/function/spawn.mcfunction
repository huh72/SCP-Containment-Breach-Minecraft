summon armor_stand ~ ~ ~ {Tags:['scp173','tesla_trigger','new'],Invulnerable:1b,Invisible:1b,PersistenceRequired:1b,Silent:1b,Passengers:[{id:"minecraft:shulker",Tags:['shulker_hitbox'],NoAI:1b,NoGravity:1b,Invulnerable:1b,PersistenceRequired:1b,Silent:1b}]}
item replace entity @n[tag=new] armor.head with paper[minecraft:item_model="cb:scp/173"]
attribute @n[tag=new] scale base set 0.91
effect give @n[tag=shulker_hitbox] invisibility infinite 1 true
effect give @n[tag=shulker_hitbox] regeneration infinite 10 true

summon marker ~ ~ ~ {Tags:['scp173_marker']}
# summon shulker ~ ~ ~ {Tags:['shulker_hitbox'],Invisible:1b}

ride @n[tag=scp173] mount @n[tag=shulker_hitbox]

execute as @a at @s run summon marker ~ ~1 ~ {Tags:['scp173_playermarker']}
scoreboard players set scp173 move_cd 20
tag @n[tag=new] remove new

execute as @a store result score @s horror_cd run random value 10..30 cb:scp173horror
execute store result score 173 rattle_cd run random value 60..200 cb:scp173horror

scoreboard players set .173 despawnTimer 0
scoreboard players set .canSpawn 173spawnTimer 0
scoreboard players set .timerCanBeIncreased 173spawnTimer 0