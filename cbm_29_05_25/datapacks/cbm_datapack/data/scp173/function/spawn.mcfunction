
summon armor_stand ~ ~ ~4 {Tags:['scp173'],Invulnerable:1b,Invisible:1b,Silent:1b,ArmorItems:[{},{},{},{id:paper,components:{custom_model_data:46}}]}
summon marker ~ ~1 ~ {Tags:['173caster']}
summon marker ~ ~1 ~ {Tags:['caster173']}
scoreboard players operation @e[tag=scp173] tp_cd = max* tp_cd