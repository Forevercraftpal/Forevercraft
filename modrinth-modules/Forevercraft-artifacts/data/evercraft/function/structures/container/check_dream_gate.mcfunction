# Check if player's Dream Rate (Luck) meets the minimum for structure loot
# All structures are now dream gated! Gates scale with structure base tier.
# If gated, mark_looted NEVER runs, so the chest stays fresh for retry.
# Mark as placed to prevent double-calls
scoreboard players set #cf_placed cf.temp 1

# Get player's luck attribute (multiplied by 10 for decimal precision)
execute store result score @s cf.luck run attribute @s luck get 10

# Set gate thresholds (x10 for precision)
# Shipwreck = 1.0 DR, Village = 3.0 DR, T1 = 5.0 DR, T2 = 7.5 DR, T3 = 10.0 DR, T4 = 14.0 DR, Ancient/End = 17.5 DR
scoreboard players set #gate_shipwreck cf.temp 10
scoreboard players set #gate_village cf.temp 30
scoreboard players set #gate_t1 cf.temp 50
scoreboard players set #gate_t2 cf.temp 75
scoreboard players set #gate_t3 cf.temp 100
scoreboard players set #gate_t4 cf.temp 140
scoreboard players set #gate_ancient cf.temp 175

# Default: locked
scoreboard players set #dream_unlocked cf.temp 0

# ===== ANCIENT CITY (1) & END CITY (2): 17.5 Dream Rate =====
execute if score @s cf.struct_id matches 1 if score @s cf.luck >= #gate_ancient cf.temp run scoreboard players set #dream_unlocked cf.temp 1
execute if score @s cf.struct_id matches 2 if score @s cf.luck >= #gate_ancient cf.temp run scoreboard players set #dream_unlocked cf.temp 1

# ===== T4 BASE STRUCTURES: Bastion (6), Stronghold (4), Mansion (5): 14 Dream Rate =====
execute if score @s cf.struct_id matches 4..6 if score @s cf.luck >= #gate_t4 cf.temp run scoreboard players set #dream_unlocked cf.temp 1

# ===== T3 BASE STRUCTURES: Trial (3), Fortress (7), Monument (8): 10 Dream Rate =====
execute if score @s cf.struct_id matches 3 if score @s cf.luck >= #gate_t3 cf.temp run scoreboard players set #dream_unlocked cf.temp 1
execute if score @s cf.struct_id matches 7..8 if score @s cf.luck >= #gate_t3 cf.temp run scoreboard players set #dream_unlocked cf.temp 1

# ===== T2 BASE STRUCTURES: Desert (9), Jungle (10), Mineshaft (17), Dungeon (19): 7.5 Dream Rate =====
execute if score @s cf.struct_id matches 9..10 if score @s cf.luck >= #gate_t2 cf.temp run scoreboard players set #dream_unlocked cf.temp 1
execute if score @s cf.struct_id matches 17 if score @s cf.luck >= #gate_t2 cf.temp run scoreboard players set #dream_unlocked cf.temp 1
execute if score @s cf.struct_id matches 19 if score @s cf.luck >= #gate_t2 cf.temp run scoreboard players set #dream_unlocked cf.temp 1

# ===== SHIPWRECK (11): 1 Dream Rate =====
execute if score @s cf.struct_id matches 11 if score @s cf.luck >= #gate_shipwreck cf.temp run scoreboard players set #dream_unlocked cf.temp 1

# ===== VILLAGE (16): 3 Dream Rate =====
execute if score @s cf.struct_id matches 16 if score @s cf.luck >= #gate_village cf.temp run scoreboard players set #dream_unlocked cf.temp 1

# ===== T1 BASE STRUCTURES: Ocean Ruins (12)-Trail Ruins (15), Ruined Portal (18): 5 Dream Rate =====
execute if score @s cf.struct_id matches 12..15 if score @s cf.luck >= #gate_t1 cf.temp run scoreboard players set #dream_unlocked cf.temp 1
execute if score @s cf.struct_id matches 18 if score @s cf.luck >= #gate_t1 cf.temp run scoreboard players set #dream_unlocked cf.temp 1

# ===== UNKNOWN STRUCTURES (20): Flat 10 Dream Rate gate =====
execute if score @s cf.struct_id matches 20 if score @s cf.luck >= #gate_t3 cf.temp run scoreboard players set #dream_unlocked cf.temp 1

# ===== VAULT STRUCTURES (21=Normal Vault, 22=Ominous Vault): Gate by base tier =====
# Normal Vault base T2 = 7.5 DR, Ominous Vault base T3 = 10 DR
execute if score @s cf.struct_id matches 21 if score @s cf.luck >= #gate_t2 cf.temp run scoreboard players set #dream_unlocked cf.temp 1
execute if score @s cf.struct_id matches 22 if score @s cf.luck >= #gate_t3 cf.temp run scoreboard players set #dream_unlocked cf.temp 1

# If unlocked, proceed to spawn loot
execute if score #dream_unlocked cf.temp matches 1 run function evercraft:structures/container/spawn_loot_here

