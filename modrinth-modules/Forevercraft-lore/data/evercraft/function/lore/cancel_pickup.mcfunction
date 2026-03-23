# Lore Discovery: Cancel active pickup (moved too far)
# Run as player

bossbar set evercraft:lore_pickup visible false
scoreboard players set @s ec.lore_picking 0
scoreboard players set @s ec.lore_progress 0
tellraw @s [{text:"[Lore] ",color:"gold"},{text:"You moved too far away...",color:"gray",italic:true}]
playsound minecraft:block.amethyst_block.break master @s ~ ~ ~ 0.4 0.6
