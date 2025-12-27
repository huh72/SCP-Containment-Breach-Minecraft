#spawn ci colders
function animated_java:ci/remove/all
execute as @e[tag=a1.cispawnpoint] at @s run function animated_java:ci/summon with storage aj:temp

#apply pose
execute as @e[tag=aj.ci.root] run function animated_java:ci/animations/walk/next_frame

#ci spawn sound
playsound cb:a1.cispawn ambient @a ~ ~ ~ 1 1 1

#apply slowness
effect give @s minecraft:slowness infinite 100 true

#prevent final scene looping
scoreboard players set @s gameend 0