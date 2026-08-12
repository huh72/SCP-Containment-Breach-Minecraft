# tag @s remove active
scoreboard players set @e[type=armor_stand, tag=pd_shrink] step_on_shrink 0
scoreboard players operation 106 step_on_shrink_cd = max step_on_shrink_cd
function scp106:appear/appear
kill @s