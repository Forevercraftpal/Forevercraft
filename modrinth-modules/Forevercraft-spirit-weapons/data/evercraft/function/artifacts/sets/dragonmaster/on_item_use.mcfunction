# Dragonmaster - Item Use Handler (Dragon Horn)
# Called by advancement when player uses the Dragon Horn item

# Revoke the advancement so it can trigger again
advancement revoke @s only evercraft:artifacts/sets/dragonmaster_item_use

# Only execute if player has 4pc bonus
execute if entity @s[tag=dragonmaster_4pc] run function evercraft:artifacts/sets/dragonmaster/dragon_summon

# If player doesn't have 4pc, notify them
execute unless entity @s[tag=dragonmaster_4pc] run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"You need the full Dragonmaster set (4pc) to use Dragon Horn!",color:"red"}]
