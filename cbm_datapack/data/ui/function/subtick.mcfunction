execute if entity @s[gamemode=adventure] run function ui:actionbar
function ui:subtitle

scoreboard players remove @s[scores={request_cd=1..}] request_cd 1

# title @s[scores={request_cd=0}] times 0t 20t 0t
# title @s[scores={request_cd=0,item_selected=0},tag=!looking_on_item] title {"text":"\uE078"}

#interactions -> drop:tick(because of tags)

#items
title @s[scores={request_cd=0,item_selected=1}] title {"text":"\uE004","shadow_color":0}
title @s[scores={request_cd=0,item_selected=2}] title {"text":"\uE005","shadow_color":0}
title @s[scores={request_cd=0,item_selected=3}] title {"text":"\uE006","shadow_color":0}
title @s[scores={request_cd=0,item_selected=4}] title {"text":"\uE007","shadow_color":0}
title @s[scores={request_cd=0,item_selected=5}] title {"text":"\uE008","shadow_color":0}
title @s[scores={request_cd=0,item_selected=6}] title {"text":"\uE009","shadow_color":0}
title @s[scores={request_cd=0,item_selected=7}] title {"text":"\uE010","shadow_color":0}
title @s[scores={request_cd=0,item_selected=8}] title {"text":"\uE011","shadow_color":0}
title @s[scores={request_cd=0,item_selected=9}] title {"text":"\uE012","shadow_color":0}
title @s[scores={request_cd=0,item_selected=10}] title {"text":"\uE013","shadow_color":0}
title @s[scores={request_cd=0,item_selected=11}] title {"text":"\uE014","shadow_color":0}
title @s[scores={request_cd=0,item_selected=12}] title {"text":"\uE015","shadow_color":0}
title @s[scores={request_cd=0,item_selected=13}] title {"text":"\uE016","shadow_color":0}
title @s[scores={request_cd=0,item_selected=14}] title {"text":"\uE017","shadow_color":0}
title @s[scores={request_cd=0,item_selected=15}] title {"text":"\uE018","shadow_color":0}
title @s[scores={request_cd=0,item_selected=16}] title {"text":"\uE019","shadow_color":0}
title @s[scores={request_cd=0,item_selected=17}] title {"text":"\uE020","shadow_color":0}
title @s[scores={request_cd=0,item_selected=18}] title {"text":"\uE021","shadow_color":0}
title @s[scores={request_cd=0,item_selected=19}] title {"text":"\uE022","shadow_color":0}
title @s[scores={request_cd=0,item_selected=20}] title {"text":"\uE023","shadow_color":0}
title @s[scores={request_cd=0,item_selected=21}] title {"text":"\uE024","shadow_color":0}
title @s[scores={request_cd=0,item_selected=22}] title {"text":"\uE025","shadow_color":0}
title @s[scores={request_cd=0,item_selected=23}] title {"text":"\uE026","shadow_color":0}
title @s[scores={request_cd=0,item_selected=24}] title {"text":"\uE027","shadow_color":0}
title @s[scores={request_cd=0,item_selected=25}] title {"text":"\uE028","shadow_color":0}
title @s[scores={request_cd=0,item_selected=26}] title {"text":"\uE029","shadow_color":0}
title @s[scores={request_cd=0,item_selected=27}] title {"text":"\uE030","shadow_color":0}
title @s[scores={request_cd=0,item_selected=28}] title {"text":"\uE031","shadow_color":0}
title @s[scores={request_cd=0,item_selected=29}] title {"text":"\uE032","shadow_color":0}
title @s[scores={request_cd=0,item_selected=30}] title {"text":"\uE033","shadow_color":0}
title @s[scores={request_cd=0,item_selected=31}] title {"text":"\uE034","shadow_color":0}
