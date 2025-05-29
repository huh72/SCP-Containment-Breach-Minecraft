execute store result score RotX bullet run data get entity @s Rotation[0]
execute store result score RotY bullet run data get entity @s Rotation[1]

#1)
# execute if score RotX bullet matches -45..45 run function guns:bullet_hole/spawn {"RotX":"0","RotY":"0"}
# #2)
# execute if score RotX bullet matches 45..135 run function guns:bullet_hole/spawn {"RotX":"90","RotY":"0"}

# #3) divides into two cases
# #1 = 2
# execute if score RotX bullet matches 135..180 run function guns:bullet_hole/spawn {"RotX":"0","RotY":"0"}
# execute if score RotX bullet matches -180..-135 run function guns:bullet_hole/spawn {"RotX":"0","RotY":"0"}

# #4)
# execute if score RotX bullet matches -135..-45 run function guns:bullet_hole/spawn {"RotX":"90","RotY":"0"}

### Y ROTAION CHECK
# execute if score RotY bullet matches 1.. unless block ~ ~-0.1 ~ #raycast:air if block ~ ~0.1 ~ #raycast:air run function guns:bullet_hole/spawn {"block":"black_concrete","transformation":"0.1f,0f,0f,-0.05f,0f,0.1f,0f,-0.05f,0f,0f,0.0011f,0f,0f,0f,0f,1f","RotX":"0","RotY":"90"}

# execute if score RotY bullet matches 1.. unless block ~ ~-0.1 ~ #raycast:air if block ~ ~0.1 ~ #raycast:air run function guns:bullet_hole/spawn {"block":"black_concrete","transformation":"0.1f,0f,0f,-0.05f,0f,0.1f,0f,-0.05f,0f,0f,0.0011f,0f,0f,0f,0f,1f","RotX":"0","RotY":"90"}


### X ROTAION CHECK
#1)
execute if score RotX bullet matches -45..45 run function guns:bullet_hole/spawn {"block":"black_concrete","transformation":"0.1f,0f,0f,-0.05f,0f,0.1f,0f,-0.05f,0f,0f,0.0011f,0f,0f,0f,0f,1f","RotX":"0","RotY":"0"}
#2)
execute if score RotX bullet matches 45..135 run function guns:bullet_hole/spawn {"block":"black_concrete","transformation":"0.1f,0f,0f,-0.05f,0f,0.1f,0f,-0.05f,0f,0f,0.0011f,0f,0f,0f,0f,1f","RotX":"90","RotY":"0"}
#3) divides into two cases
#1 = 2
execute if score RotX bullet matches 135..180 run function guns:bullet_hole/spawn {"block":"black_concrete","transformation":"0.1f,0f,0f,-0.05f,0f,0.1f,0f,-0.05f,0f,0f,0.0011f,0f,0f,0f,0f,1f","RotX":"180","RotY":"0"}
execute if score RotX bullet matches -180..-135 run function guns:bullet_hole/spawn {"block":"black_concrete","transformation":"0.1f,0f,0f,-0.05f,0f,0.1f,0f,-0.05f,0f,0f,0.0011f,0f,0f,0f,0f,1f","RotX":"180","RotY":"0"}
#4)
execute if score RotX bullet matches -135..-45 run function guns:bullet_hole/spawn {"block":"black_concrete","transformation":"0.1f,0f,0f,-0.05f,0f,0.1f,0f,-0.05f,0f,0f,0.0011f,0f,0f,0f,0f,1f","RotX":"270","RotY":"0"}
