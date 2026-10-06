playsound cb:ci.death ambient @a[distance=..22] ~ ~1 ~ 1.4 1 1

execute as @n[type=item_display, tag=cis.model] run function animated_java:cisolder/animations/death/play

execute rotated as @n[type=item_display, tag=cis.model] positioned ^ ^ ^0.3 run function main:blood_stains/create

tp @s ~ ~30 ~
kill @s