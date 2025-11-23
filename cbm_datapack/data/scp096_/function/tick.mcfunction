#tp a players' marker to a player
execute at @a run tp @n[tag=scp096_playermarker] ~ ~1 ~ facing entity @n[tag=scp096]
execute at @n[tag=scp096] run tp @n[tag=aj.scp096.root] ~ ~ ~ ~ ~

###whether have players any chance of seeing 173 directly
#tag
tag @a remove can_see_096

#096's marker rotates to player
execute at @n[tag=scp096] run tp @n[tag=scp096_marker] ~ ~1 ~ facing entity @p[tag=!dead] eyes

#is player looking on 096 directly
execute as @a[tag=!scp096target,tag=!dead] at @s run function scp096_:look_detect_x
execute as @a[tag=!scp096target,tag=!dead] at @s run function scp096_:look_detect_y

#raycast -- 096's marker rotates to player to check that is there no blocks between 096 and player
execute at @n[tag=scp096_marker] if entity @p[tag=!dead,tag=!scp096target,distance=..20,tag=see096x,tag=see096y] anchored eyes run function scp096_:raycast/player_detect
#if so, - player can see 096 => can player see its face?
# get 096 origin rotX, tp marker facing that player - get rotX => math operation (-/+) - if < 80 - can see
scoreboard players set 096 rot096x 81
execute as @a[tag=!scp096target,tag=!dead,tag=see096x,tag=see096y,tag=can_see_096] run function scp096_:calc_rotation

#chase sys
data modify entity @n[tag=scp096] wander_target set from entity @p[tag=scp096target] Pos

#scp096 stages behaviour
#rage in
execute as @a[tag=scp096target] as @n[tag=aj.scp096.root,tag=!in_rage,tag=!raging_in] run function animated_java:scp096/animations/rage_in_/play
execute as @a[tag=scp096target] as @n[tag=aj.scp096.root,tag=!in_rage,tag=!raging_in] run function animated_java:scp096/animations/idle_sit_/stop
#rage out
execute as @a[tag=!scp096target] as @n[tag=aj.scp096.root,tag=in_rage] run function animated_java:scp096/animations/run_/stop

#kill func
execute at @n[tag=in_rage] anchored eyes positioned ^ ^0.5 ^0.75 as @a[distance=..1.5,tag=!dead] at @s run function scp096_:kill

tag @a remove see096x
tag @a remove see096y
tag @a remove can_see_096