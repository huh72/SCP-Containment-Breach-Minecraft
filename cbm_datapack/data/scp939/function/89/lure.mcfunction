playsound cb:scp939_89.lure ambient @a[distance=..36] ~ ~ ~ 3 1 1
execute store result score @s phrase_cd run random value 150..350 cb:scp939lurecd
scoreboard players set @s alert_cd 40