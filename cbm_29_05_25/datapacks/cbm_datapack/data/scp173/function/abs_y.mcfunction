
scoreboard players set -1* rot173y -1 

scoreboard players set m_res* rot173 0

execute store result score m_res* rot173y run scoreboard players operation @e[tag=caster173,limit=1] rot173y *= -1* rot173y

scoreboard players operation res* rot173y = m_res* rot173y
