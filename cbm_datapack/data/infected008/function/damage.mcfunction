playsound cb:d9341.damage10 ambient @a[distance=..18] ~ ~ ~ 1.25 1 1
playsound cb:d9341.damage10 ambient @s ~ ~5 ~ 0.65 1 1

$execute store result score damage infected008 run random value $(minDamage)..$(maxDamage) cb:infecedted008
$execute store result score bleeding infected008 run random value $(minBleeding)..$(maxBleeding) cb:infecedted008

scoreboard players operation @s health -= damage infected008
execute if predicate infected008:50 run scoreboard players operation @s bleeding += bleeding infected008

