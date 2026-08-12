scoreboard players add @s deathAnimation 1

#g rotation
function main:animation/rotate

#g scale
execute if score @s deathAnimation < .end deathAnimation run function main:animation/scaledown with storage cb:death

#
execute if score @s deathAnimation = .setBlackScreen deathAnimation run function main:animation/setblackscreen
execute if score @s deathAnimation = .removeEffects deathAnimation run function main:animation/removeeffects
# execute if score @s deathAnimation = .canRespawn deathAnimation run tag @s add can_respawn