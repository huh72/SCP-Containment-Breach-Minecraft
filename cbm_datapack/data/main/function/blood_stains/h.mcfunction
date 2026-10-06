$summon item_display ~ ~0.02 ~ {Tags:['blood_stains', 'toSizeup','new'], Rotation:[$(rotation)f,0f], item:{id:"paper",components:{item_model:"cb:blood_stains"}}, transformation:{translation:[0f, 0f, 0f], left_rotation:[0f, 0f, 0f, 1f], right_rotation:[0f, 0f, 0f, 1f], scale:[0.1f, 0.1f, 0.1f]}}

scoreboard players set @n[type=item_display, tag=blood_stains, tag=new] pd_shrink_scale 10

tag @n[type=item_display, tag=blood_stains, tag=new] remove new