
scoreboard players set -1* rot173x -1 

scoreboard players set m_res* rot173x 0

execute store result score m_res* rot173x run scoreboard players operation @e[tag=caster173,limit=1] rot173x *= -1* rot173x

scoreboard players operation res* rot173x = m_res* rot173x
