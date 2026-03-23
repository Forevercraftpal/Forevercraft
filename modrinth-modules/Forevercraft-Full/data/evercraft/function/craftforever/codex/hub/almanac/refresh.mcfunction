# Craftforever Codex — Almanac refresh
# Updates entry text displays based on ec.cf_nodes_found bitfield and current page
# Run as player

# Copy bitfield for checking
scoreboard players operation #cf_bits ec.temp = @s ec.cf_nodes_found

# --- Update progress bar ---
# Count total discovered nodes
scoreboard players set #cf_discovered ec.temp 0
scoreboard players operation #cf_b ec.temp = #cf_bits ec.temp
scoreboard players operation #cf_b ec.temp %= #2 ec.const
execute if score #cf_b ec.temp matches 1 run scoreboard players add #cf_discovered ec.temp 1
scoreboard players operation #cf_b ec.temp = #cf_bits ec.temp
scoreboard players set #cf_d ec.temp 2
scoreboard players operation #cf_b ec.temp /= #cf_d ec.temp
scoreboard players operation #cf_b ec.temp %= #2 ec.const
execute if score #cf_b ec.temp matches 1 run scoreboard players add #cf_discovered ec.temp 1
scoreboard players operation #cf_b ec.temp = #cf_bits ec.temp
scoreboard players set #cf_d ec.temp 4
scoreboard players operation #cf_b ec.temp /= #cf_d ec.temp
scoreboard players operation #cf_b ec.temp %= #2 ec.const
execute if score #cf_b ec.temp matches 1 run scoreboard players add #cf_discovered ec.temp 1
scoreboard players operation #cf_b ec.temp = #cf_bits ec.temp
scoreboard players set #cf_d ec.temp 8
scoreboard players operation #cf_b ec.temp /= #cf_d ec.temp
scoreboard players operation #cf_b ec.temp %= #2 ec.const
execute if score #cf_b ec.temp matches 1 run scoreboard players add #cf_discovered ec.temp 1
scoreboard players operation #cf_b ec.temp = #cf_bits ec.temp
scoreboard players set #cf_d ec.temp 16
scoreboard players operation #cf_b ec.temp /= #cf_d ec.temp
scoreboard players operation #cf_b ec.temp %= #2 ec.const
execute if score #cf_b ec.temp matches 1 run scoreboard players add #cf_discovered ec.temp 1
scoreboard players operation #cf_b ec.temp = #cf_bits ec.temp
scoreboard players set #cf_d ec.temp 32
scoreboard players operation #cf_b ec.temp /= #cf_d ec.temp
scoreboard players operation #cf_b ec.temp %= #2 ec.const
execute if score #cf_b ec.temp matches 1 run scoreboard players add #cf_discovered ec.temp 1
scoreboard players operation #cf_b ec.temp = #cf_bits ec.temp
scoreboard players set #cf_d ec.temp 64
scoreboard players operation #cf_b ec.temp /= #cf_d ec.temp
scoreboard players operation #cf_b ec.temp %= #2 ec.const
execute if score #cf_b ec.temp matches 1 run scoreboard players add #cf_discovered ec.temp 1
scoreboard players operation #cf_b ec.temp = #cf_bits ec.temp
scoreboard players set #cf_d ec.temp 128
scoreboard players operation #cf_b ec.temp /= #cf_d ec.temp
scoreboard players operation #cf_b ec.temp %= #2 ec.const
execute if score #cf_b ec.temp matches 1 run scoreboard players add #cf_discovered ec.temp 1
scoreboard players operation #cf_b ec.temp = #cf_bits ec.temp
scoreboard players set #cf_d ec.temp 256
scoreboard players operation #cf_b ec.temp /= #cf_d ec.temp
scoreboard players operation #cf_b ec.temp %= #2 ec.const
execute if score #cf_b ec.temp matches 1 run scoreboard players add #cf_discovered ec.temp 1
scoreboard players operation #cf_b ec.temp = #cf_bits ec.temp
scoreboard players set #cf_d ec.temp 512
scoreboard players operation #cf_b ec.temp /= #cf_d ec.temp
scoreboard players operation #cf_b ec.temp %= #2 ec.const
execute if score #cf_b ec.temp matches 1 run scoreboard players add #cf_discovered ec.temp 1
scoreboard players operation #cf_b ec.temp = #cf_bits ec.temp
scoreboard players set #cf_d ec.temp 1024
scoreboard players operation #cf_b ec.temp /= #cf_d ec.temp
scoreboard players operation #cf_b ec.temp %= #2 ec.const
execute if score #cf_b ec.temp matches 1 run scoreboard players add #cf_discovered ec.temp 1
scoreboard players operation #cf_b ec.temp = #cf_bits ec.temp
scoreboard players set #cf_d ec.temp 2048
scoreboard players operation #cf_b ec.temp /= #cf_d ec.temp
scoreboard players operation #cf_b ec.temp %= #2 ec.const
execute if score #cf_b ec.temp matches 1 run scoreboard players add #cf_discovered ec.temp 1
scoreboard players operation #cf_b ec.temp = #cf_bits ec.temp
scoreboard players set #cf_d ec.temp 4096
scoreboard players operation #cf_b ec.temp /= #cf_d ec.temp
scoreboard players operation #cf_b ec.temp %= #2 ec.const
execute if score #cf_b ec.temp matches 1 run scoreboard players add #cf_discovered ec.temp 1
scoreboard players operation #cf_b ec.temp = #cf_bits ec.temp
scoreboard players set #cf_d ec.temp 8192
scoreboard players operation #cf_b ec.temp /= #cf_d ec.temp
scoreboard players operation #cf_b ec.temp %= #2 ec.const
execute if score #cf_b ec.temp matches 1 run scoreboard players add #cf_discovered ec.temp 1
scoreboard players operation #cf_b ec.temp = #cf_bits ec.temp
scoreboard players set #cf_d ec.temp 16384
scoreboard players operation #cf_b ec.temp /= #cf_d ec.temp
scoreboard players operation #cf_b ec.temp %= #2 ec.const
execute if score #cf_b ec.temp matches 1 run scoreboard players add #cf_discovered ec.temp 1

