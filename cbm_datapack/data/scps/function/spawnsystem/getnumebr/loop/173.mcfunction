$execute store result score .request 173spawnTimer run random value $(SpawnMin173)..$(SpawnMax173) cb:scp173


execute as @a run scoreboard players add global playerAmount 1

execute if score global playerAmount matches 1 run scoreboard players remove .request 173spawnTimer 600
execute if score global playerAmount matches 2.. as @a run scoreboard players remove .request 173spawnTimer 800