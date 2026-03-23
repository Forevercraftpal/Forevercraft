# Wither - Item Use Handler (Soul Horn)
# Called by advancement when player uses the Soul Horn item

# Revoke the advancement so it can trigger again
advancement revoke @s only evercraft:artifacts/sets/wither_item_use

# Only execute if player has 4pc bonus
execute if entity @s[tag=wither_4pc] run function evercraft:artifacts/sets/wither/soul_harvest

# If player doesn't have 4pc, notify them
execute unless entity @s[tag=wither_4pc] run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"You need the full Wither set (4pc) to use Soul Harvest!",color:"red"}]
