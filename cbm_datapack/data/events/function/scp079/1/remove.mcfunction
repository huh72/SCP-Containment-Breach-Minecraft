execute at @n[tag=079.spawnpoint] if entity @n[tag=079face, tag=1] run summon item_display ~ ~0.525 ~ {Tags:['079x','1'],item:{id:"paper",components:{item_model:"cb:scp/079_x"}},transformation:{translation:[0f,0f,0f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,1.25f,0f,1f],scale:[1f,1f,1f]}}
execute at @n[tag=079.spawnpoint] if entity @n[tag=079face, tag=2] run summon item_display ~ ~0.525 ~ {Tags:['079x','2'],item:{id:"paper",components:{item_model:"cb:scp/079_x"}},transformation:{translation:[0f,0f,0f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0.25f,0f,1f],scale:[1f,1f,1f]}}
execute at @n[tag=079.spawnpoint] if entity @n[tag=079face, tag=3] run summon item_display ~ ~0.525 ~ {Tags:['079x','3'],item:{id:"paper",components:{item_model:"cb:scp/079_x"}},transformation:{translation:[0f,0f,0f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,-0.75f,0f,1f],scale:[1f,1f,1f]}}

kill @e[tag=079face]
kill @e[tag=event079.trigger]
kill @e[tag=079.spawnpoint]

scoreboard players set .speech event.079 -2