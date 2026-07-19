#//g get angles
tp @n[tag=look_check.helper] @p
$rotate @n[tag=look_check.helper] facing entity $(object)] eyes
execute store result score .markerRotX lookcheck run data get entity @n[tag=look_check.helper] Rotation[0]
execute store result score .markerRotY lookcheck run data get entity @n[tag=look_check.helper] Rotation[1]
execute store result score .playerRotX lookcheck run data get entity @s Rotation[0]
execute store result score .playerRotY lookcheck run data get entity @s Rotation[1]

execute store result score .resultX lookcheck run scoreboard players operation .markerRotX lookcheck -= .playerRotX lookcheck
execute store result score .resultY lookcheck run scoreboard players operation .markerRotY lookcheck -= .playerRotY lookcheck


execute if score .resultY lookcheck matches ..-1 run scoreboard players operation .resultY lookcheck *= -1 math
execute if score .resultX lookcheck matches ..-1 run scoreboard players operation .resultX lookcheck *= -1 math

# title @a actionbar [{"text":"dist: ? | result: "},{"score":{"name":".resultX","objective":"lookcheck"}},{"text":" | player: "},{"score":{"name":".playerRotX","objective":"lookcheck"}}]
# title @p[tag=hasLineOfSight0] actionbar [{"text":"dist: 0 | result: "},{"score":{"name":".resultX","objective":"lookcheck"}},{"text":" | player: "},{"score":{"name":".playerRotX","objective":"lookcheck"}}]
# title @p[tag=hasLineOfSight1] actionbar [{"text":"dist: 1 | result: "},{"score":{"name":".resultX","objective":"lookcheck"}},{"text":" | player: "},{"score":{"name":".playerRotX","objective":"lookcheck"}}]
# title @p[tag=hasLineOfSight2] actionbar [{"text":"dist: 2 | result: "},{"score":{"name":".resultX","objective":"lookcheck"}},{"text":" | player: "},{"score":{"name":".playerRotX","objective":"lookcheck"}}]
# title @p[tag=hasLineOfSight3] actionbar [{"text":"dist: 3 | result: "},{"score":{"name":".resultX","objective":"lookcheck"}},{"text":" | player: "},{"score":{"name":".playerRotX","objective":"lookcheck"}}]
# title @p[tag=hasLineOfSight4] actionbar [{"text":"dist: 4 | result: "},{"score":{"name":".resultX","objective":"lookcheck"}},{"text":" | player: "},{"score":{"name":".playerRotX","objective":"lookcheck"}}]


# $execute if entity @s[tag=hasLineOfSight0] if score .resultX lookcheck matches $(xRotMin0_0)..$(xRotMax0_0) run title @s actionbar [{"text":" [ X | dist: "},{"score":{"name":".currDistance","objective":"lookcheck"}},{"text":" ] "}]
# $execute if entity @s[tag=hasLineOfSight0] if score .resultX lookcheck matches $(xRotMin0_1)..$(xRotMax0_1) run title @s actionbar [{"text":" [ X | dist: "},{"score":{"name":".currDistance","objective":"lookcheck"}},{"text":" ] "}]

# $execute if entity @s[tag=hasLineOfSight1] if score .resultX lookcheck matches $(xRotMin1_0)..$(xRotMax1_0) run title @s actionbar [{"text":" [ X | dist: "},{"score":{"name":".currDistance","objective":"lookcheck"}},{"text":" ] "}]
# $execute if entity @s[tag=hasLineOfSight1] if score .resultX lookcheck matches $(xRotMin1_1)..$(xRotMax1_1) run title @s actionbar [{"text":" [ X | dist: "},{"score":{"name":".currDistance","objective":"lookcheck"}},{"text":" ] "}]

# $execute if entity @s[tag=hasLineOfSight2] if score .resultX lookcheck matches $(xRotMin2_0)..$(xRotMax2_0) run title @s actionbar [{"text":" [ X | dist: "},{"score":{"name":".currDistance","objective":"lookcheck"}},{"text":" ] "}]
# $execute if entity @s[tag=hasLineOfSight2] if score .resultX lookcheck matches $(xRotMin2_1)..$(xRotMax2_1) run title @s actionbar [{"text":" [ X | dist: "},{"score":{"name":".currDistance","objective":"lookcheck"}},{"text":" ] "}]

# $execute if entity @s[tag=hasLineOfSight3] if score .resultX lookcheck matches $(xRotMin3_0)..$(xRotMax3_0) run title @s actionbar [{"text":" [ X | dist: "},{"score":{"name":".currDistance","objective":"lookcheck"}},{"text":" ] "}]
# $execute if entity @s[tag=hasLineOfSight3] if score .resultX lookcheck matches $(xRotMin3_1)..$(xRotMax3_1) run title @s actionbar [{"text":" [ X | dist: "},{"score":{"name":".currDistance","objective":"lookcheck"}},{"text":" ] "}]

# $execute if entity @s[tag=hasLineOfSight4] if score .resultX lookcheck matches $(xRotMin4_0)..$(xRotMax4_0) run title @s actionbar [{"text":" [ X | dist: "},{"score":{"name":".currDistance","objective":"lookcheck"}},{"text":" ] "}]
# $execute if entity @s[tag=hasLineOfSight4] if score .resultX lookcheck matches $(xRotMin4_1)..$(xRotMax4_1) run title @s actionbar [{"text":" [ X | dist: "},{"score":{"name":".currDistance","objective":"lookcheck"}},{"text":" ] "}]

