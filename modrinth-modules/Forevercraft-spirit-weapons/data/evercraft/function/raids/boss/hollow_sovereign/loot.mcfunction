# Hollow Sovereign — Loot Drop (called as each participant, at their position)
# Drops: 5% Hollow Fangs (Rogue dagger), 100% Sculk Resonance Amulet,
#         100% Sovereign's Shroud, 100% Echo of the Deep (+1 DR)

# ── 5% Class Artifact: Hollow Fangs ──
# Roll random 1-100 (reuse #rd_temp)
execute store result score @s ec.temp run random value 1..100
execute if score @s ec.temp matches 1..5 run function evercraft:raids/boss/hollow_sovereign/loot_artifact

# ── 100% Guaranteed Drops ──

# Sculk Resonance Amulet (unique accessory — vibration danger sense)
give @s minecraft:echo_shard[minecraft:custom_name={text:"Sculk Resonance Amulet",color:"dark_aqua",italic:false},minecraft:lore=[{text:"Unique Raid Artifact",color:"gold",italic:false},{text:""},{text:"Sense vibrations around you,",color:"gray",italic:false},{text:"warning of approaching danger.",color:"gray",italic:false}],minecraft:rarity=epic,minecraft:custom_data={raid_artifact:1,artifact_id:"sculk_resonance_amulet"}] 1

# Sovereign's Shroud (unique cloak — brief invisibility on lethal damage)
give @s minecraft:phantom_membrane[minecraft:custom_name={text:"Sovereign's Shroud",color:"dark_aqua",italic:false},minecraft:lore=[{text:"Unique Raid Artifact",color:"gold",italic:false},{text:""},{text:"When struck with lethal damage,",color:"gray",italic:false},{text:"become invisible for 3 seconds.",color:"gray",italic:false},{text:"60 second cooldown.",color:"dark_gray",italic:false}],minecraft:rarity=epic,minecraft:custom_data={raid_artifact:1,artifact_id:"sovereigns_shroud"}] 1

# Echo of the Deep (+1 DR permanently)
give @s minecraft:sculk_catalyst[minecraft:custom_name={text:"Echo of the Deep",color:"aqua",italic:false},minecraft:lore=[{text:"DR Consumable",color:"gold",italic:false},{text:""},{text:"Consume to permanently",color:"gray",italic:false},{text:"increase Dream Rate by 1.",color:"gray",italic:false}],minecraft:rarity=rare,minecraft:consumable={consume_seconds:0},minecraft:custom_data={dr_consumable:1,dr_amount:1,boss_dr_hollow:1b}] 1

# Feedback
playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1.0 1.0
particle minecraft:happy_villager ~ ~1 ~ 0.5 0.5 0.5 0.1 10
