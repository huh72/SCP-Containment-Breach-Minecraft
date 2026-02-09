#ulgrin pissedoff pharse:
execute at @n[tag=ulgrin,tag=!ph.wrongway] unless entity @p[distance=..10] run playsound cb:i.ulgrin.pissedoff ambient @a ~ ~1.75 ~ 2 1 1
execute at @n[tag=ulgrin,tag=!ph.wrongway] unless entity @p[distance=..10] run tag @n[tag=ulgrin] add ph.wrongway

#stop/go conditions:
execute at @n[tag=ulgrin,tag=!stop] unless entity @n[tag=ulgrinP,distance=..7] run function int:path/stop
execute at @n[tag=ulgrin,tag=stop] if entity @n[tag=ulgrinP,distance=..7] run function int:path/proceed

#termination
execute as @a[tag=!dead] at @s unless entity @n[tag=ulgrin,distance=..7] unless entity @n[tag=ulgrinP,distance=..7] run function int:terminate

#ulgrin rotation while waiting
rotate @n[tag=ulgrin,tag=stop] facing entity @p

#tp interaction to guards
execute as @e[tag=guard] at @s run tp @n[type=interaction,tag=interaction] ~ ~ ~