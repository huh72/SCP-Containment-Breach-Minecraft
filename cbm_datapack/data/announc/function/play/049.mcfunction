playsound cb:annouc.049 ambient @a ~ ~1000000 ~ 100000 1 1
scoreboard players set .049 isContained 1

execute at @n[tag=scp049] run tp @n[tag=mtf] ~ ~1 ~
function scp049:despawn
function scp049:contain
execute at @n[tag=mtf] run tp @n[tag=scp049contained] ~ ~0.1 ~



#g simple hitbox
execute at @n[tag=scp049contained] run summon armor_stand ~ ~ ~ {Tags:['new0','049containedhixbox'],Invulnerable:1b,Invisible:1b,PersistenceRequired:1b,Silent:1b,Passengers:[{id:"minecraft:shulker",Tags:['shulker_hitbox', 'new1'],NoAI:1b,NoGravity:1b,Invulnerable:1b,PersistenceRequired:1b,Silent:1b}]}
attribute @n[tag=new0] minecraft:scale base set 0.01
attribute @n[tag=new1] minecraft:scale base set 0.5

effect give @n[tag=shulker_hitbox] invisibility infinite 1 true
effect give @n[tag=shulker_hitbox] regeneration infinite 10 true
ride @n[tag=049containedhixbox] mount @n[tag=shulker_hitbox]


tag @e remove new0
tag @e remove new1