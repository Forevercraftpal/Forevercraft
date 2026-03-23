# Patron Bounty — Roll and accept a random bounty
# Called from trigger handler (ec.quest set 10)

# Roll tier: T3 (40%), T4 (30%), T5 (20%), T6 (10%)
execute store result score #bnt_roll ec.var run random value 1..100
scoreboard players set #bnt_quest_tier ec.var 3
execute if score #bnt_roll ec.var matches 41..70 run scoreboard players set #bnt_quest_tier ec.var 4
execute if score #bnt_roll ec.var matches 71..90 run scoreboard players set #bnt_quest_tier ec.var 5
execute if score #bnt_roll ec.var matches 91..100 run scoreboard players set #bnt_quest_tier ec.var 6

# Roll biome from Overworld surface biomes (0-14)
execute store result score #bnt_biome ec.var run random value 0..14

# Map quest tier to patron tier:
# T3 (Contract) = Uncommon patron (tier 2)
# T4 (Commission) = Rare patron (tier 3)
# T5 (Expedition) = Ornate patron (tier 4)
# T6 (Heroic) = Exquisite patron (tier 5)
scoreboard players set #bnt_patron_tier ec.var 2
execute if score #bnt_quest_tier ec.var matches 4 run scoreboard players set #bnt_patron_tier ec.var 3
execute if score #bnt_quest_tier ec.var matches 5 run scoreboard players set #bnt_patron_tier ec.var 4
execute if score #bnt_quest_tier ec.var matches 6 run scoreboard players set #bnt_patron_tier ec.var 5

# Store numeric values for accept macro
execute store result storage evercraft:bounty tier int 1 run scoreboard players get #bnt_patron_tier ec.var
execute store result storage evercraft:bounty biome int 1 run scoreboard players get #bnt_biome ec.var
execute store result storage evercraft:bounty time_limit int 1 run scoreboard players get #bnt_time ec.var

# Time limit: T3/T4 = 7200s (2h), T5/T6 = 3600s (1h)
scoreboard players set #bnt_time ec.var 7200
execute if score #bnt_quest_tier ec.var matches 5..6 run scoreboard players set #bnt_time ec.var 3600
execute store result storage evercraft:bounty time_limit int 1 run scoreboard players get #bnt_time ec.var

# Map biome ID to display name and Minecraft biome ID for locate
execute if score #bnt_biome ec.var matches 0 run data modify storage evercraft:bounty biome_name set value "Plains"
execute if score #bnt_biome ec.var matches 0 run data modify storage evercraft:bounty biome_id set value "minecraft:plains"
execute if score #bnt_biome ec.var matches 1 run data modify storage evercraft:bounty biome_name set value "Forest"
execute if score #bnt_biome ec.var matches 1 run data modify storage evercraft:bounty biome_id set value "minecraft:forest"
execute if score #bnt_biome ec.var matches 2 run data modify storage evercraft:bounty biome_name set value "Flower Forest"
execute if score #bnt_biome ec.var matches 2 run data modify storage evercraft:bounty biome_id set value "minecraft:flower_forest"
execute if score #bnt_biome ec.var matches 3 run data modify storage evercraft:bounty biome_name set value "Dark Forest"
execute if score #bnt_biome ec.var matches 3 run data modify storage evercraft:bounty biome_id set value "minecraft:dark_forest"
execute if score #bnt_biome ec.var matches 4 run data modify storage evercraft:bounty biome_name set value "Taiga"
execute if score #bnt_biome ec.var matches 4 run data modify storage evercraft:bounty biome_id set value "minecraft:taiga"
execute if score #bnt_biome ec.var matches 5 run data modify storage evercraft:bounty biome_name set value "Mountains"
execute if score #bnt_biome ec.var matches 5 run data modify storage evercraft:bounty biome_id set value "minecraft:windswept_hills"
execute if score #bnt_biome ec.var matches 6 run data modify storage evercraft:bounty biome_name set value "Jungle"
execute if score #bnt_biome ec.var matches 6 run data modify storage evercraft:bounty biome_id set value "minecraft:jungle"
execute if score #bnt_biome ec.var matches 7 run data modify storage evercraft:bounty biome_name set value "Desert"
execute if score #bnt_biome ec.var matches 7 run data modify storage evercraft:bounty biome_id set value "minecraft:desert"
execute if score #bnt_biome ec.var matches 8 run data modify storage evercraft:bounty biome_name set value "Savanna"
execute if score #bnt_biome ec.var matches 8 run data modify storage evercraft:bounty biome_id set value "minecraft:savanna"
execute if score #bnt_biome ec.var matches 9 run data modify storage evercraft:bounty biome_name set value "Ocean"
execute if score #bnt_biome ec.var matches 9 run data modify storage evercraft:bounty biome_id set value "minecraft:ocean"
execute if score #bnt_biome ec.var matches 10 run data modify storage evercraft:bounty biome_name set value "River"
execute if score #bnt_biome ec.var matches 10 run data modify storage evercraft:bounty biome_id set value "minecraft:river"
execute if score #bnt_biome ec.var matches 11 run data modify storage evercraft:bounty biome_name set value "Swamp"
execute if score #bnt_biome ec.var matches 11 run data modify storage evercraft:bounty biome_id set value "minecraft:swamp"
execute if score #bnt_biome ec.var matches 12 run data modify storage evercraft:bounty biome_name set value "Mushroom Fields"
execute if score #bnt_biome ec.var matches 12 run data modify storage evercraft:bounty biome_id set value "minecraft:mushroom_fields"
execute if score #bnt_biome ec.var matches 13 run data modify storage evercraft:bounty biome_name set value "Ice Spikes"
execute if score #bnt_biome ec.var matches 13 run data modify storage evercraft:bounty biome_id set value "minecraft:ice_spikes"
execute if score #bnt_biome ec.var matches 14 run data modify storage evercraft:bounty biome_name set value "Badlands"
execute if score #bnt_biome ec.var matches 14 run data modify storage evercraft:bounty biome_id set value "minecraft:badlands"

# Accept the bounty (macro reads tier, biome, time_limit, biome_name from storage)
function evercraft:bounty/accept with storage evercraft:bounty
