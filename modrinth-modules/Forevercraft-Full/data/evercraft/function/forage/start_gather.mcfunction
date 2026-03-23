# Foraging Bush: Begin 3-second gathering progress
# Run as the player who clicked, at player position

# If already gathering another bush, ignore
execute if score @s ec.fg_picking matches 1 run return 0

# Require iron axe/hoe or better in inventory
execute unless items entity @s container.* minecraft:iron_axe unless items entity @s container.* minecraft:diamond_axe unless items entity @s container.* minecraft:netherite_axe unless items entity @s container.* minecraft:iron_hoe unless items entity @s container.* minecraft:diamond_hoe unless items entity @s container.* minecraft:netherite_hoe run tellraw @s [{text:"You need an iron axe or hoe (or better) to harvest bushes.",color:"red"}]
execute unless items entity @s container.* minecraft:iron_axe unless items entity @s container.* minecraft:diamond_axe unless items entity @s container.* minecraft:netherite_axe unless items entity @s container.* minecraft:iron_hoe unless items entity @s container.* minecraft:diamond_hoe unless items entity @s container.* minecraft:netherite_hoe run return 0

# Mark player as gathering
scoreboard players set @s ec.fg_picking 1
scoreboard players set @s ec.fg_progress 0

# Store bush position for range checking during gathering
execute store result score @s ec.fg_sx run data get entity @e[type=marker,tag=ec.forage_data,distance=..5,limit=1,sort=nearest] Pos[0] 1
execute store result score @s ec.fg_sy run data get entity @e[type=marker,tag=ec.forage_data,distance=..5,limit=1,sort=nearest] Pos[1] 1
execute store result score @s ec.fg_sz run data get entity @e[type=marker,tag=ec.forage_data,distance=..5,limit=1,sort=nearest] Pos[2] 1

# Show boss bar
bossbar set evercraft:forage_gather value 0
bossbar set evercraft:forage_gather visible true
bossbar set evercraft:forage_gather players @s

# Start sound
playsound minecraft:block.grass.break master @s ~ ~ ~ 0.6 0.8
