#manual sound volume (vawes)
playsound cb:scp066.beethoven ambient @a[distance=..32] ~ ~100 ~ 25 1 1

#playing notes sound have a 10% chance to hit the player
function scp066:severehitplayer {"damage":"1"}

scoreboard players set @s touchCountScp066 0
scoreboard players set @s touchCountCdScp066 460