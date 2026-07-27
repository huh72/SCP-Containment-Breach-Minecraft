#animations
execute as @s[predicate=scp049:idle] as @n[tag=aj.scp049.root,tag=!aj.scp049.animation.idle.playing,tag=!aj.scp049.animation.revive.playing] run function animated_java:scp049/animations/idle/play
execute as @s[predicate=scp049:idle] as @n[tag=aj.scp049.root,tag=aj.scp049.animation.walk.playing,tag=!aj.scp049.animation.revive.playing] run function animated_java:scp049/animations/walk/stop

execute as @s[predicate=scp049:walk] as @n[tag=aj.scp049.root,tag=aj.scp049.animation.idle.playing,tag=!aj.scp049.animation.revive.playing] run function animated_java:scp049/animations/idle/stop
execute as @s[predicate=scp049:walk] as @n[tag=aj.scp049.root,tag=!aj.scp049.animation.walk.playing,tag=!aj.scp049.animation.revive.playing] run function animated_java:scp049/animations/walk/play

#phrase func
execute if score 049 phrase matches 400.. run function scp049:phrase