# ===== DENIAL MESSAGES =====
# Ancient City & End City
execute if score #dream_unlocked cf.temp matches 0 if score @s cf.struct_id matches 1 run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"The ancient darkness resists your intrusion... ",color:"dark_aqua",italic:true},{text:"(Need 17.5 Dream Rate)",color:"red"}]
execute if score #dream_unlocked cf.temp matches 0 if score @s cf.struct_id matches 2 run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"The void's treasures remain sealed... ",color:"light_purple",italic:true},{text:"(Need 17.5 Dream Rate)",color:"red"}]

# T4 structures
execute if score #dream_unlocked cf.temp matches 0 if score @s cf.struct_id matches 4 run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"The stronghold's secrets elude you... ",color:"dark_purple",italic:true},{text:"(Need 14 Dream Rate)",color:"red"}]
execute if score #dream_unlocked cf.temp matches 0 if score @s cf.struct_id matches 5 run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"The mansion's treasures remain hidden... ",color:"dark_purple",italic:true},{text:"(Need 14 Dream Rate)",color:"red"}]
execute if score #dream_unlocked cf.temp matches 0 if score @s cf.struct_id matches 6 run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"The piglins' hoard rejects your claim... ",color:"gold",italic:true},{text:"(Need 14 Dream Rate)",color:"red"}]

# T3 structures
execute if score #dream_unlocked cf.temp matches 0 if score @s cf.struct_id matches 3 run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"The trial's rewards remain locked... ",color:"aqua",italic:true},{text:"(Need 10 Dream Rate)",color:"red"}]
execute if score #dream_unlocked cf.temp matches 0 if score @s cf.struct_id matches 7 run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"The fortress treasures resist you... ",color:"aqua",italic:true},{text:"(Need 10 Dream Rate)",color:"red"}]
execute if score #dream_unlocked cf.temp matches 0 if score @s cf.struct_id matches 8 run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"The monument's riches are beyond reach... ",color:"aqua",italic:true},{text:"(Need 10 Dream Rate)",color:"red"}]

# T2 structures
execute if score #dream_unlocked cf.temp matches 0 if score @s cf.struct_id matches 9 run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"The pyramid's curse holds firm... ",color:"blue",italic:true},{text:"(Need 7.5 Dream Rate)",color:"red"}]
execute if score #dream_unlocked cf.temp matches 0 if score @s cf.struct_id matches 10 run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"The temple's traps guard their secrets... ",color:"blue",italic:true},{text:"(Need 7.5 Dream Rate)",color:"red"}]
execute if score #dream_unlocked cf.temp matches 0 if score @s cf.struct_id matches 17 run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"The mineshaft's depths deny you... ",color:"blue",italic:true},{text:"(Need 7.5 Dream Rate)",color:"red"}]
execute if score #dream_unlocked cf.temp matches 0 if score @s cf.struct_id matches 19 run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"The dungeon's hoard resists you... ",color:"blue",italic:true},{text:"(Need 7.5 Dream Rate)",color:"red"}]

# Shipwreck
execute if score #dream_unlocked cf.temp matches 0 if score @s cf.struct_id matches 11 run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"The shipwreck's treasures elude you... ",color:"white",italic:true},{text:"(Need 1 Dream Rate)",color:"red"}]

# Village
execute if score #dream_unlocked cf.temp matches 0 if score @s cf.struct_id matches 16 run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"The village's hidden bounty resists you... ",color:"white",italic:true},{text:"(Need 3 Dream Rate)",color:"red"}]

# T1 structures (Ocean Ruins, Igloo, Trail Ruins, Ruined Portal)
execute if score #dream_unlocked cf.temp matches 0 if score @s cf.struct_id matches 12..15 run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Your dreams are not yet vivid enough... ",color:"white",italic:true},{text:"(Need 5 Dream Rate)",color:"red"}]
execute if score #dream_unlocked cf.temp matches 0 if score @s cf.struct_id matches 18 run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Your dreams are not yet vivid enough... ",color:"white",italic:true},{text:"(Need 5 Dream Rate)",color:"red"}]

# Unknown structures — flat 10 DR gate
execute if score #dream_unlocked cf.temp matches 0 if score @s cf.struct_id matches 20 run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"This treasure requires deeper dreams... ",color:"aqua",italic:true},{text:"(Need 10 Dream Rate)",color:"red"}]

# Vault denial messages
execute if score #dream_unlocked cf.temp matches 0 if score @s cf.struct_id matches 21 run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"The vault resists your key... ",color:"blue",italic:true},{text:"(Need 7.5 Dream Rate)",color:"red"}]
execute if score #dream_unlocked cf.temp matches 0 if score @s cf.struct_id matches 22 run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"The ominous vault's power overwhelms you... ",color:"aqua",italic:true},{text:"(Need 10 Dream Rate)",color:"red"}]

# Play denial sound if locked
execute if score #dream_unlocked cf.temp matches 0 at @s run playsound minecraft:block.amethyst_block.break master @s ~ ~ ~ 0.5 0.5
