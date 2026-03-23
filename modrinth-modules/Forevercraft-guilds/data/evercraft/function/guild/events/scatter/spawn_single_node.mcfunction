# Guild Event — Node Scatter: Initialize a single node marker
# @s = freshly summoned marker (via execute summon)
# Assigns loot type, life timer, and tags. Position set by spreadplayers after.

# Tag as guild node
tag @s add ec.guild_node
tag @s add ec.guild_node_new

# Set life to 30 seconds (decremented 1/s in scatter tick)
scoreboard players set @s ec.ge_node_life 30

# Roll loot type (1-100) and store on the marker
# 1-30: XP bottles, 31-50: Growth Potion, 51-65: Forever Coins,
# 66-78: Crate, 79-90: Awakening Stone, 91-100: Tree Token
execute store result score @s ec.temp run random value 1..100
data modify entity @s data.node_type set value "bottles_xp"
execute if score @s ec.temp matches 31..50 run data modify entity @s data.node_type set value "growth_potion"
execute if score @s ec.temp matches 51..65 run data modify entity @s data.node_type set value "forever_coins"
execute if score @s ec.temp matches 66..78 run data modify entity @s data.node_type set value "crate"
execute if score @s ec.temp matches 79..90 run data modify entity @s data.node_type set value "awakening_stone"
execute if score @s ec.temp matches 91..100 run data modify entity @s data.node_type set value "tree_token"
