# Grand Illusionist — Loot Drop (called as each participant, at their position)
# Drops: 5% Thornmaw (Beastlord), 100% Tome of Deception,
#         100% Illusionist's Monocle, 100% Bottled Nightmare (+1 DR)

# ── 5% Class Artifact: Thornmaw ──
execute store result score @s ec.temp run random value 1..100
execute if score @s ec.temp matches 1..5 run function evercraft:raids/boss/grand_illusionist/loot_artifact

# ── 100% Guaranteed Drops ──

# Tome of Deception (unique book — create 1 illusion of yourself)
give @s minecraft:book[minecraft:custom_name={text:"Tome of Deception",color:"red",italic:false},minecraft:lore=[{text:"Unique Raid Artifact",color:"gold",italic:false},{text:""},{text:"Create an illusion of yourself",color:"gray",italic:false},{text:"for 30 seconds. 60s cooldown.",color:"gray",italic:false}],minecraft:rarity=epic,minecraft:custom_data={raid_artifact:1,artifact_id:"tome_of_deception"}] 1

# Illusionist's Monocle (unique accessory — highlight invisible entities)
give @s minecraft:spyglass[minecraft:custom_name={text:"Illusionist's Monocle",color:"red",italic:false},minecraft:lore=[{text:"Unique Raid Artifact",color:"gold",italic:false},{text:""},{text:"See through all illusions.",color:"gray",italic:false},{text:"Invisible entities are revealed.",color:"gray",italic:false}],minecraft:rarity=epic,minecraft:custom_data={raid_artifact:1,artifact_id:"illusionists_monocle"}] 1

# Bottled Nightmare (+1 DR permanently)
give @s minecraft:dragon_breath[minecraft:custom_name={text:"Bottled Nightmare",color:"dark_purple",italic:false},minecraft:lore=[{text:"DR Consumable",color:"gold",italic:false},{text:""},{text:"Consume to permanently",color:"gray",italic:false},{text:"increase Dream Rate by 1.",color:"gray",italic:false}],minecraft:rarity=rare,minecraft:consumable={consume_seconds:0},minecraft:custom_data={dr_consumable:1,dr_amount:1,boss_dr_illusionist:1b}] 1

# Feedback
playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1.0 1.0
particle minecraft:happy_villager ~ ~1 ~ 0.5 0.5 0.5 0.1 10
