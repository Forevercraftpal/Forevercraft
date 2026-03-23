# ============================================================
# Remove Village Exile
# Clears exile status and storage data
# Run as the player
# ============================================================

# Clear exile flag
scoreboard players set @s vs.exile 0

# Remove exile data from storage
execute store result storage eden:temp vs.vid int 1 run scoreboard players get @s ec.current_village
execute store result storage eden:temp vs.uuid int 1 run data get entity @s UUID[0]
function evercraft:village/exile/remove_lockout_macro with storage eden:temp vs

# Notify player
tellraw @s ["",{text:"[Forevercraft] ",color:"gold"},{text:"Your exile has ended. You may once again interact with this village.",color:"green"}]
playsound minecraft:entity.villager.celebrate player @s ~ ~ ~ 1 1
particle minecraft:happy_villager ~ ~1 ~ 1 1 1 0.1 15

# Clean up temp
data remove storage eden:temp vs.exile_data
