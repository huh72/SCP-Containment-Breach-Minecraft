#manual sound volume (vawes)
playsound cb:scp066.beethoven ambient @a[distance=..8] ~ ~1000 ~ 1.25 1 1
execute at @n[tag=scp066] run say @a[distance=..8] ..8
playsound cb:scp066.beethoven ambient @a[distance=8..16] ~ ~1000 ~ 1 1 1
execute at @n[tag=scp066] run say @a[distance=8..16] 8..16
playsound cb:scp066.beethoven ambient @a[distance=16..32] ~ ~1000 ~ 0.75 1 1
execute at @n[tag=scp066] run say @a[distance=16..32] 16..32
playsound cb:scp066.beethoven ambient @a[distance=32..64] ~ ~1000 ~ 0.25 1 1
execute at @n[tag=scp066] run say @a[distance=32..64] 32..64
playsound cb:scp066.beethoven ambient @a[distance=64..128] ~ ~1000 ~ 0.15 1 1
execute at @n[tag=scp066] run say @a[distance=64..128] 64..128
playsound cb:scp066.beethoven ambient @a[distance=128..256] ~ ~1000 ~ 1 1 1
execute at @n[tag=scp066] run say @a[distance=128..256] 128..256

#playing notes sound have a 10% chance to hit the player
function scp066:severehitplayer {"damage":"1"}

scoreboard players set @s touchCountScp066 0
scoreboard players set @s touchCountCdScp066 460