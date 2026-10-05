playsound cb:ci.death ambient @a[distance=..22] ~ ~1 ~ 1.4 1 1

execute as @n[type=item_display, tag=cis.model] run function animated_java:cisolder/animations/death/play

tp @s ~ ~30 ~
kill @s