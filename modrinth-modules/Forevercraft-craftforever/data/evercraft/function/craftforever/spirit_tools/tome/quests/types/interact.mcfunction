# Artisan Tome — Interact check (Type 3)
# Per-quest condition checks — quest part IS the subtype

# Q26: Pumpkin Patch — harvest a pumpkin (be near pumpkin stem)
execute if score @s ec.tq_sub matches 26 run function evercraft:craftforever/spirit_tools/tome/quests/types/interact/q26_pumpkin

# Q28: Cave Explorer — be below Y=0
execute if score @s ec.tq_sub matches 28 at @s if predicate evercraft:spirit_tools/below_y0 run scoreboard players set @s ec.tq_progress 1
execute if score @s ec.tq_sub matches 28 if score @s ec.tq_progress >= @s ec.tq_target run function evercraft:craftforever/spirit_tools/tome/complete

# Q29: Desert Digger — dig sand in a desert biome
execute if score @s ec.tq_sub matches 29 run function evercraft:craftforever/spirit_tools/tome/quests/types/interact/q29_desert

# Q30: Stonecutter's Art — stand near a stonecutter
execute if score @s ec.tq_sub matches 30 at @s if block ~ ~-1 ~ minecraft:stonecutter run scoreboard players set @s ec.tq_progress 1
execute if score @s ec.tq_sub matches 30 at @s if block ~ ~ ~ minecraft:stonecutter run scoreboard players set @s ec.tq_progress 1
execute if score @s ec.tq_sub matches 30 if score @s ec.tq_progress >= @s ec.tq_target run function evercraft:craftforever/spirit_tools/tome/complete

# Q31: Night Harvest — harvest crops at night (time 13000-23000)
execute if score @s ec.tq_sub matches 31 run function evercraft:craftforever/spirit_tools/tome/quests/types/interact/q31_night_harvest

# Q32: Mountain Miner — mine ore above Y=100
execute if score @s ec.tq_sub matches 32 run function evercraft:craftforever/spirit_tools/tome/quests/types/interact/q32_mountain_mine

# Q33: Fishing at Dawn — catch fish at dawn (time 23000+ or 0-1000)
execute if score @s ec.tq_sub matches 33 run function evercraft:craftforever/spirit_tools/tome/quests/types/interact/q33_dawn_fish

# Q41: Mushroom Explorer — be in mushroom biome
execute if score @s ec.tq_sub matches 41 at @s if biome ~ ~ ~ minecraft:mushroom_fields run scoreboard players set @s ec.tq_progress 1
execute if score @s ec.tq_sub matches 41 if score @s ec.tq_progress >= @s ec.tq_target run function evercraft:craftforever/spirit_tools/tome/complete

# Q42: Nether Miner — mine blocks in the Nether
execute if score @s ec.tq_sub matches 42 run function evercraft:craftforever/spirit_tools/tome/quests/types/interact/q42_nether_mine

# Q46: Ocean Fisher — fish while standing in water
execute if score @s ec.tq_sub matches 46 run function evercraft:craftforever/spirit_tools/tome/quests/types/interact/q46_ocean_fish

# Q52: End Stone — be in the End
execute if score @s ec.tq_sub matches 52 in minecraft:the_end run scoreboard players set @s ec.tq_progress 1
execute if score @s ec.tq_sub matches 52 if score @s ec.tq_progress >= @s ec.tq_target run function evercraft:craftforever/spirit_tools/tome/complete

# Q60: Snow Digger — dig in a snowy biome
execute if score @s ec.tq_sub matches 60 run function evercraft:craftforever/spirit_tools/tome/quests/types/interact/q60_snow_dig

# Q65: Obsidian Farmer — mine obsidian
execute if score @s ec.tq_sub matches 65 run function evercraft:craftforever/spirit_tools/tome/quests/types/interact/q65_obsidian

# Q66: Composter — stand near a composter
execute if score @s ec.tq_sub matches 66 at @s if block ~ ~-1 ~ minecraft:composter run scoreboard players set @s ec.tq_progress 1
execute if score @s ec.tq_sub matches 66 at @s if block ~ ~ ~ minecraft:composter run scoreboard players set @s ec.tq_progress 1
execute if score @s ec.tq_sub matches 66 if score @s ec.tq_progress >= @s ec.tq_target run function evercraft:craftforever/spirit_tools/tome/complete

# Q69: Mountain Logger — chop logs above Y=100
execute if score @s ec.tq_sub matches 69 run function evercraft:craftforever/spirit_tools/tome/quests/types/interact/q69_mountain_log
