

scoreboard players set -1* rot096x -1 

scoreboard players set m_res* rot096x 0

execute store result score m_res* rot096x run scoreboard players operation @e[tag=caster096,limit=1] rot096x *= -1* rot096x

scoreboard players operation res* rot096x = m_res* rot096x
