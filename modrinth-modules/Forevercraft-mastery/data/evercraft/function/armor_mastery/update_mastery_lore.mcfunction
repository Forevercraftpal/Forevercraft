# Update mastery progress lore line on hopper minecart item (am_temp)
# Macro args: $(level), $(xp), $(cost), $(max_level), $(prestige)
# Rebuilds the entire dynamic lore section (blank separator -> patina -> mastery)

# Copy lore array to storage for manipulation
data modify storage evercraft:armor_mastery temp_lore set from entity @e[type=hopper_minecart,tag=am_temp,limit=1] Items[0].components."minecraft:lore"

# Strip all dynamic entries from the end (mastery lines, patina lines, stale duplicates)
# Stop when we hit the blank separator "" (data get returns 0 for empty strings, >0 for compounds/arrays)
execute store result score #am_lore_check ec.var run data get storage evercraft:armor_mastery temp_lore[-1]
execute if score #am_lore_check ec.var matches 1.. run data remove storage evercraft:armor_mastery temp_lore[-1]
execute if score #am_lore_check ec.var matches 1.. store result score #am_lore_check ec.var run data get storage evercraft:armor_mastery temp_lore[-1]
execute if score #am_lore_check ec.var matches 1.. run data remove storage evercraft:armor_mastery temp_lore[-1]
execute if score #am_lore_check ec.var matches 1.. store result score #am_lore_check ec.var run data get storage evercraft:armor_mastery temp_lore[-1]
execute if score #am_lore_check ec.var matches 1.. run data remove storage evercraft:armor_mastery temp_lore[-1]
execute if score #am_lore_check ec.var matches 1.. store result score #am_lore_check ec.var run data get storage evercraft:armor_mastery temp_lore[-1]
execute if score #am_lore_check ec.var matches 1.. run data remove storage evercraft:armor_mastery temp_lore[-1]
execute if score #am_lore_check ec.var matches 1.. store result score #am_lore_check ec.var run data get storage evercraft:armor_mastery temp_lore[-1]
execute if score #am_lore_check ec.var matches 1.. run data remove storage evercraft:armor_mastery temp_lore[-1]
execute if score #am_lore_check ec.var matches 1.. store result score #am_lore_check ec.var run data get storage evercraft:armor_mastery temp_lore[-1]
execute if score #am_lore_check ec.var matches 1.. run data remove storage evercraft:armor_mastery temp_lore[-1]
execute if score #am_lore_check ec.var matches 1.. store result score #am_lore_check ec.var run data get storage evercraft:armor_mastery temp_lore[-1]
execute if score #am_lore_check ec.var matches 1.. run data remove storage evercraft:armor_mastery temp_lore[-1]
execute if score #am_lore_check ec.var matches 1.. store result score #am_lore_check ec.var run data get storage evercraft:armor_mastery temp_lore[-1]
execute if score #am_lore_check ec.var matches 1.. run data remove storage evercraft:armor_mastery temp_lore[-1]

# Re-add patina line if applicable (rebuild from custom_data.patina stage)
execute store result score #am_pat_stage ec.var run data get entity @e[type=hopper_minecart,tag=am_temp,limit=1] Items[0].components."minecraft:custom_data".patina
execute if score #am_pat_stage ec.var matches 1 run data modify storage evercraft:armor_mastery temp_lore append value {text:"Worn by adventure.",color:"gray",italic:true}
execute if score #am_pat_stage ec.var matches 2 run data modify storage evercraft:armor_mastery temp_lore append value {text:"Seasoned by countless battles.",color:"#C0A060",italic:true}
execute if score #am_pat_stage ec.var matches 3 run data modify storage evercraft:armor_mastery temp_lore append value {text:"This artifact carries stories untold.",color:"#D4A574",italic:true}
execute if score #am_pat_stage ec.var matches 4 run data modify storage evercraft:armor_mastery temp_lore append value {text:"A legend in its own right.",color:"gold",italic:true,bold:true}

# Build the new mastery lore line
# Default: normal progress
$data modify storage evercraft:armor_mastery temp_lore append value {text:"\u25c6 Mastery: Lv.$(level) ($(xp)/$(cost) XP)",color:"yellow",italic:false}

# Overwrite with prestige variant if prestige > 0
execute if score #am_prestige ec.var matches 1.. run data remove storage evercraft:armor_mastery temp_lore[-1]
$execute if score #am_prestige ec.var matches 1.. run data modify storage evercraft:armor_mastery temp_lore append value [{text:"\u25c6 Mastery: Lv.$(level) ",color:"yellow",italic:false},{text:"($(xp)/$(cost) XP) ",color:"yellow",italic:false},{text:"\u2726P$(prestige)",color:"light_purple",italic:false}]

# Overwrite with max level variant
execute if score #am_level ec.var >= #am_max_level ec.var run data remove storage evercraft:armor_mastery temp_lore[-1]
execute if score #am_level ec.var >= #am_max_level ec.var run data modify storage evercraft:armor_mastery temp_lore append value {text:"\u25c6 Mastery: MAX LEVEL",color:"green",italic:false}

# Max level + prestige
execute if score #am_level ec.var >= #am_max_level ec.var if score #am_prestige ec.var matches 1.. run data remove storage evercraft:armor_mastery temp_lore[-1]
$execute if score #am_level ec.var >= #am_max_level ec.var if score #am_prestige ec.var matches 1.. run data modify storage evercraft:armor_mastery temp_lore append value [{text:"\u25c6 Mastery: MAX LEVEL ",color:"green",italic:false},{text:"\u2726P$(prestige)",color:"light_purple",italic:false}]

# Write the entire lore array back to the item on the hopper minecart
data modify entity @e[type=hopper_minecart,tag=am_temp,limit=1] Items[0].components."minecraft:lore" set from storage evercraft:armor_mastery temp_lore
