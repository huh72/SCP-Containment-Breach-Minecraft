playsound cb:interact.pickitem0 ambient @s ~ ~ ~ 1 1 1
playsound cb:interact.pickitem0 ambient @a[distance=..16] ~ ~1 ~ 1 1 1

execute at @n[tag=ulgrin] as @n[tag=guardaj] run function animated_java:guard/animations/paper/resume
execute at @n[tag=i.door1] as @n[tag=aj.door0.root] run function animated_java:door0/animations/openclosetoggle/resume

# tag @n[tag=ulgrin] remove i.paper

scoreboard players set .status i 5