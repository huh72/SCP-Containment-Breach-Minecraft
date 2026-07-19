playsound cb:m4a1s.fire ambient @a[distance=..32] ~ ~1 ~ 1.25 1 1

execute store result storage cb:usps damage int 1 run scoreboard players get damage stat_usps
execute store result storage cb:usps bullet_num int 1 run scoreboard players get @s global_num
data modify storage cb:usps blood_lost set value 0
# execute store result storage cb:usps xa int 1 run random value 0..99
# execute store result storage cb:usps xb int 1 run random value 0..99
# execute store result storage cb:usps ya int 1 run random value 0..99
# execute store result storage cb:usps yb int 1 run random value 0..99
execute store result storage cb:usps acc0 int 0.01 run random value 0..9
execute store result storage cb:usps acc1 int 0.01 run random value 0..9
# execute store result storage cb:usps ya int 1 run random value 0..99
# execute store result storage cb:usps yb int 1 run random value -1..1


function guns:bullet/spawn with storage cb:usps

# {"damage":"14","bullet_num":"0","blood_lost":"0","xa":"0","xb":"0","ya":"0","yb":"0"}

scoreboard players operation @s shot_cd = shot_cd stat_usps
scoreboard players remove @s ammo 1