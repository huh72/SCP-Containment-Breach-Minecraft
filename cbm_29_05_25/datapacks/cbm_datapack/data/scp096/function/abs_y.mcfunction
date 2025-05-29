

scoreboard players set -1* rot096y -1 

scoreboard players set m_res* rot096y 0

execute store result score m_res* rot096y run scoreboard players operation @e[tag=caster096,limit=1] rot096y *= -1* rot096y

scoreboard players operation res* rot096y = m_res* rot096y
