execute unless score @s shader.green.prev = @s shader.green run function shader_control:effects/green/helper with storage cb:shader
execute unless score @s shader.blue.prev = @s shader.blue run function shader_control:effects/blue/helper with storage cb:shader
execute unless score @s shader.gray.prev = @s shader.gray run function shader_control:effects/gray/helper with storage cb:shader
execute unless score @s shader.screenshake.prev = @s shader.screenshake run function shader_control:effects/screenshake/helper with storage cb:shader
execute unless score @s shader.blur.prev = @s shader.blur run function shader_control:effects/blur/helper with storage cb:shader
execute unless score @s shader.trail.prev = @s shader.trail run function shader_control:effects/trail/helper with storage cb:shader
execute unless score @s shader.brightness.prev = @s shader.brightness run function shader_control:effects/brightness/helper with storage cb:shader
execute unless score @s shader.saturation.prev = @s shader.saturation run function shader_control:effects/saturation/helper with storage cb:shader
execute unless score @s shader.gasmask.prev = @s shader.gasmask run function shader_control:effects/gasmask/helper with storage cb:shader
execute unless score @s shader.goggles.prev = @s shader.goggles run function shader_control:effects/goggles/helper with storage cb:shader
execute unless score @s shader.zoom.prev = @s shader.zoom run function shader_control:effects/zoom/helper with storage cb:shader
execute unless score @s shader.yellow.prev = @s shader.yellow run function shader_control:effects/yellow/helper with storage cb:shader


scoreboard players operation @s shader.green.prev = @s shader.green
scoreboard players operation @s shader.blue.prev = @s shader.blue
scoreboard players operation @s shader.gray.prev = @s shader.gray
scoreboard players operation @s shader.screenshake.prev = @s shader.screenshake
scoreboard players operation @s shader.blur.prev = @s shader.blur

scoreboard players operation @s shader.trail.prev = @s shader.trail
scoreboard players operation @s shader.brightness.prev = @s shader.brightness
scoreboard players operation @s shader.saturation.prev = @s shader.saturation
scoreboard players operation @s shader.gasmask.prev = @s shader.gasmask
scoreboard players operation @s shader.goggles.prev = @s shader.goggles
scoreboard players operation @s shader.zoom.prev = @s shader.zoom
scoreboard players operation @s shader.yellow.prev = @s shader.yellow