# Aurora Bloom — START (1 day)
# Nature flourishes — plants grow faster, biome-boosted Dream Rate

# Set world event state
scoreboard players set #we_active ec.var 1
scoreboard players set #we_event_id ec.var 4
scoreboard players set #we_timer ec.var 3600
scoreboard players set #we_fx ec.var 0

# Track for achievements
scoreboard players set @a ach.we_aurora 1
execute as @a run scoreboard players operation @s ach.aurora_base = @s adv.stat_harvest

# Triple plant growth rate (default 3 → 9)
gamerule minecraft:random_tick_speed 9

# Apply base Dream Rate modifier (+0.5 global)
execute as @a run attribute @s luck modifier remove ec_we_aurora
execute as @a run attribute @s luck modifier add ec_we_aurora 0.5 add_value

# Apply biome bonus (+3.0 for nature biomes)
execute as @a at @s run attribute @s luck modifier remove ec_we_aurora_biome
execute as @a at @s if biome ~ ~ ~ minecraft:flower_forest run attribute @s luck modifier add ec_we_aurora_biome 3.0 add_value
execute as @a at @s if biome ~ ~ ~ minecraft:lush_caves run attribute @s luck modifier add ec_we_aurora_biome 3.0 add_value
execute as @a at @s if biome ~ ~ ~ minecraft:mushroom_fields run attribute @s luck modifier add ec_we_aurora_biome 3.0 add_value
execute as @a at @s if biome ~ ~ ~ minecraft:cherry_grove run attribute @s luck modifier add ec_we_aurora_biome 3.0 add_value
execute as @a at @s if biome ~ ~ ~ minecraft:meadow run attribute @s luck modifier add ec_we_aurora_biome 3.0 add_value

# Omens + World Events: Bad Omen doubles event DR boost
tag @a[nbt={active_effects:[{id:"minecraft:bad_omen"}]}] add ec.we_omen
execute as @a[tag=ec.we_omen] run attribute @s luck modifier add ec_we_omen_bonus 2.0 add_value
execute as @a[tag=ec.we_omen] run effect clear @s minecraft:bad_omen
execute as @a[tag=ec.we_omen] run tellraw @s [{text:"  ",color:"dark_red"},{text:"Your Bad Omen amplifies the event! ",color:"red"},{text:"(+2.0 bonus DR)",color:"gold"}]
tag @a remove ec.we_omen

# Server-wide announcement
tellraw @a ""
tellraw @a [{text:"  "},{text:"AURORA BLOOM",color:"#55FF55",bold:true}]
tellraw @a ""
tellraw @a [{text:"  "},{text:"An aurora of life blooms across the land!",color:"green",italic:true}]
tellraw @a [{text:"  "},{text:"  + ",color:"#55FF55"},{text:"Plants grow 3x faster",color:"green"}]
tellraw @a [{text:"  "},{text:"  + ",color:"#55FF55"},{text:"Nature biomes: Dream Rate +3.0",color:"green"}]
tellraw @a [{text:"  "},{text:"  + ",color:"#55FF55"},{text:"All biomes: Dream Rate +0.5",color:"green"}]
tellraw @a [{text:"  "},{text:"  Duration: 1 day",color:"gray"}]
tellraw @a ""

# Nature sounds
execute as @a at @s run playsound minecraft:block.azalea.place master @s ~ ~ ~ 1.0 0.8
execute as @a at @s run playsound minecraft:entity.allay.ambient_with_item master @s ~ ~ ~ 0.6 1.2
execute as @a at @s run playsound minecraft:block.flowering_azalea.place master @s ~ ~ ~ 1.0 1.0

# Title
title @a times 10 80 30
title @a title [{text:"Aurora Bloom",color:"#55FF55"}]
title @a subtitle [{text:"Nature flourishes!",color:"green",italic:true}]

# Override tick to 1s for active event
schedule function evercraft:world_events/tick 1s
