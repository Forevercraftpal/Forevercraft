# Tokens — Sync Balance
# Count Tree Token items (prismarine crystals with tree_token:1b) in player inventory
# Store count to adv.tokens scoreboard for display/GUI purposes

execute store result score @s adv.tokens run clear @s minecraft:prismarine_crystals[minecraft:custom_data~{tree_token:1b}] 0
