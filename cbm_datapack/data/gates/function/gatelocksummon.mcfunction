tag @s remove r0
tag @s remove r1
tag @s remove r2
tag @s remove r3

tag @s[y_rotation=-45..45] add r0
tag @s[y_rotation=45..135] add r1
tag @s[y_rotation=135..225] add r2
tag @s[y_rotation=225..315] add r3

execute as @s[tag=r0] at @s anchored eyes positioned ^ ^ ^-0.25 run summon item_display ~ ~-0.5 ~ {Rotation:[180f,90f],Tags:['gatelockmarker','r0'],item:{id:"paper",components:{item_model:"cb:locklcz1"}},transformation:{translation:[0f,0f,0f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[1.2f,1.2f,1.2f]}}
execute as @s[tag=r1] at @s anchored eyes positioned ^ ^ ^-0.25 run summon item_display ~ ~-0.5 ~ {Rotation:[270f,90f],Tags:['gatelockmarker','r1'],item:{id:"paper",components:{item_model:"cb:locklcz1"}},transformation:{translation:[0f,0f,0f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[1.2f,1.2f,1.2f]}}
execute as @s[tag=r2] at @s anchored eyes positioned ^ ^ ^-0.25 run summon item_display ~ ~-0.5 ~ {Rotation:[0f,90f],Tags:['gatelockmarker','r2'],item:{id:"paper",components:{item_model:"cb:locklcz1"}},transformation:{translation:[0f,0f,0f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[1.2f,1.2f,1.2f]}}
execute as @s[tag=r3] at @s anchored eyes positioned ^ ^ ^-0.25 run summon item_display ~ ~-0.5 ~ {Rotation:[90f,90f],Tags:['gatelockmarker','r3'],item:{id:"paper",components:{item_model:"cb:locklcz1"}},transformation:{translation:[0f,0f,0f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[1.2f,1.2f,1.2f]}}