#entity being detected by Y axis - only check
# $execute if entity @s[tag=hasLineOfSight0] if score .resultY lookcheck matches $(yRotMin0)..$(yRotMax0) run title @s actionbar [{"text":" [ Y | dist: "},{"score":{"name":".currDistance","objective":"lookcheck"}},{"text":" | rotMin: $(yRotMin0) | rotMax: $(yRotMax0) ] "}]
# $execute if entity @s[tag=hasLineOfSight1] if score .resultY lookcheck matches $(yRotMin1)..$(yRotMax1) run title @s actionbar [{"text":" [ Y | dist: "},{"score":{"name":".currDistance","objective":"lookcheck"}},{"text":" | rotMin: $(yRotMin1) | rotMax: $(yRotMax1) ] "}]
# $execute if entity @s[tag=hasLineOfSight2] if score .resultY lookcheck matches $(yRotMin2)..$(yRotMax2) run title @s actionbar [{"text":" [ Y | dist: "},{"score":{"name":".currDistance","objective":"lookcheck"}},{"text":" | rotMin: $(yRotMin2) | rotMax: $(yRotMax2) ] "}]
# $execute if entity @s[tag=hasLineOfSight3] if score .resultY lookcheck matches $(yRotMin3)..$(yRotMax3) run title @s actionbar [{"text":" [ Y | dist: "},{"score":{"name":".currDistance","objective":"lookcheck"}},{"text":" | rotMin: $(yRotMin3) | rotMax: $(yRotMax3) ] "}]
# $execute if entity @s[tag=hasLineOfSight4] if score .resultY lookcheck matches $(yRotMin4)..$(yRotMax4) run title @s actionbar [{"text":" [ Y | dist: "},{"score":{"name":".currDistance","objective":"lookcheck"}},{"text":" | rotMin: $(yRotMin4) | rotMax: $(yRotMax4) ] "}]

# #entity being detected by X axis - first check
# $execute if entity @s[tag=hasLineOfSight0] if score .resultY lookcheck matches $(xRotMin0_0)..$(xRotMax0_0) run title @s actionbar [{"text":" [ X0 | dist: "},{"score":{"name":".currDistance","objective":"lookcheck"}},{"text":" | rotMin: $(xRotMin0_0) | rotMax: $(xRotMax0_0) ] "}]
# $execute if entity @s[tag=hasLineOfSight1] if score .resultY lookcheck matches $(xRotMin1_0)..$(xRotMax1_0) run title @s actionbar [{"text":" [ X0 | dist: "},{"score":{"name":".currDistance","objective":"lookcheck"}},{"text":" | rotMin: $(xRotMin1_0) | rotMax: $(xRotMax1_0) ] "}]
# $execute if entity @s[tag=hasLineOfSight2] if score .resultY lookcheck matches $(xRotMin2_0)..$(xRotMax2_0) run title @s actionbar [{"text":" [ X0 | dist: "},{"score":{"name":".currDistance","objective":"lookcheck"}},{"text":" | rotMin: $(xRotMin2_0) | rotMax: $(xRotMax2_0) ] "}]
# $execute if entity @s[tag=hasLineOfSight3] if score .resultY lookcheck matches $(xRotMin3_0)..$(xRotMax3_0) run title @s actionbar [{"text":" [ X0 | dist: "},{"score":{"name":".currDistance","objective":"lookcheck"}},{"text":" | rotMin: $(xRotMin3_0) | rotMax: $(xRotMax3_0) ] "}]
# $execute if entity @s[tag=hasLineOfSight4] if score .resultY lookcheck matches $(xRotMin4_0)..$(xRotMax4_0) run title @s actionbar [{"text":" [ X0 | dist: "},{"score":{"name":".currDistance","objective":"lookcheck"}},{"text":" | rotMin: $(xRotMin4_0) | rotMax: $(xRotMax4_0) ] "}]

# #entity being detected by X axis - second check
# $execute if entity @s[tag=hasLineOfSight0] if score .resultY lookcheck matches $(xRotMin0_1)..$(xRotMax0_1) run title @s actionbar [{"text":" [ X1 | dist: "},{"score":{"name":".currDistance","objective":"lookcheck"}},{"text":" | rotMin: $(xRotMin0_1) | rotMax: $(xRotMax0_1) ] "}]
# $execute if entity @s[tag=hasLineOfSight1] if score .resultY lookcheck matches $(xRotMin1_1)..$(xRotMax1_1) run title @s actionbar [{"text":" [ X1 | dist: "},{"score":{"name":".currDistance","objective":"lookcheck"}},{"text":" | rotMin: $(xRotMin1_1) | rotMax: $(xRotMax1_1) ] "}]
# $execute if entity @s[tag=hasLineOfSight2] if score .resultY lookcheck matches $(xRotMin2_1)..$(xRotMax2_1) run title @s actionbar [{"text":" [ X1 | dist: "},{"score":{"name":".currDistance","objective":"lookcheck"}},{"text":" | rotMin: $(xRotMin2_1) | rotMax: $(xRotMax2_1) ] "}]
# $execute if entity @s[tag=hasLineOfSight3] if score .resultY lookcheck matches $(xRotMin3_1)..$(xRotMax3_1) run title @s actionbar [{"text":" [ X1 | dist: "},{"score":{"name":".currDistance","objective":"lookcheck"}},{"text":" | rotMin: $(xRotMin3_1) | rotMax: $(xRotMax3_1) ] "}]
# $execute if entity @s[tag=hasLineOfSight4] if score .resultY lookcheck matches $(xRotMin4_1)..$(xRotMax4_1) run title @s actionbar [{"text":" [ X1 | dist: "},{"score":{"name":".currDistance","objective":"lookcheck"}},{"text":" | rotMin: $(xRotMin4_1) | rotMax: $(xRotMax4_1) ] "}]

