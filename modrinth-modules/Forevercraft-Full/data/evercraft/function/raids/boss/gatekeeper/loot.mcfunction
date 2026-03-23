# Gatekeeper — Loot Drop (called as each participant, at their position)
# Drops: 5% Nite (Dual Swordsman sword), 100% Rift Walker's Band,
#         100% Dimensional Anchor, 100% Shattered Gate Fragment (+1 DR)

# ── 5% Class Artifact: Nite ──
execute store result score @s ec.temp run random value 1..100
execute if score @s ec.temp matches 1..5 run function evercraft:raids/boss/gatekeeper/loot_artifact

# ── 100% Guaranteed Drops ──

# Rift Walker's Band (unique ring — short-range teleport 8 blocks)
give @s minecraft:ender_pearl[minecraft:custom_name={text:"Rift Walker's Band",color:"dark_green",italic:false},minecraft:lore=[{text:"Unique Raid Artifact",color:"gold",italic:false},{text:""},{text:"Teleport to where you are",color:"gray",italic:false},{text:"looking, up to 8 blocks.",color:"gray",italic:false},{text:"15 second cooldown.",color:"dark_gray",italic:false}],minecraft:rarity=epic,minecraft:custom_data={raid_artifact:1,artifact_id:"rift_walkers_band"}] 1

# Dimensional Anchor (unique trinket — immune to forced teleportation)
give @s minecraft:end_crystal[minecraft:custom_name={text:"Dimensional Anchor",color:"dark_green",italic:false},minecraft:lore=[{text:"Unique Raid Artifact",color:"gold",italic:false},{text:""},{text:"You are anchored to this",color:"gray",italic:false},{text:"dimension. Immune to forced",color:"gray",italic:false},{text:"teleportation effects.",color:"gray",italic:false}],minecraft:rarity=epic,minecraft:custom_data={raid_artifact:1,artifact_id:"dimensional_anchor"}] 1

# Shattered Gate Fragment (+1 DR permanently)
give @s minecraft:end_stone[minecraft:custom_name={text:"Shattered Gate Fragment",color:"green",italic:false},minecraft:lore=[{text:"DR Consumable",color:"gold",italic:false},{text:""},{text:"Consume to permanently",color:"gray",italic:false},{text:"increase Dream Rate by 1.",color:"gray",italic:false}],minecraft:rarity=rare,minecraft:consumable={consume_seconds:0},minecraft:custom_data={dr_consumable:1,dr_amount:1,boss_dr_gatekeeper:1b}] 1

# Feedback
playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1.0 1.0
particle minecraft:happy_villager ~ ~1 ~ 0.5 0.5 0.5 0.1 10
