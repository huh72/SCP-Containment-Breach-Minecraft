summon zombie ~ ~ ~ {Tags:["scp650"],Invulnerable:1b,Silent:1b,NoAI:1b}

effect give @n[tag=scp650] invisibility infinite 1 true
effect give @n[tag=scp650] weakness infinite 255 true

execute rotated 0 0 run function animated_java:scp650/summon with storage aj:temp

scoreboard players set .canSpawn 650spawnTimer 0
scoreboard players set .timerCanBeIncreased 650spawnTimer 0

scoreboard players set .scp650 isSpotted 0
scoreboard players set .scp650 despawnTime 0
execute store result score .scp650max despawnTime run random value 160..300 cb:scp650despawntime

function scp650:tpbehind

# logic:
# spawn + tp behind (isSpotted = 0), wait until (isSpotted = 1) then wait for (.scp650max despawnTime) and then despawn