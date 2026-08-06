setblock ~ ~12 ~ minecraft:oak_sign[rotation=1]{front_text:{messages:['[{"text":"15! (1)}]','[{"text":"14 (1)"}]','[{"text":"14 (1)"}]','[{"text":"14 (1)"}]']}}

#g 079 model spawn
execute at @n[tag=079.spawnpoint] run summon item_display ~ ~0.525 ~ {Tags:['079face','3'],item:{id:"paper",components:{item_model:"cb:scp/079_face"}},transformation:{translation:[0f,0f,0f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,-0.75f,0f,1f],scale:[1f,1f,1f]}}

#g gates spawn
execute at @n[tag=079gate.spawnpoint0] rotated 90 0 run function animated_java:gate/summon with storage aj:temp

#g gates spawn
execute at @n[tag=079gate.spawnpoint1] rotated 90 0 run function animated_java:gate/summon with storage aj:temp
execute at @n[tag=079gate.spawnpoint1] run tag @n[tag=gate] add blocked

execute at @n[tag=079gate.spawnpoint1] run scoreboard players add @e[tag=gate,limit=2,sort=nearest] access_level 4