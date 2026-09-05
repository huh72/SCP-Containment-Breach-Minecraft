$execute store result score .request 106spawnTimer run random value $(SpawnMin106)..$(SpawnMax106) cb:scp106

execute as @a run scoreboard players add global playerAmount 1

execute if score global playerAmount matches 1 run scoreboard players remove .request 106spawnTimer 200
execute if score global playerAmount matches 2.. as @a run scoreboard players remove .request 106spawnTimer 600