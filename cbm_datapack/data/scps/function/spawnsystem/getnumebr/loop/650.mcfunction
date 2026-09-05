$execute store result score .request 650spawnTimer run random value $(SpawnMin650)..$(SpawnMax650) cb:scp650

execute as @a run scoreboard players add global playerAmount 1

execute as @a run scoreboard players remove .request 106spawnTimer 1000