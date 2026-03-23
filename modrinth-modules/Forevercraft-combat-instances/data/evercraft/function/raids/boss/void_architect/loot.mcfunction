# Void Architect — Loot Drop (called as each participant, at their position)
# Drops: 5% Voidpiercer (Hunter crossbow), 100% Rift Lens,
#         100% Architect's Blueprint, 100% Void Fragment (+1 DR)

# ── 5% Class Artifact: Voidpiercer ──
execute store result score @s ec.temp run random value 1..100
execute if score @s ec.temp matches 1..5 run function evercraft:raids/boss/void_architect/loot_artifact

# ── 100% Guaranteed Drops ──

# Rift Lens (unique accessory — see entity health bars)
give @s minecraft:ender_eye[minecraft:custom_name={text:"Rift Lens",color:"dark_purple",italic:false},minecraft:lore=[{text:"Unique Raid Artifact",color:"gold",italic:false},{text:""},{text:"Peer through dimensional cracks",color:"gray",italic:false},{text:"to see enemy health bars.",color:"gray",italic:false}],minecraft:rarity=epic,minecraft:custom_data={raid_artifact:1,artifact_id:"rift_lens"}] 1

# Architect's Blueprint (unique tool — place temporary walls)
give @s minecraft:paper[minecraft:custom_name={text:"Architect's Blueprint",color:"dark_purple",italic:false},minecraft:lore=[{text:"Unique Raid Artifact",color:"gold",italic:false},{text:""},{text:"Place a temporary barrier wall",color:"gray",italic:false},{text:"of 3 blocks for 10 seconds.",color:"gray",italic:false},{text:"30 second cooldown.",color:"dark_gray",italic:false}],minecraft:rarity=epic,minecraft:custom_data={raid_artifact:1,artifact_id:"architects_blueprint"}] 1

# Void Fragment (+1 DR permanently)
give @s minecraft:chorus_fruit[minecraft:custom_name={text:"Void Fragment",color:"light_purple",italic:false},minecraft:lore=[{text:"DR Consumable",color:"gold",italic:false},{text:""},{text:"Consume to permanently",color:"gray",italic:false},{text:"increase Dream Rate by 1.",color:"gray",italic:false}],minecraft:rarity=rare,minecraft:consumable={consume_seconds:0},minecraft:custom_data={dr_consumable:1,dr_amount:1,boss_dr_void:1b}] 1

# Feedback
playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1.0 1.0
particle minecraft:happy_villager ~ ~1 ~ 0.5 0.5 0.5 0.1 10
