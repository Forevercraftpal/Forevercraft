# Gilded Tyrant — Loot Drop (called as each participant, at their position)
# Drops: 5% Firebrand (Berserker axe), 100% Tyrant's Crown,
#         100% Golden Mandate, 100% Molten Gold Core (+1 DR)

# ── 5% Class Artifact: Firebrand ──
execute store result score @s ec.temp run random value 1..100
execute if score @s ec.temp matches 1..5 run function evercraft:raids/boss/gilded_tyrant/loot_artifact

# ── 100% Guaranteed Drops ──

# Tyrant's Crown (unique helmet — aggro all mobs within 8 blocks)
give @s minecraft:golden_helmet[minecraft:custom_name={text:"Tyrant's Crown",color:"gold",italic:false},minecraft:lore=[{text:"Unique Raid Artifact",color:"gold",italic:false},{text:""},{text:"All nearby mobs focus their",color:"gray",italic:false},{text:"aggression on the wearer.",color:"gray",italic:false},{text:"8 block taunt radius.",color:"dark_gray",italic:false}],minecraft:rarity=epic,minecraft:custom_data={raid_artifact:1,artifact_id:"tyrants_crown"}] 1

# Golden Mandate (unique trinket — gain gold nuggets from combat kills)
give @s minecraft:gold_ingot[minecraft:custom_name={text:"Golden Mandate",color:"gold",italic:false},minecraft:lore=[{text:"Unique Raid Artifact",color:"gold",italic:false},{text:""},{text:"Enemies slain in combat drop",color:"gray",italic:false},{text:"gold nuggets for the bearer.",color:"gray",italic:false}],minecraft:rarity=epic,minecraft:custom_data={raid_artifact:1,artifact_id:"golden_mandate"}] 1

# Molten Gold Core (+1 DR permanently)
give @s minecraft:fire_charge[minecraft:custom_name={text:"Molten Gold Core",color:"yellow",italic:false},minecraft:lore=[{text:"DR Consumable",color:"gold",italic:false},{text:""},{text:"Consume to permanently",color:"gray",italic:false},{text:"increase Dream Rate by 1.",color:"gray",italic:false}],minecraft:rarity=rare,minecraft:consumable={consume_seconds:0},minecraft:custom_data={dr_consumable:1,dr_amount:1,boss_dr_gilded:1b}] 1

# Feedback
playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1.0 1.0
particle minecraft:happy_villager ~ ~1 ~ 0.5 0.5 0.5 0.1 10