# Update progress bar text
execute store result storage evercraft:cf_temp discovered int 1 run scoreboard players get #cf_discovered ec.temp
function evercraft:craftforever/codex/hub/almanac/set_progress with storage evercraft:cf_temp

# --- PAGE 1: Overworld Surface (Frozen, Desert, Deep Dark, Jungle, Ocean) ---
execute if score @s ec.cf_alm_pg matches 1 as @e[type=text_display,tag=CF.AlmEntry1,distance=..5,limit=1] run function evercraft:craftforever/codex/hub/almanac/set_entry {bit:1,name:"Frostcrystal Vein",biome:"Frozen Biomes",yield:"Frostcrystal Shard",color:"#7DD3FC",hint:"Crystalline veins in frozen lands...",rarity:"\u2605",rank:"15"}
execute if score @s ec.cf_alm_pg matches 1 as @e[type=text_display,tag=CF.AlmEntry2,distance=..5,limit=1] run function evercraft:craftforever/codex/hub/almanac/set_entry {bit:2,name:"Sunite Deposit",biome:"Desert",yield:"Sunite Dust",color:"#FCD34D",hint:"Baked by endless sun...",rarity:"\u2605",rank:"15"}
execute if score @s ec.cf_alm_pg matches 1 as @e[type=text_display,tag=CF.AlmEntry3,distance=..5,limit=1] run function evercraft:craftforever/codex/hub/almanac/set_entry {bit:4,name:"Voidite Cluster",biome:"Deep Dark",yield:"Voidite Fragment",color:"#164E63",hint:"Hidden in absolute darkness...",rarity:"\u2742",rank:"40"}
execute if score @s ec.cf_alm_pg matches 1 as @e[type=text_display,tag=CF.AlmEntry4,distance=..5,limit=1] run function evercraft:craftforever/codex/hub/almanac/set_entry {bit:8,name:"Livingstone Node",biome:"Jungle",yield:"Livingstone Moss",color:"#4ADE80",hint:"Where green runs wild...",rarity:"\u25c6",rank:"10"}
execute if score @s ec.cf_alm_pg matches 1 as @e[type=text_display,tag=CF.AlmEntry5,distance=..5,limit=1] run function evercraft:craftforever/codex/hub/almanac/set_entry {bit:16,name:"Tideforged Coral",biome:"Ocean Floor",yield:"Tideforged Pearl",color:"#22D3EE",hint:"Shaped by endless tides...",rarity:"\u2605",rank:"25"}

