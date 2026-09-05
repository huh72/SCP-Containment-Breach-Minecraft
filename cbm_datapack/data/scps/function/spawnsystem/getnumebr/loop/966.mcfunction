$execute store result score .request 966spawnTimer run random value $(SpawnMin966)..$(SpawnMax966) cb:scp966

execute as @a run scoreboard players add global playerAmount 1

execute as @a run scoreboard players remove .request 106spawnTimer 600