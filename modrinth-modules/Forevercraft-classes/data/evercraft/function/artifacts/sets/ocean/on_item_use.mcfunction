# Ocean - Item Use Handler (Tidal Horn)
# Called by advancement when player uses the Tidal Horn item

# Revoke the advancement so it can trigger again
advancement revoke @s only evercraft:artifacts/sets/ocean_item_use

# Only execute if player has 4pc bonus
execute if entity @s[tag=ocean_4pc] run function evercraft:artifacts/sets/ocean/tidal_wave

# If player doesn't have 4pc, notify them
execute unless entity @s[tag=ocean_4pc] run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"You need the full Ocean set (4pc) to use Tidal Wave!",color:"red"}]