# --- PAGE 2: Nether, End, Special Biomes ---
execute if score @s ec.cf_alm_pg matches 2 as @e[type=text_display,tag=CF.AlmEntry1,distance=..5,limit=1] run function evercraft:craftforever/codex/hub/almanac/set_entry {bit:32,name:"Blazite Ore",biome:"Crimson Forest",yield:"Blazite Crystal",color:"#EF4444",hint:"Forged in crimson flame...",rarity:"\u2726",rank:"30"}
execute if score @s ec.cf_alm_pg matches 2 as @e[type=text_display,tag=CF.AlmEntry2,distance=..5,limit=1] run function evercraft:craftforever/codex/hub/almanac/set_entry {bit:64,name:"Warpstone Seam",biome:"Warped Forest",yield:"Warpstone Dust",color:"#2DD4BF",hint:"Alien stone hums softly...",rarity:"\u2726",rank:"30"}
execute if score @s ec.cf_alm_pg matches 2 as @e[type=text_display,tag=CF.AlmEntry3,distance=..5,limit=1] run function evercraft:craftforever/codex/hub/almanac/set_entry {bit:128,name:"Endric Formation",biome:"End Islands",yield:"Endric Shard",color:"#A855F7",hint:"Between dimensions it waits...",rarity:"\u2604",rank:"50"}
execute if score @s ec.cf_alm_pg matches 2 as @e[type=text_display,tag=CF.AlmEntry4,distance=..5,limit=1] run function evercraft:craftforever/codex/hub/almanac/set_entry {bit:256,name:"Sporite Growth",biome:"Mushroom Island",yield:"Sporite Cap",color:"#E879F9",hint:"Mycelial energy thrums...",rarity:"\u2726",rank:"25"}
execute if score @s ec.cf_alm_pg matches 2 as @e[type=text_display,tag=CF.AlmEntry5,distance=..5,limit=1] run function evercraft:craftforever/codex/hub/almanac/set_entry {bit:512,name:"Verdant Geode",biome:"Lush Caves",yield:"Verdant Gem",color:"#34D399",hint:"Nurtured by living stone...",rarity:"\u2605",rank:"20"}

# --- PAGE 3: Overworld Exotic ---
execute if score @s ec.cf_alm_pg matches 3 as @e[type=text_display,tag=CF.AlmEntry1,distance=..5,limit=1] run function evercraft:craftforever/codex/hub/almanac/set_entry {bit:1024,name:"Skymetal Vein",biome:"Mountain Peaks",yield:"Skymetal Nugget",color:"#E2E8F0",hint:"Meteoric metal at the summit...",rarity:"\u2742",rank:"35"}
execute if score @s ec.cf_alm_pg matches 3 as @e[type=text_display,tag=CF.AlmEntry2,distance=..5,limit=1] run function evercraft:craftforever/codex/hub/almanac/set_entry {bit:2048,name:"Sunbaked Clay",biome:"Badlands",yield:"Sunforged Brick",color:"#F97316",hint:"Hardened by ancient sun...",rarity:"\u2605",rank:"15"}
execute if score @s ec.cf_alm_pg matches 3 as @e[type=text_display,tag=CF.AlmEntry3,distance=..5,limit=1] run function evercraft:craftforever/codex/hub/almanac/set_entry {bit:4096,name:"Shadowroot",biome:"Dark Forest",yield:"Shadowroot Extract",color:"#581C87",hint:"Roots that shun the light...",rarity:"\u2605",rank:"20"}
execute if score @s ec.cf_alm_pg matches 3 as @e[type=text_display,tag=CF.AlmEntry4,distance=..5,limit=1] run function evercraft:craftforever/codex/hub/almanac/set_entry {bit:8192,name:"Bogite Deposit",biome:"Swamp",yield:"Bogstone",color:"#65A30D",hint:"Dense clay of decay...",rarity:"\u25c6",rank:"10"}
execute if score @s ec.cf_alm_pg matches 3 as @e[type=text_display,tag=CF.AlmEntry5,distance=..5,limit=1] run function evercraft:craftforever/codex/hub/almanac/set_entry {bit:16384,name:"Blossom Crystal",biome:"Cherry Grove",yield:"Blossom Essence",color:"#F9A8D4",hint:"Petals turned to crystal...",rarity:"\u2605",rank:"25"}
