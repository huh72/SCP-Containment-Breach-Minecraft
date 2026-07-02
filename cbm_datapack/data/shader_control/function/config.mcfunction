scoreboard objectives add shader.green dummy
scoreboard objectives add shader.blue dummy
scoreboard objectives add shader.gray dummy
scoreboard objectives add shader.screenshake dummy
scoreboard objectives add shader.blur dummy
scoreboard objectives add shader.motionblur dummy
scoreboard objectives add shader.trail dummy
scoreboard objectives add shader.brightness dummy
scoreboard objectives add shader.saturation dummy
scoreboard objectives add shader.gasmask dummy
scoreboard objectives add shader.goggles dummy
scoreboard objectives add shader.zoom dummy

scoreboard objectives add shader.green.prev dummy
scoreboard objectives add shader.blue.prev dummy
scoreboard objectives add shader.gray.prev dummy
scoreboard objectives add shader.screenshake.prev dummy
scoreboard objectives add shader.blur.prev dummy
scoreboard objectives add shader.motionblur.prev dummy
scoreboard objectives add shader.trail.prev dummy
scoreboard objectives add shader.brightness.prev dummy
scoreboard objectives add shader.saturation.prev dummy
scoreboard objectives add shader.gasmask.prev dummy
scoreboard objectives add shader.goggles.prev dummy
scoreboard objectives add shader.zoom.prev dummy

execute as @a unless score @s shader.green matches 0.. run scoreboard players set @s shader.green 0
execute as @a unless score @s shader.blue matches 0.. run scoreboard players set @s shader.blue 0
execute as @a unless score @s shader.gray matches 0.. run scoreboard players set @s shader.gray 0
execute as @a unless score @s shader.screenshake matches 0.. run scoreboard players set @s shader.screenshake 0
execute as @a unless score @s shader.blur matches 0.. run scoreboard players set @s shader.blur 0
execute as @a unless score @s shader.motionblur matches 0.. run scoreboard players set @s shader.motionblur 0
execute as @a unless score @s shader.trail matches 0.. run scoreboard players set @s shader.trail 0
execute as @a unless score @s shader.brightness matches 0.. run scoreboard players set @s shader.brightness 0
execute as @a unless score @s shader.saturation matches 0.. run scoreboard players set @s shader.saturation 0
execute as @a unless score @s shader.gasmask matches 0.. run scoreboard players set @s shader.gasmask 0
execute as @a unless score @s shader.goggles matches 0.. run scoreboard players set @s shader.goggles 0
execute as @a unless score @s shader.zoom matches 0.. run scoreboard players set @s shader.zoom 0

#motion blur
scoreboard objectives add shader.playerX dummy
scoreboard objectives add shader.playerY dummy

scoreboard objectives add shader.playerX.prev dummy
scoreboard objectives add shader.playerY.prev dummy